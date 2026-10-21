# Generic HLS-IP -> bitstream flow for Zynq-7000 (Pynq-Z1/Z2 by default)
#
# Usage:
#   vivado -mode batch -source build.tcl -tclargs <ip_name> <ip_repo_path> [part] [jobs]
#
# Example:
#   vivado -mode batch -source build.tcl -tclargs cordiccart2pol ./cordiccart2pol.comp/hls/impl/ip
#   vivado -mode batch -source build.tcl -tclargs mul ./mul.comp/hls/impl/ip xc7z020clg400-1 8
#
# <ip_name> is the HLS top-function / IP name as it appears in the IP Catalog.

if {$argc < 2} {
    puts "Usage: vivado -mode batch -source build.tcl -tclargs <ip_name> <ip_repo_path> \[part\] \[jobs\]"
    exit 1
}

set ip_name  [lindex $argv 0]
set ip_repo  [file normalize [lindex $argv 1]]
set part     [expr {$argc > 2 ? [lindex $argv 2] : "xc7z020clg400-1"}]
set jobs     [expr {$argc > 3 ? [lindex $argv 3] : 8}]

set proj_name ${ip_name}_proj
set proj_dir  [file normalize ./vivado_${ip_name}]
set out_dir   [file normalize ./output_${ip_name}]
set bd_name   design_1
set ip_cell   ${ip_name}_0

# Create RTL project (no sources)
create_project $proj_name $proj_dir -part $part -force

# Add the HLS IP repository and refresh the catalog
set_property ip_repo_paths $ip_repo [current_project]
update_ip_catalog -rebuild

# Look up IP definitions instead of hard-coding versions
set ipdefs [get_ipdefs -all -filter "NAME == $ip_name"]
if {[llength $ipdefs] == 0} {
    puts "ERROR: IP '$ip_name' not found in $ip_repo"
    puts "Available IPs in repo:"
    foreach d [get_ipdefs -all -filter "REPOSITORY != {}"] { puts "  [get_property NAME $d]" }
    exit 1
}
set ip_vlnv  [get_property VLNV [lindex $ipdefs 0]]
set ps7_vlnv [get_property VLNV [lindex [get_ipdefs -all -filter {NAME == processing_system7}] 0]]
puts "Using HLS IP: $ip_vlnv"
puts "Using PS7:    $ps7_vlnv"

# Block design with the HLS IP and the Zynq PS
create_bd_design $bd_name
create_bd_cell -type ip -vlnv $ip_vlnv $ip_cell
create_bd_cell -type ip -vlnv $ps7_vlnv ps7_0

# Block automation
apply_bd_automation -rule xilinx.com:bd_rule:processing_system7 \
    -config {make_external "FIXED_IO, DDR" apply_board_preset "0"} \
    [get_bd_cells ps7_0]

# Connection automation: connect every AXI4-Lite/AXI-MM slave port on the IP
# to the PS, whatever it is called (s_axi_control, s_axi_CTRL, ...).
set connected 0
foreach pin [get_bd_intf_pins -of_objects [get_bd_cells $ip_cell]] {
    set vlnv [get_property VLNV $pin]
    set mode [get_property MODE $pin]
    if {[string match "*aximm*" $vlnv] && $mode eq "Slave"} {
        puts "Connecting $pin to PS7 M_AXI_GP0"
        apply_bd_automation -rule xilinx.com:bd_rule:axi4 \
            -config {Master "/ps7_0/M_AXI_GP0" Clk_master Auto Clk_slave Auto Clk_xbar Auto Master_Reset Auto Slave_Reset Auto} \
            $pin
        incr connected
    } else {
        puts "WARNING: $pin ($vlnv, $mode) not auto-connected. AXI-Stream ports usually need an AXI DMA; plain ports need manual wiring."
    }
}
if {$connected == 0} {
    puts "ERROR: no AXI-MM slave port found on $ip_cell, so the PS cannot reach it."
    puts "       Add '#pragma HLS INTERFACE s_axilite port=...' (and port=return) in the HLS source,"
    puts "       re-export the IP, then rerun. Interfaces found on the IP:"
    foreach pin [get_bd_intf_pins -of_objects [get_bd_cells $ip_cell]] {
        puts "         $pin  ([get_property VLNV $pin])"
    }
    exit 1
}

assign_bd_address
validate_bd_design
save_bd_design

# HDL wrapper and bitstream
make_wrapper -files [get_files $bd_name.bd] -top -import
set_property top ${bd_name}_wrapper [current_fileset]
update_compile_order -fileset sources_1

launch_runs impl_1 -to_step write_bitstream -jobs $jobs
wait_on_run impl_1
if {[get_property PROGRESS [get_runs impl_1]] != "100%"} {
    error "Implementation / bitstream generation failed"
}

# Collect .bit and .hwh (same base name, as Pynq expects)
file mkdir $out_dir
file copy -force [glob $proj_dir/$proj_name.runs/impl_1/${bd_name}_wrapper.bit] $out_dir/${ip_name}.bit
set hwh [glob -nocomplain \
    $proj_dir/$proj_name.gen/sources_1/bd/$bd_name/hw_handoff/$bd_name.hwh \
    $proj_dir/$proj_name.srcs/sources_1/bd/$bd_name/hw_handoff/$bd_name.hwh]
file copy -force [lindex $hwh 0] $out_dir/${ip_name}.hwh

# Print base address(es) of the IP (Address Editor equivalent)
foreach seg [get_bd_addr_segs -of_objects [get_bd_addr_spaces ps7_0/Data]] {
    puts "[get_property NAME $seg]  offset=[get_property OFFSET $seg]  range=[get_property RANGE $seg]"
}

puts "Done. Outputs in $out_dir"
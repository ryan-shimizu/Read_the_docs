open_component bnn.comp -reset
add_files [list bnn.cpp bnn.h]
add_files -tb [list bnn_test.cpp]
set_top bnn
puts "Running: set_top bnn"
set_part xc7z020clg400-1
puts "Running: set_part xc7z020clg400-1"
create_clock -period 10

source directives.tcl
csynth_design

exit
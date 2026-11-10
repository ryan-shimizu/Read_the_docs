open_component fft.comp -reset
add_files [list fft.cpp fft.h]
add_files -tb [list fft_test.cpp out.gold.dat]
set_top fft
puts "Running: set_top fft"
set_part xc7z020clg400-1
puts "Running: set_part xc7z020clg400-1"
create_clock -period 10

source directives.tcl
csynth_design

exit
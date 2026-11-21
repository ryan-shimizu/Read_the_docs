open_component fft.comp -reset
add_files [list fft.cpp fft.h fft_common.h fft_stage_first.h fft_stage_first.cpp fft_stage_last.h fft_stage_last.cpp fft_stages.h fft_stages.cpp bit_reverse.cpp bit_reverse.h]
add_files -tb [list fft_test.cpp out.gold.dat]
set_top fft
puts "Running: set_top fft"
set_part xc7z020clg400-1
puts "Running: set_part xc7z020clg400-1"
create_clock -period 10

source directives.tcl
csynth_design

exit
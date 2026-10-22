#!/bin/bash
# better way to do this is to create a new Make rule for this but fuck it im tired
g++ -I/software/common/Xilinx_Vitis/Vitis/2024.2/include gen_luts.cpp -o gen_luts && ./gen_luts
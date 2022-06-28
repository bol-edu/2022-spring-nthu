############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
############################################################
open_project LABA1
set_top matrixmul
add_files matrixmul.cpp
add_files matrixmul.h
add_files -tb matrixmul_test.cpp
open_solution "solution2" -flow_target vivado
set_part {xc7z020clg400-1}
create_clock -period 10 -name default
source "./LABA1/solution2/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog

############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
############################################################
open_project LABA1
set_top matrixmul
add_files matrixmul.h
add_files matrixmul.cpp
add_files -tb matrixmul_test.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution6" -flow_target vivado
set_part {xc7z020-clg400-1}
create_clock -period 10 -name default
source "./LABA1/solution6/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog

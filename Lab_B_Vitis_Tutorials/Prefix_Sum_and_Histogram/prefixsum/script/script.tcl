############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
############################################################
open_project prefix_sum_2
set_top prefixsum
add_files ../code/prefixsumHW.cpp
add_files -tb ../code/prefixsumHW-top.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1" -flow_target vivado
set_part {xc7z020-clg400-1}
create_clock -period 6 -name default
config_export -format ip_catalog -rtl verilog -version 2.0.1
source "./prefix_sum_2/solution1/directives.tcl"
csim_design
csynth_design
cosim_design -trace_level all
export_design -rtl verilog -format ip_catalog

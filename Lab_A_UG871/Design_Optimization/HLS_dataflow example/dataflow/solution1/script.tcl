############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
############################################################
open_project dataflow
set_top adder
add_files aaa.cpp
add_files -tb aaa_test.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1" -flow_target vivado
set_part {xczu7ev-ffvc1156-2-e}
create_clock -period 10 -name default
source "./dataflow/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog

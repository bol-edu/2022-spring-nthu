############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
############################################################
open_project stream8x2
set_top stream8x2
add_files src/stream8x2.cpp
open_solution "stream8x2" -flow_target vivado
set_part {xc7z020clg400-1}
create_clock -period 10 -name default
config_export -version 2.0.1
#source "./stream8x2/stream8x2/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -rtl verilog -format ip_catalog

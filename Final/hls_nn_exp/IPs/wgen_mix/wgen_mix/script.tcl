############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
############################################################
open_project wgen_mix
set_top wgen_mix
add_files src/wgen_mix.cpp
open_solution "wgen_mix" -flow_target vivado
set_part {xc7z020clg400-1}
create_clock -period 10 -name default
config_export -version 2.0.1
#source "./wgen_mix/wgen_mix/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -rtl verilog -format ip_catalog

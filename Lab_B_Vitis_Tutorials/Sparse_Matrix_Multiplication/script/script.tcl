############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
############################################################
open_project LabB
set_top spmv
add_files ../../../../Desktop/LabB/spmv.cpp
add_files ../../../../Desktop/LabB/spmv.h
add_files -tb ../../../../Desktop/LabB/spmv-top.cpp
open_solution "solution1" -flow_target vivado
set_part {xc7z020clg400-1}
create_clock -period 5 -name default
source "./LabB/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog

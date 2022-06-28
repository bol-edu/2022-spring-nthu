############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
############################################################
open_project array_io_prj
set_top array_io
add_files array_io.c
add_files -tb result.golden.dat -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb array_io_test.c -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution2" -flow_target vivado
set_part {xcvu9p-flgb2104-1-e}
create_clock -period 10 -name default
source "./array_io_prj/solution2/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog

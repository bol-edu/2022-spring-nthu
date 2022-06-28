############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
############################################################
open_project MIMO
set_top TOP
add_files src/AWGN.cpp
add_files src/DeModulation.cpp
add_files src/KBEST.cpp
add_files src/MIMO.cpp
add_files src/MIMO.h
add_files src/Modulation.cpp
add_files src/QRD.cpp
add_files src/Rayleigh.cpp
add_files src/aes.cpp
add_files src/ap_int.h
add_files src/dc.h
add_files src/normal_rng.cpp
add_files src/normal_rng.hpp
add_files src/rng.hpp
add_files src/utils.hpp
add_files -tb src/TESTBENCH.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1" -flow_target vivado
set_part {xczu9eg-ffvb1156-2-e}
create_clock -period 40 -name default
source "./MIMO/solution1/directives.tcl"
csim_design
csynth_design
cosim_design -trace_level all
export_design -format ip_catalog

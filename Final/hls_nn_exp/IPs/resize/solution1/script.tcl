############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
############################################################
open_project resize
set_top resize_accel
add_files include/need/org_xf_resize_accel_stream.cpp
add_files include/need/xf_axi_io.hpp
add_files include/need/xf_common.hpp
add_files include/need/xf_infra.hpp
add_files include/need/xf_math.h
add_files include/need/xf_params.hpp
add_files include/need/xf_resize.hpp
add_files include/need/xf_resize_down_area.hpp
add_files include/need/xf_resize_headers.h
add_files include/need/xf_resize_nn_bilinear.hpp
add_files include/need/xf_resize_up_area.hpp
add_files include/need/xf_structs.hpp
add_files include/need/xf_types.hpp
add_files include/need/xf_utility.hpp
add_files include/need/xf_video_mem.hpp
open_solution "solution1" -flow_target vivado
set_part {xc7z020clg400-1}
create_clock -period 10 -name default
config_export -version 2.0.1
#source "./resize/solution1/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -rtl verilog -format ip_catalog

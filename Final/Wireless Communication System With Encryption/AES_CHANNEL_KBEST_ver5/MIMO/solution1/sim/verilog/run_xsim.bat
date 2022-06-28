
set PATH=
call D:/Xilinx/Vivado/2021.2/bin/xelab xil_defaultlib.apatb_TOP_top glbl -Oenable_linking_all_libraries  -prj TOP.prj -L smartconnect_v1_0 -L axi_protocol_checker_v1_1_12 -L axi_protocol_checker_v1_1_13 -L axis_protocol_checker_v1_1_11 -L axis_protocol_checker_v1_1_12 -L xil_defaultlib -L unisims_ver -L xpm  -L floating_point_v7_0_19 -L floating_point_v7_1_13 --lib "ieee_proposed=./ieee_proposed" -s TOP -debug wave
call D:/Xilinx/Vivado/2021.2/bin/xsim --noieeewarnings TOP -tclbatch TOP.tcl -view TOP_dataflow_ana.wcfg -protoinst TOP.protoinst


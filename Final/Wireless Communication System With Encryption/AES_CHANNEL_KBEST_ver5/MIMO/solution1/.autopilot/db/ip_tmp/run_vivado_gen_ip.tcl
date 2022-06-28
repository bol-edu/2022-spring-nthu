create_project prj -part xczu9eg-ffvb1156-2-e -force
set_property target_language verilog [current_project]
set vivado_ver [version -short]
set COE_DIR "../../syn/verilog"
source "D:/NTHU/HLS/FINAL/ASE_CHANNEL_KBEST_ver5/MIMO/solution1/syn/verilog/TOP_dadd_64ns_64ns_64_2_no_dsp_1_ip.tcl"
source "D:/NTHU/HLS/FINAL/ASE_CHANNEL_KBEST_ver5/MIMO/solution1/syn/verilog/TOP_dcmp_64ns_64ns_1_1_no_dsp_1_ip.tcl"
source "D:/NTHU/HLS/FINAL/ASE_CHANNEL_KBEST_ver5/MIMO/solution1/syn/verilog/TOP_ddiv_64ns_64ns_64_7_no_dsp_1_ip.tcl"
source "D:/NTHU/HLS/FINAL/ASE_CHANNEL_KBEST_ver5/MIMO/solution1/syn/verilog/TOP_dlog_64ns_64ns_64_5_med_dsp_1_ip.tcl"
source "D:/NTHU/HLS/FINAL/ASE_CHANNEL_KBEST_ver5/MIMO/solution1/syn/verilog/TOP_dmul_64ns_64ns_64_2_med_dsp_1_ip.tcl"
source "D:/NTHU/HLS/FINAL/ASE_CHANNEL_KBEST_ver5/MIMO/solution1/syn/verilog/TOP_dsqrt_64ns_64ns_64_7_no_dsp_1_ip.tcl"
source "D:/NTHU/HLS/FINAL/ASE_CHANNEL_KBEST_ver5/MIMO/solution1/syn/verilog/TOP_dsub_64ns_64ns_64_2_no_dsp_1_ip.tcl"

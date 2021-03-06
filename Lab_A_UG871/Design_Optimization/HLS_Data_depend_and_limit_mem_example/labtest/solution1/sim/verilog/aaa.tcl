
log_wave -r /
set designtopgroup [add_wave_group "Design Top Signals"]
set cinoutgroup [add_wave_group "C InOuts" -into $designtopgroup]
set r_10_group [add_wave_group r_10(wire) -into $cinoutgroup]
add_wave /apatb_aaa_top/AESL_inst_aaa/r_10_o_ap_vld -into $r_10_group -color #ffff00 -radix hex
add_wave /apatb_aaa_top/AESL_inst_aaa/r_10_o -into $r_10_group -radix hex
add_wave /apatb_aaa_top/AESL_inst_aaa/r_10_i -into $r_10_group -radix hex
set r_9_group [add_wave_group r_9(wire) -into $cinoutgroup]
add_wave /apatb_aaa_top/AESL_inst_aaa/r_9_o_ap_vld -into $r_9_group -color #ffff00 -radix hex
add_wave /apatb_aaa_top/AESL_inst_aaa/r_9_o -into $r_9_group -radix hex
add_wave /apatb_aaa_top/AESL_inst_aaa/r_9_i -into $r_9_group -radix hex
set r_8_group [add_wave_group r_8(wire) -into $cinoutgroup]
add_wave /apatb_aaa_top/AESL_inst_aaa/r_8_o_ap_vld -into $r_8_group -color #ffff00 -radix hex
add_wave /apatb_aaa_top/AESL_inst_aaa/r_8_o -into $r_8_group -radix hex
add_wave /apatb_aaa_top/AESL_inst_aaa/r_8_i -into $r_8_group -radix hex
set r_7_group [add_wave_group r_7(wire) -into $cinoutgroup]
add_wave /apatb_aaa_top/AESL_inst_aaa/r_7_o_ap_vld -into $r_7_group -color #ffff00 -radix hex
add_wave /apatb_aaa_top/AESL_inst_aaa/r_7_o -into $r_7_group -radix hex
add_wave /apatb_aaa_top/AESL_inst_aaa/r_7_i -into $r_7_group -radix hex
set r_6_group [add_wave_group r_6(wire) -into $cinoutgroup]
add_wave /apatb_aaa_top/AESL_inst_aaa/r_6_o_ap_vld -into $r_6_group -color #ffff00 -radix hex
add_wave /apatb_aaa_top/AESL_inst_aaa/r_6_o -into $r_6_group -radix hex
add_wave /apatb_aaa_top/AESL_inst_aaa/r_6_i -into $r_6_group -radix hex
set r_5_group [add_wave_group r_5(wire) -into $cinoutgroup]
add_wave /apatb_aaa_top/AESL_inst_aaa/r_5_o_ap_vld -into $r_5_group -color #ffff00 -radix hex
add_wave /apatb_aaa_top/AESL_inst_aaa/r_5_o -into $r_5_group -radix hex
add_wave /apatb_aaa_top/AESL_inst_aaa/r_5_i -into $r_5_group -radix hex
set r_4_group [add_wave_group r_4(wire) -into $cinoutgroup]
add_wave /apatb_aaa_top/AESL_inst_aaa/r_4_o_ap_vld -into $r_4_group -color #ffff00 -radix hex
add_wave /apatb_aaa_top/AESL_inst_aaa/r_4_o -into $r_4_group -radix hex
add_wave /apatb_aaa_top/AESL_inst_aaa/r_4_i -into $r_4_group -radix hex
set r_3_group [add_wave_group r_3(wire) -into $cinoutgroup]
add_wave /apatb_aaa_top/AESL_inst_aaa/r_3_o_ap_vld -into $r_3_group -color #ffff00 -radix hex
add_wave /apatb_aaa_top/AESL_inst_aaa/r_3_o -into $r_3_group -radix hex
add_wave /apatb_aaa_top/AESL_inst_aaa/r_3_i -into $r_3_group -radix hex
set r_2_group [add_wave_group r_2(wire) -into $cinoutgroup]
add_wave /apatb_aaa_top/AESL_inst_aaa/r_2_o_ap_vld -into $r_2_group -color #ffff00 -radix hex
add_wave /apatb_aaa_top/AESL_inst_aaa/r_2_o -into $r_2_group -radix hex
add_wave /apatb_aaa_top/AESL_inst_aaa/r_2_i -into $r_2_group -radix hex
set r_1_group [add_wave_group r_1(wire) -into $cinoutgroup]
add_wave /apatb_aaa_top/AESL_inst_aaa/r_1_o_ap_vld -into $r_1_group -color #ffff00 -radix hex
add_wave /apatb_aaa_top/AESL_inst_aaa/r_1_o -into $r_1_group -radix hex
add_wave /apatb_aaa_top/AESL_inst_aaa/r_1_i -into $r_1_group -radix hex
set coutputgroup [add_wave_group "C Outputs" -into $designtopgroup]
set r_11_group [add_wave_group r_11(wire) -into $coutputgroup]
add_wave /apatb_aaa_top/AESL_inst_aaa/r_11_ap_vld -into $r_11_group -color #ffff00 -radix hex
add_wave /apatb_aaa_top/AESL_inst_aaa/r_11 -into $r_11_group -radix hex
set r_0_group [add_wave_group r_0(wire) -into $coutputgroup]
add_wave /apatb_aaa_top/AESL_inst_aaa/r_0_ap_vld -into $r_0_group -color #ffff00 -radix hex
add_wave /apatb_aaa_top/AESL_inst_aaa/r_0 -into $r_0_group -radix hex
set cinputgroup [add_wave_group "C Inputs" -into $designtopgroup]
set b_11_group [add_wave_group b_11(wire) -into $cinputgroup]
add_wave /apatb_aaa_top/AESL_inst_aaa/b_11 -into $b_11_group -radix hex
set b_10_group [add_wave_group b_10(wire) -into $cinputgroup]
add_wave /apatb_aaa_top/AESL_inst_aaa/b_10 -into $b_10_group -radix hex
set b_9_group [add_wave_group b_9(wire) -into $cinputgroup]
add_wave /apatb_aaa_top/AESL_inst_aaa/b_9 -into $b_9_group -radix hex
set b_8_group [add_wave_group b_8(wire) -into $cinputgroup]
add_wave /apatb_aaa_top/AESL_inst_aaa/b_8 -into $b_8_group -radix hex
set b_7_group [add_wave_group b_7(wire) -into $cinputgroup]
add_wave /apatb_aaa_top/AESL_inst_aaa/b_7 -into $b_7_group -radix hex
set b_6_group [add_wave_group b_6(wire) -into $cinputgroup]
add_wave /apatb_aaa_top/AESL_inst_aaa/b_6 -into $b_6_group -radix hex
set b_5_group [add_wave_group b_5(wire) -into $cinputgroup]
add_wave /apatb_aaa_top/AESL_inst_aaa/b_5 -into $b_5_group -radix hex
set b_4_group [add_wave_group b_4(wire) -into $cinputgroup]
add_wave /apatb_aaa_top/AESL_inst_aaa/b_4 -into $b_4_group -radix hex
set b_3_group [add_wave_group b_3(wire) -into $cinputgroup]
add_wave /apatb_aaa_top/AESL_inst_aaa/b_3 -into $b_3_group -radix hex
set b_2_group [add_wave_group b_2(wire) -into $cinputgroup]
add_wave /apatb_aaa_top/AESL_inst_aaa/b_2 -into $b_2_group -radix hex
set b_1_group [add_wave_group b_1(wire) -into $cinputgroup]
add_wave /apatb_aaa_top/AESL_inst_aaa/b_1 -into $b_1_group -radix hex
set b_0_group [add_wave_group b_0(wire) -into $cinputgroup]
add_wave /apatb_aaa_top/AESL_inst_aaa/b_0 -into $b_0_group -radix hex
set a_11_group [add_wave_group a_11(wire) -into $cinputgroup]
add_wave /apatb_aaa_top/AESL_inst_aaa/a_11 -into $a_11_group -radix hex
set a_10_group [add_wave_group a_10(wire) -into $cinputgroup]
add_wave /apatb_aaa_top/AESL_inst_aaa/a_10 -into $a_10_group -radix hex
set a_9_group [add_wave_group a_9(wire) -into $cinputgroup]
add_wave /apatb_aaa_top/AESL_inst_aaa/a_9 -into $a_9_group -radix hex
set a_8_group [add_wave_group a_8(wire) -into $cinputgroup]
add_wave /apatb_aaa_top/AESL_inst_aaa/a_8 -into $a_8_group -radix hex
set a_7_group [add_wave_group a_7(wire) -into $cinputgroup]
add_wave /apatb_aaa_top/AESL_inst_aaa/a_7 -into $a_7_group -radix hex
set a_6_group [add_wave_group a_6(wire) -into $cinputgroup]
add_wave /apatb_aaa_top/AESL_inst_aaa/a_6 -into $a_6_group -radix hex
set a_5_group [add_wave_group a_5(wire) -into $cinputgroup]
add_wave /apatb_aaa_top/AESL_inst_aaa/a_5 -into $a_5_group -radix hex
set a_4_group [add_wave_group a_4(wire) -into $cinputgroup]
add_wave /apatb_aaa_top/AESL_inst_aaa/a_4 -into $a_4_group -radix hex
set a_3_group [add_wave_group a_3(wire) -into $cinputgroup]
add_wave /apatb_aaa_top/AESL_inst_aaa/a_3 -into $a_3_group -radix hex
set a_2_group [add_wave_group a_2(wire) -into $cinputgroup]
add_wave /apatb_aaa_top/AESL_inst_aaa/a_2 -into $a_2_group -radix hex
set a_1_group [add_wave_group a_1(wire) -into $cinputgroup]
add_wave /apatb_aaa_top/AESL_inst_aaa/a_1 -into $a_1_group -radix hex
set a_0_group [add_wave_group a_0(wire) -into $cinputgroup]
add_wave /apatb_aaa_top/AESL_inst_aaa/a_0 -into $a_0_group -radix hex
set blocksiggroup [add_wave_group "Block-level IO Handshake" -into $designtopgroup]
add_wave /apatb_aaa_top/AESL_inst_aaa/ap_start -into $blocksiggroup
add_wave /apatb_aaa_top/AESL_inst_aaa/ap_done -into $blocksiggroup
add_wave /apatb_aaa_top/AESL_inst_aaa/ap_idle -into $blocksiggroup
add_wave /apatb_aaa_top/AESL_inst_aaa/ap_ready -into $blocksiggroup
set resetgroup [add_wave_group "Reset" -into $designtopgroup]
add_wave /apatb_aaa_top/AESL_inst_aaa/ap_rst -into $resetgroup
set clockgroup [add_wave_group "Clock" -into $designtopgroup]
add_wave /apatb_aaa_top/AESL_inst_aaa/ap_clk -into $clockgroup
set testbenchgroup [add_wave_group "Test Bench Signals"]
set tbinternalsiggroup [add_wave_group "Internal Signals" -into $testbenchgroup]
set tb_simstatus_group [add_wave_group "Simulation Status" -into $tbinternalsiggroup]
set tb_portdepth_group [add_wave_group "Port Depth" -into $tbinternalsiggroup]
add_wave /apatb_aaa_top/AUTOTB_TRANSACTION_NUM -into $tb_simstatus_group -radix hex
add_wave /apatb_aaa_top/ready_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_aaa_top/done_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_aaa_top/LENGTH_a_0 -into $tb_portdepth_group -radix hex
add_wave /apatb_aaa_top/LENGTH_a_1 -into $tb_portdepth_group -radix hex
add_wave /apatb_aaa_top/LENGTH_a_2 -into $tb_portdepth_group -radix hex
add_wave /apatb_aaa_top/LENGTH_a_3 -into $tb_portdepth_group -radix hex
add_wave /apatb_aaa_top/LENGTH_a_4 -into $tb_portdepth_group -radix hex
add_wave /apatb_aaa_top/LENGTH_a_5 -into $tb_portdepth_group -radix hex
add_wave /apatb_aaa_top/LENGTH_a_6 -into $tb_portdepth_group -radix hex
add_wave /apatb_aaa_top/LENGTH_a_7 -into $tb_portdepth_group -radix hex
add_wave /apatb_aaa_top/LENGTH_a_8 -into $tb_portdepth_group -radix hex
add_wave /apatb_aaa_top/LENGTH_a_9 -into $tb_portdepth_group -radix hex
add_wave /apatb_aaa_top/LENGTH_a_10 -into $tb_portdepth_group -radix hex
add_wave /apatb_aaa_top/LENGTH_a_11 -into $tb_portdepth_group -radix hex
add_wave /apatb_aaa_top/LENGTH_b_0 -into $tb_portdepth_group -radix hex
add_wave /apatb_aaa_top/LENGTH_b_1 -into $tb_portdepth_group -radix hex
add_wave /apatb_aaa_top/LENGTH_b_2 -into $tb_portdepth_group -radix hex
add_wave /apatb_aaa_top/LENGTH_b_3 -into $tb_portdepth_group -radix hex
add_wave /apatb_aaa_top/LENGTH_b_4 -into $tb_portdepth_group -radix hex
add_wave /apatb_aaa_top/LENGTH_b_5 -into $tb_portdepth_group -radix hex
add_wave /apatb_aaa_top/LENGTH_b_6 -into $tb_portdepth_group -radix hex
add_wave /apatb_aaa_top/LENGTH_b_7 -into $tb_portdepth_group -radix hex
add_wave /apatb_aaa_top/LENGTH_b_8 -into $tb_portdepth_group -radix hex
add_wave /apatb_aaa_top/LENGTH_b_9 -into $tb_portdepth_group -radix hex
add_wave /apatb_aaa_top/LENGTH_b_10 -into $tb_portdepth_group -radix hex
add_wave /apatb_aaa_top/LENGTH_b_11 -into $tb_portdepth_group -radix hex
add_wave /apatb_aaa_top/LENGTH_r_0 -into $tb_portdepth_group -radix hex
add_wave /apatb_aaa_top/LENGTH_r_1 -into $tb_portdepth_group -radix hex
add_wave /apatb_aaa_top/LENGTH_r_2 -into $tb_portdepth_group -radix hex
add_wave /apatb_aaa_top/LENGTH_r_3 -into $tb_portdepth_group -radix hex
add_wave /apatb_aaa_top/LENGTH_r_4 -into $tb_portdepth_group -radix hex
add_wave /apatb_aaa_top/LENGTH_r_5 -into $tb_portdepth_group -radix hex
add_wave /apatb_aaa_top/LENGTH_r_6 -into $tb_portdepth_group -radix hex
add_wave /apatb_aaa_top/LENGTH_r_7 -into $tb_portdepth_group -radix hex
add_wave /apatb_aaa_top/LENGTH_r_8 -into $tb_portdepth_group -radix hex
add_wave /apatb_aaa_top/LENGTH_r_9 -into $tb_portdepth_group -radix hex
add_wave /apatb_aaa_top/LENGTH_r_10 -into $tb_portdepth_group -radix hex
add_wave /apatb_aaa_top/LENGTH_r_11 -into $tb_portdepth_group -radix hex
set tbcinoutgroup [add_wave_group "C InOuts" -into $testbenchgroup]
set tb_r_10_group [add_wave_group r_10(wire) -into $tbcinoutgroup]
add_wave /apatb_aaa_top/r_10_o_ap_vld -into $tb_r_10_group -color #ffff00 -radix hex
add_wave /apatb_aaa_top/r_10_o -into $tb_r_10_group -radix hex
add_wave /apatb_aaa_top/r_10_i -into $tb_r_10_group -radix hex
set tb_r_9_group [add_wave_group r_9(wire) -into $tbcinoutgroup]
add_wave /apatb_aaa_top/r_9_o_ap_vld -into $tb_r_9_group -color #ffff00 -radix hex
add_wave /apatb_aaa_top/r_9_o -into $tb_r_9_group -radix hex
add_wave /apatb_aaa_top/r_9_i -into $tb_r_9_group -radix hex
set tb_r_8_group [add_wave_group r_8(wire) -into $tbcinoutgroup]
add_wave /apatb_aaa_top/r_8_o_ap_vld -into $tb_r_8_group -color #ffff00 -radix hex
add_wave /apatb_aaa_top/r_8_o -into $tb_r_8_group -radix hex
add_wave /apatb_aaa_top/r_8_i -into $tb_r_8_group -radix hex
set tb_r_7_group [add_wave_group r_7(wire) -into $tbcinoutgroup]
add_wave /apatb_aaa_top/r_7_o_ap_vld -into $tb_r_7_group -color #ffff00 -radix hex
add_wave /apatb_aaa_top/r_7_o -into $tb_r_7_group -radix hex
add_wave /apatb_aaa_top/r_7_i -into $tb_r_7_group -radix hex
set tb_r_6_group [add_wave_group r_6(wire) -into $tbcinoutgroup]
add_wave /apatb_aaa_top/r_6_o_ap_vld -into $tb_r_6_group -color #ffff00 -radix hex
add_wave /apatb_aaa_top/r_6_o -into $tb_r_6_group -radix hex
add_wave /apatb_aaa_top/r_6_i -into $tb_r_6_group -radix hex
set tb_r_5_group [add_wave_group r_5(wire) -into $tbcinoutgroup]
add_wave /apatb_aaa_top/r_5_o_ap_vld -into $tb_r_5_group -color #ffff00 -radix hex
add_wave /apatb_aaa_top/r_5_o -into $tb_r_5_group -radix hex
add_wave /apatb_aaa_top/r_5_i -into $tb_r_5_group -radix hex
set tb_r_4_group [add_wave_group r_4(wire) -into $tbcinoutgroup]
add_wave /apatb_aaa_top/r_4_o_ap_vld -into $tb_r_4_group -color #ffff00 -radix hex
add_wave /apatb_aaa_top/r_4_o -into $tb_r_4_group -radix hex
add_wave /apatb_aaa_top/r_4_i -into $tb_r_4_group -radix hex
set tb_r_3_group [add_wave_group r_3(wire) -into $tbcinoutgroup]
add_wave /apatb_aaa_top/r_3_o_ap_vld -into $tb_r_3_group -color #ffff00 -radix hex
add_wave /apatb_aaa_top/r_3_o -into $tb_r_3_group -radix hex
add_wave /apatb_aaa_top/r_3_i -into $tb_r_3_group -radix hex
set tb_r_2_group [add_wave_group r_2(wire) -into $tbcinoutgroup]
add_wave /apatb_aaa_top/r_2_o_ap_vld -into $tb_r_2_group -color #ffff00 -radix hex
add_wave /apatb_aaa_top/r_2_o -into $tb_r_2_group -radix hex
add_wave /apatb_aaa_top/r_2_i -into $tb_r_2_group -radix hex
set tb_r_1_group [add_wave_group r_1(wire) -into $tbcinoutgroup]
add_wave /apatb_aaa_top/r_1_o_ap_vld -into $tb_r_1_group -color #ffff00 -radix hex
add_wave /apatb_aaa_top/r_1_o -into $tb_r_1_group -radix hex
add_wave /apatb_aaa_top/r_1_i -into $tb_r_1_group -radix hex
set tbcoutputgroup [add_wave_group "C Outputs" -into $testbenchgroup]
set tb_r_11_group [add_wave_group r_11(wire) -into $tbcoutputgroup]
add_wave /apatb_aaa_top/r_11_ap_vld -into $tb_r_11_group -color #ffff00 -radix hex
add_wave /apatb_aaa_top/r_11 -into $tb_r_11_group -radix hex
set tb_r_0_group [add_wave_group r_0(wire) -into $tbcoutputgroup]
add_wave /apatb_aaa_top/r_0_ap_vld -into $tb_r_0_group -color #ffff00 -radix hex
add_wave /apatb_aaa_top/r_0 -into $tb_r_0_group -radix hex
set tbcinputgroup [add_wave_group "C Inputs" -into $testbenchgroup]
set tb_b_11_group [add_wave_group b_11(wire) -into $tbcinputgroup]
add_wave /apatb_aaa_top/b_11 -into $tb_b_11_group -radix hex
set tb_b_10_group [add_wave_group b_10(wire) -into $tbcinputgroup]
add_wave /apatb_aaa_top/b_10 -into $tb_b_10_group -radix hex
set tb_b_9_group [add_wave_group b_9(wire) -into $tbcinputgroup]
add_wave /apatb_aaa_top/b_9 -into $tb_b_9_group -radix hex
set tb_b_8_group [add_wave_group b_8(wire) -into $tbcinputgroup]
add_wave /apatb_aaa_top/b_8 -into $tb_b_8_group -radix hex
set tb_b_7_group [add_wave_group b_7(wire) -into $tbcinputgroup]
add_wave /apatb_aaa_top/b_7 -into $tb_b_7_group -radix hex
set tb_b_6_group [add_wave_group b_6(wire) -into $tbcinputgroup]
add_wave /apatb_aaa_top/b_6 -into $tb_b_6_group -radix hex
set tb_b_5_group [add_wave_group b_5(wire) -into $tbcinputgroup]
add_wave /apatb_aaa_top/b_5 -into $tb_b_5_group -radix hex
set tb_b_4_group [add_wave_group b_4(wire) -into $tbcinputgroup]
add_wave /apatb_aaa_top/b_4 -into $tb_b_4_group -radix hex
set tb_b_3_group [add_wave_group b_3(wire) -into $tbcinputgroup]
add_wave /apatb_aaa_top/b_3 -into $tb_b_3_group -radix hex
set tb_b_2_group [add_wave_group b_2(wire) -into $tbcinputgroup]
add_wave /apatb_aaa_top/b_2 -into $tb_b_2_group -radix hex
set tb_b_1_group [add_wave_group b_1(wire) -into $tbcinputgroup]
add_wave /apatb_aaa_top/b_1 -into $tb_b_1_group -radix hex
set tb_b_0_group [add_wave_group b_0(wire) -into $tbcinputgroup]
add_wave /apatb_aaa_top/b_0 -into $tb_b_0_group -radix hex
set tb_a_11_group [add_wave_group a_11(wire) -into $tbcinputgroup]
add_wave /apatb_aaa_top/a_11 -into $tb_a_11_group -radix hex
set tb_a_10_group [add_wave_group a_10(wire) -into $tbcinputgroup]
add_wave /apatb_aaa_top/a_10 -into $tb_a_10_group -radix hex
set tb_a_9_group [add_wave_group a_9(wire) -into $tbcinputgroup]
add_wave /apatb_aaa_top/a_9 -into $tb_a_9_group -radix hex
set tb_a_8_group [add_wave_group a_8(wire) -into $tbcinputgroup]
add_wave /apatb_aaa_top/a_8 -into $tb_a_8_group -radix hex
set tb_a_7_group [add_wave_group a_7(wire) -into $tbcinputgroup]
add_wave /apatb_aaa_top/a_7 -into $tb_a_7_group -radix hex
set tb_a_6_group [add_wave_group a_6(wire) -into $tbcinputgroup]
add_wave /apatb_aaa_top/a_6 -into $tb_a_6_group -radix hex
set tb_a_5_group [add_wave_group a_5(wire) -into $tbcinputgroup]
add_wave /apatb_aaa_top/a_5 -into $tb_a_5_group -radix hex
set tb_a_4_group [add_wave_group a_4(wire) -into $tbcinputgroup]
add_wave /apatb_aaa_top/a_4 -into $tb_a_4_group -radix hex
set tb_a_3_group [add_wave_group a_3(wire) -into $tbcinputgroup]
add_wave /apatb_aaa_top/a_3 -into $tb_a_3_group -radix hex
set tb_a_2_group [add_wave_group a_2(wire) -into $tbcinputgroup]
add_wave /apatb_aaa_top/a_2 -into $tb_a_2_group -radix hex
set tb_a_1_group [add_wave_group a_1(wire) -into $tbcinputgroup]
add_wave /apatb_aaa_top/a_1 -into $tb_a_1_group -radix hex
set tb_a_0_group [add_wave_group a_0(wire) -into $tbcinputgroup]
add_wave /apatb_aaa_top/a_0 -into $tb_a_0_group -radix hex
save_wave_config aaa.wcfg
run all
quit


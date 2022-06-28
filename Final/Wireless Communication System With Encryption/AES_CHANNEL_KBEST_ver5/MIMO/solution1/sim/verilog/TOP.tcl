
log_wave -r /
set designtopgroup [add_wave_group "Design Top Signals"]
set coutputgroup [add_wave_group "C Outputs" -into $designtopgroup]
set return_group [add_wave_group return(axi_slave) -into $coutputgroup]
add_wave /apatb_TOP_top/AESL_inst_TOP/out_data_write -into $return_group -color #ffff00 -radix hex
add_wave /apatb_TOP_top/AESL_inst_TOP/out_data_full_n -into $return_group -color #ffff00 -radix hex
add_wave /apatb_TOP_top/AESL_inst_TOP/out_data_din -into $return_group -radix hex
add_wave /apatb_TOP_top/AESL_inst_TOP/ap_local_deadlock -into $return_group -radix hex
add_wave /apatb_TOP_top/AESL_inst_TOP/ap_local_block -into $return_group -radix hex
set cinputgroup [add_wave_group "C Inputs" -into $designtopgroup]
set return_group [add_wave_group return(fifo) -into $cinputgroup]
add_wave /apatb_TOP_top/AESL_inst_TOP/SNR -into $return_group -radix hex
add_wave /apatb_TOP_top/AESL_inst_TOP/in_data_read -into $return_group -color #ffff00 -radix hex
add_wave /apatb_TOP_top/AESL_inst_TOP/in_data_empty_n -into $return_group -color #ffff00 -radix hex
add_wave /apatb_TOP_top/AESL_inst_TOP/in_data_dout -into $return_group -radix hex
set blocksiggroup [add_wave_group "Block-level IO Handshake" -into $designtopgroup]
add_wave /apatb_TOP_top/AESL_inst_TOP/ap_start -into $blocksiggroup
add_wave /apatb_TOP_top/AESL_inst_TOP/ap_done -into $blocksiggroup
add_wave /apatb_TOP_top/AESL_inst_TOP/ap_ready -into $blocksiggroup
add_wave /apatb_TOP_top/AESL_inst_TOP/ap_idle -into $blocksiggroup
set resetgroup [add_wave_group "Reset" -into $designtopgroup]
add_wave /apatb_TOP_top/AESL_inst_TOP/ap_rst -into $resetgroup
set clockgroup [add_wave_group "Clock" -into $designtopgroup]
add_wave /apatb_TOP_top/AESL_inst_TOP/ap_clk -into $clockgroup
set testbenchgroup [add_wave_group "Test Bench Signals"]
set tbinternalsiggroup [add_wave_group "Internal Signals" -into $testbenchgroup]
set tb_simstatus_group [add_wave_group "Simulation Status" -into $tbinternalsiggroup]
set tb_portdepth_group [add_wave_group "Port Depth" -into $tbinternalsiggroup]
add_wave /apatb_TOP_top/AUTOTB_TRANSACTION_NUM -into $tb_simstatus_group -radix hex
add_wave /apatb_TOP_top/ready_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_TOP_top/done_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_TOP_top/LENGTH_in_data -into $tb_portdepth_group -radix hex
add_wave /apatb_TOP_top/LENGTH_out_data -into $tb_portdepth_group -radix hex
add_wave /apatb_TOP_top/LENGTH_SNR -into $tb_portdepth_group -radix hex
set tbcoutputgroup [add_wave_group "C Outputs" -into $testbenchgroup]
set tb_return_group [add_wave_group return(axi_slave) -into $tbcoutputgroup]
add_wave /apatb_TOP_top/out_data_write -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_TOP_top/out_data_full_n -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_TOP_top/out_data_din -into $tb_return_group -radix hex
add_wave /apatb_TOP_top/ap_local_deadlock -into $tb_return_group -radix hex
add_wave /apatb_TOP_top/ap_local_block -into $tb_return_group -radix hex
set tbcinputgroup [add_wave_group "C Inputs" -into $testbenchgroup]
set tb_return_group [add_wave_group return(fifo) -into $tbcinputgroup]
add_wave /apatb_TOP_top/SNR -into $tb_return_group -radix hex
add_wave /apatb_TOP_top/in_data_read -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_TOP_top/in_data_empty_n -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_TOP_top/in_data_dout -into $tb_return_group -radix hex
save_wave_config TOP.wcfg
run all
quit


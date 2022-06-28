set moduleName QRD_Pipeline_CHANNEL2REAL
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {QRD_Pipeline_CHANNEL2REAL}
set C_modelType { void 0 }
set C_modelArgList {
	{ Y_V_1 int 16 regular {array 8 { 0 0 } 0 1 }  }
	{ Y_V int 16 regular {array 8 { 0 0 } 0 1 }  }
	{ Y_V_2 int 16 regular {array 8 { 0 0 } 0 1 }  }
	{ Y_V_4 int 16 regular {array 8 { 0 0 } 0 1 }  }
	{ Y_V_6 int 16 regular {array 8 { 0 0 } 0 1 }  }
	{ Y_V_3 int 16 regular {array 8 { 0 0 } 0 1 }  }
	{ Y_V_5 int 16 regular {array 8 { 0 0 } 0 1 }  }
	{ Y_V_7 int 16 regular {array 8 { 0 0 } 0 1 }  }
	{ p_0_0_036012404_i_out int 16 regular {pointer 1}  }
	{ p_0_0_036012400_i_out int 16 regular {pointer 1}  }
	{ p_0_0_036012396_i_out int 16 regular {pointer 1}  }
	{ p_0_0_036012392_i_out int 16 regular {pointer 1}  }
	{ p_0_0_036012386_i_out int 16 regular {pointer 1}  }
	{ p_0_0_036012382_i_out int 16 regular {pointer 1}  }
	{ p_0_0_036012378_i_out int 16 regular {pointer 1}  }
	{ p_0_0_036012374_i_out int 16 regular {pointer 1}  }
	{ p_0_0_036012372_i_out int 16 regular {pointer 1}  }
	{ p_0_0_036012368_i_out int 16 regular {pointer 1}  }
	{ p_0_0_036012364_i_out int 16 regular {pointer 1}  }
	{ p_0_0_036012360_i_out int 16 regular {pointer 1}  }
	{ p_0_0_036012356_i_out int 16 regular {pointer 1}  }
	{ p_0_0_036012352_i_out int 16 regular {pointer 1}  }
	{ p_0_0_036012348_i_out int 16 regular {pointer 1}  }
	{ p_0_0_036012344_i_out int 16 regular {pointer 1}  }
	{ p_0_0_036002340_i_out int 16 regular {pointer 1}  }
	{ p_0_0_036002336_i_out int 16 regular {pointer 1}  }
	{ p_0_0_036002332_i_out int 16 regular {pointer 1}  }
	{ p_0_0_036002328_i_out int 16 regular {pointer 1}  }
	{ p_0_0_036002322_i_out int 16 regular {pointer 1}  }
	{ p_0_0_036002318_i_out int 16 regular {pointer 1}  }
	{ p_0_0_036002314_i_out int 16 regular {pointer 1}  }
	{ p_0_0_036002310_i_out int 16 regular {pointer 1}  }
	{ p_0_0_036002308_i_out int 16 regular {pointer 1}  }
	{ p_0_0_036002304_i_out int 16 regular {pointer 1}  }
	{ p_0_0_036002300_i_out int 16 regular {pointer 1}  }
	{ p_0_0_036002296_i_out int 16 regular {pointer 1}  }
	{ p_0_0_036002292_i_out int 16 regular {pointer 1}  }
	{ p_0_0_036002288_i_out int 16 regular {pointer 1}  }
	{ p_0_0_036002284_i_out int 16 regular {pointer 1}  }
	{ p_0_0_036002280_i_out int 16 regular {pointer 1}  }
	{ H_real_spl1 int 16 regular {fifo 0 volatile } {global 0}  }
	{ H_imag_spl1 int 16 regular {fifo 0 volatile } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "Y_V_1", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Y_V", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Y_V_2", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Y_V_4", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Y_V_6", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Y_V_3", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Y_V_5", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Y_V_7", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_0_0_036012404_i_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_0_0_036012400_i_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_0_0_036012396_i_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_0_0_036012392_i_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_0_0_036012386_i_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_0_0_036012382_i_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_0_0_036012378_i_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_0_0_036012374_i_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_0_0_036012372_i_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_0_0_036012368_i_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_0_0_036012364_i_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_0_0_036012360_i_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_0_0_036012356_i_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_0_0_036012352_i_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_0_0_036012348_i_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_0_0_036012344_i_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_0_0_036002340_i_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_0_0_036002336_i_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_0_0_036002332_i_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_0_0_036002328_i_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_0_0_036002322_i_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_0_0_036002318_i_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_0_0_036002314_i_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_0_0_036002310_i_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_0_0_036002308_i_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_0_0_036002304_i_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_0_0_036002300_i_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_0_0_036002296_i_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_0_0_036002292_i_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_0_0_036002288_i_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_0_0_036002284_i_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_0_0_036002280_i_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "H_real_spl1", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "H_imag_spl1", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 140
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ H_real_spl1_dout sc_in sc_lv 16 signal 40 } 
	{ H_real_spl1_empty_n sc_in sc_logic 1 signal 40 } 
	{ H_real_spl1_read sc_out sc_logic 1 signal 40 } 
	{ H_imag_spl1_dout sc_in sc_lv 16 signal 41 } 
	{ H_imag_spl1_empty_n sc_in sc_logic 1 signal 41 } 
	{ H_imag_spl1_read sc_out sc_logic 1 signal 41 } 
	{ Y_V_1_address0 sc_out sc_lv 3 signal 0 } 
	{ Y_V_1_ce0 sc_out sc_logic 1 signal 0 } 
	{ Y_V_1_we0 sc_out sc_logic 1 signal 0 } 
	{ Y_V_1_d0 sc_out sc_lv 16 signal 0 } 
	{ Y_V_1_address1 sc_out sc_lv 3 signal 0 } 
	{ Y_V_1_ce1 sc_out sc_logic 1 signal 0 } 
	{ Y_V_1_we1 sc_out sc_logic 1 signal 0 } 
	{ Y_V_1_d1 sc_out sc_lv 16 signal 0 } 
	{ Y_V_address0 sc_out sc_lv 3 signal 1 } 
	{ Y_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ Y_V_we0 sc_out sc_logic 1 signal 1 } 
	{ Y_V_d0 sc_out sc_lv 16 signal 1 } 
	{ Y_V_address1 sc_out sc_lv 3 signal 1 } 
	{ Y_V_ce1 sc_out sc_logic 1 signal 1 } 
	{ Y_V_we1 sc_out sc_logic 1 signal 1 } 
	{ Y_V_d1 sc_out sc_lv 16 signal 1 } 
	{ Y_V_2_address0 sc_out sc_lv 3 signal 2 } 
	{ Y_V_2_ce0 sc_out sc_logic 1 signal 2 } 
	{ Y_V_2_we0 sc_out sc_logic 1 signal 2 } 
	{ Y_V_2_d0 sc_out sc_lv 16 signal 2 } 
	{ Y_V_2_address1 sc_out sc_lv 3 signal 2 } 
	{ Y_V_2_ce1 sc_out sc_logic 1 signal 2 } 
	{ Y_V_2_we1 sc_out sc_logic 1 signal 2 } 
	{ Y_V_2_d1 sc_out sc_lv 16 signal 2 } 
	{ Y_V_4_address0 sc_out sc_lv 3 signal 3 } 
	{ Y_V_4_ce0 sc_out sc_logic 1 signal 3 } 
	{ Y_V_4_we0 sc_out sc_logic 1 signal 3 } 
	{ Y_V_4_d0 sc_out sc_lv 16 signal 3 } 
	{ Y_V_4_address1 sc_out sc_lv 3 signal 3 } 
	{ Y_V_4_ce1 sc_out sc_logic 1 signal 3 } 
	{ Y_V_4_we1 sc_out sc_logic 1 signal 3 } 
	{ Y_V_4_d1 sc_out sc_lv 16 signal 3 } 
	{ Y_V_6_address0 sc_out sc_lv 3 signal 4 } 
	{ Y_V_6_ce0 sc_out sc_logic 1 signal 4 } 
	{ Y_V_6_we0 sc_out sc_logic 1 signal 4 } 
	{ Y_V_6_d0 sc_out sc_lv 16 signal 4 } 
	{ Y_V_6_address1 sc_out sc_lv 3 signal 4 } 
	{ Y_V_6_ce1 sc_out sc_logic 1 signal 4 } 
	{ Y_V_6_we1 sc_out sc_logic 1 signal 4 } 
	{ Y_V_6_d1 sc_out sc_lv 16 signal 4 } 
	{ Y_V_3_address0 sc_out sc_lv 3 signal 5 } 
	{ Y_V_3_ce0 sc_out sc_logic 1 signal 5 } 
	{ Y_V_3_we0 sc_out sc_logic 1 signal 5 } 
	{ Y_V_3_d0 sc_out sc_lv 16 signal 5 } 
	{ Y_V_3_address1 sc_out sc_lv 3 signal 5 } 
	{ Y_V_3_ce1 sc_out sc_logic 1 signal 5 } 
	{ Y_V_3_we1 sc_out sc_logic 1 signal 5 } 
	{ Y_V_3_d1 sc_out sc_lv 16 signal 5 } 
	{ Y_V_5_address0 sc_out sc_lv 3 signal 6 } 
	{ Y_V_5_ce0 sc_out sc_logic 1 signal 6 } 
	{ Y_V_5_we0 sc_out sc_logic 1 signal 6 } 
	{ Y_V_5_d0 sc_out sc_lv 16 signal 6 } 
	{ Y_V_5_address1 sc_out sc_lv 3 signal 6 } 
	{ Y_V_5_ce1 sc_out sc_logic 1 signal 6 } 
	{ Y_V_5_we1 sc_out sc_logic 1 signal 6 } 
	{ Y_V_5_d1 sc_out sc_lv 16 signal 6 } 
	{ Y_V_7_address0 sc_out sc_lv 3 signal 7 } 
	{ Y_V_7_ce0 sc_out sc_logic 1 signal 7 } 
	{ Y_V_7_we0 sc_out sc_logic 1 signal 7 } 
	{ Y_V_7_d0 sc_out sc_lv 16 signal 7 } 
	{ Y_V_7_address1 sc_out sc_lv 3 signal 7 } 
	{ Y_V_7_ce1 sc_out sc_logic 1 signal 7 } 
	{ Y_V_7_we1 sc_out sc_logic 1 signal 7 } 
	{ Y_V_7_d1 sc_out sc_lv 16 signal 7 } 
	{ p_0_0_036012404_i_out sc_out sc_lv 16 signal 8 } 
	{ p_0_0_036012404_i_out_ap_vld sc_out sc_logic 1 outvld 8 } 
	{ p_0_0_036012400_i_out sc_out sc_lv 16 signal 9 } 
	{ p_0_0_036012400_i_out_ap_vld sc_out sc_logic 1 outvld 9 } 
	{ p_0_0_036012396_i_out sc_out sc_lv 16 signal 10 } 
	{ p_0_0_036012396_i_out_ap_vld sc_out sc_logic 1 outvld 10 } 
	{ p_0_0_036012392_i_out sc_out sc_lv 16 signal 11 } 
	{ p_0_0_036012392_i_out_ap_vld sc_out sc_logic 1 outvld 11 } 
	{ p_0_0_036012386_i_out sc_out sc_lv 16 signal 12 } 
	{ p_0_0_036012386_i_out_ap_vld sc_out sc_logic 1 outvld 12 } 
	{ p_0_0_036012382_i_out sc_out sc_lv 16 signal 13 } 
	{ p_0_0_036012382_i_out_ap_vld sc_out sc_logic 1 outvld 13 } 
	{ p_0_0_036012378_i_out sc_out sc_lv 16 signal 14 } 
	{ p_0_0_036012378_i_out_ap_vld sc_out sc_logic 1 outvld 14 } 
	{ p_0_0_036012374_i_out sc_out sc_lv 16 signal 15 } 
	{ p_0_0_036012374_i_out_ap_vld sc_out sc_logic 1 outvld 15 } 
	{ p_0_0_036012372_i_out sc_out sc_lv 16 signal 16 } 
	{ p_0_0_036012372_i_out_ap_vld sc_out sc_logic 1 outvld 16 } 
	{ p_0_0_036012368_i_out sc_out sc_lv 16 signal 17 } 
	{ p_0_0_036012368_i_out_ap_vld sc_out sc_logic 1 outvld 17 } 
	{ p_0_0_036012364_i_out sc_out sc_lv 16 signal 18 } 
	{ p_0_0_036012364_i_out_ap_vld sc_out sc_logic 1 outvld 18 } 
	{ p_0_0_036012360_i_out sc_out sc_lv 16 signal 19 } 
	{ p_0_0_036012360_i_out_ap_vld sc_out sc_logic 1 outvld 19 } 
	{ p_0_0_036012356_i_out sc_out sc_lv 16 signal 20 } 
	{ p_0_0_036012356_i_out_ap_vld sc_out sc_logic 1 outvld 20 } 
	{ p_0_0_036012352_i_out sc_out sc_lv 16 signal 21 } 
	{ p_0_0_036012352_i_out_ap_vld sc_out sc_logic 1 outvld 21 } 
	{ p_0_0_036012348_i_out sc_out sc_lv 16 signal 22 } 
	{ p_0_0_036012348_i_out_ap_vld sc_out sc_logic 1 outvld 22 } 
	{ p_0_0_036012344_i_out sc_out sc_lv 16 signal 23 } 
	{ p_0_0_036012344_i_out_ap_vld sc_out sc_logic 1 outvld 23 } 
	{ p_0_0_036002340_i_out sc_out sc_lv 16 signal 24 } 
	{ p_0_0_036002340_i_out_ap_vld sc_out sc_logic 1 outvld 24 } 
	{ p_0_0_036002336_i_out sc_out sc_lv 16 signal 25 } 
	{ p_0_0_036002336_i_out_ap_vld sc_out sc_logic 1 outvld 25 } 
	{ p_0_0_036002332_i_out sc_out sc_lv 16 signal 26 } 
	{ p_0_0_036002332_i_out_ap_vld sc_out sc_logic 1 outvld 26 } 
	{ p_0_0_036002328_i_out sc_out sc_lv 16 signal 27 } 
	{ p_0_0_036002328_i_out_ap_vld sc_out sc_logic 1 outvld 27 } 
	{ p_0_0_036002322_i_out sc_out sc_lv 16 signal 28 } 
	{ p_0_0_036002322_i_out_ap_vld sc_out sc_logic 1 outvld 28 } 
	{ p_0_0_036002318_i_out sc_out sc_lv 16 signal 29 } 
	{ p_0_0_036002318_i_out_ap_vld sc_out sc_logic 1 outvld 29 } 
	{ p_0_0_036002314_i_out sc_out sc_lv 16 signal 30 } 
	{ p_0_0_036002314_i_out_ap_vld sc_out sc_logic 1 outvld 30 } 
	{ p_0_0_036002310_i_out sc_out sc_lv 16 signal 31 } 
	{ p_0_0_036002310_i_out_ap_vld sc_out sc_logic 1 outvld 31 } 
	{ p_0_0_036002308_i_out sc_out sc_lv 16 signal 32 } 
	{ p_0_0_036002308_i_out_ap_vld sc_out sc_logic 1 outvld 32 } 
	{ p_0_0_036002304_i_out sc_out sc_lv 16 signal 33 } 
	{ p_0_0_036002304_i_out_ap_vld sc_out sc_logic 1 outvld 33 } 
	{ p_0_0_036002300_i_out sc_out sc_lv 16 signal 34 } 
	{ p_0_0_036002300_i_out_ap_vld sc_out sc_logic 1 outvld 34 } 
	{ p_0_0_036002296_i_out sc_out sc_lv 16 signal 35 } 
	{ p_0_0_036002296_i_out_ap_vld sc_out sc_logic 1 outvld 35 } 
	{ p_0_0_036002292_i_out sc_out sc_lv 16 signal 36 } 
	{ p_0_0_036002292_i_out_ap_vld sc_out sc_logic 1 outvld 36 } 
	{ p_0_0_036002288_i_out sc_out sc_lv 16 signal 37 } 
	{ p_0_0_036002288_i_out_ap_vld sc_out sc_logic 1 outvld 37 } 
	{ p_0_0_036002284_i_out sc_out sc_lv 16 signal 38 } 
	{ p_0_0_036002284_i_out_ap_vld sc_out sc_logic 1 outvld 38 } 
	{ p_0_0_036002280_i_out sc_out sc_lv 16 signal 39 } 
	{ p_0_0_036002280_i_out_ap_vld sc_out sc_logic 1 outvld 39 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "H_real_spl1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "H_real_spl1", "role": "dout" }} , 
 	{ "name": "H_real_spl1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "H_real_spl1", "role": "empty_n" }} , 
 	{ "name": "H_real_spl1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "H_real_spl1", "role": "read" }} , 
 	{ "name": "H_imag_spl1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "H_imag_spl1", "role": "dout" }} , 
 	{ "name": "H_imag_spl1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "H_imag_spl1", "role": "empty_n" }} , 
 	{ "name": "H_imag_spl1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "H_imag_spl1", "role": "read" }} , 
 	{ "name": "Y_V_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "Y_V_1", "role": "address0" }} , 
 	{ "name": "Y_V_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Y_V_1", "role": "ce0" }} , 
 	{ "name": "Y_V_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Y_V_1", "role": "we0" }} , 
 	{ "name": "Y_V_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "Y_V_1", "role": "d0" }} , 
 	{ "name": "Y_V_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "Y_V_1", "role": "address1" }} , 
 	{ "name": "Y_V_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Y_V_1", "role": "ce1" }} , 
 	{ "name": "Y_V_1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Y_V_1", "role": "we1" }} , 
 	{ "name": "Y_V_1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "Y_V_1", "role": "d1" }} , 
 	{ "name": "Y_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "Y_V", "role": "address0" }} , 
 	{ "name": "Y_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Y_V", "role": "ce0" }} , 
 	{ "name": "Y_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Y_V", "role": "we0" }} , 
 	{ "name": "Y_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "Y_V", "role": "d0" }} , 
 	{ "name": "Y_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "Y_V", "role": "address1" }} , 
 	{ "name": "Y_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Y_V", "role": "ce1" }} , 
 	{ "name": "Y_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Y_V", "role": "we1" }} , 
 	{ "name": "Y_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "Y_V", "role": "d1" }} , 
 	{ "name": "Y_V_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "Y_V_2", "role": "address0" }} , 
 	{ "name": "Y_V_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Y_V_2", "role": "ce0" }} , 
 	{ "name": "Y_V_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Y_V_2", "role": "we0" }} , 
 	{ "name": "Y_V_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "Y_V_2", "role": "d0" }} , 
 	{ "name": "Y_V_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "Y_V_2", "role": "address1" }} , 
 	{ "name": "Y_V_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Y_V_2", "role": "ce1" }} , 
 	{ "name": "Y_V_2_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Y_V_2", "role": "we1" }} , 
 	{ "name": "Y_V_2_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "Y_V_2", "role": "d1" }} , 
 	{ "name": "Y_V_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "Y_V_4", "role": "address0" }} , 
 	{ "name": "Y_V_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Y_V_4", "role": "ce0" }} , 
 	{ "name": "Y_V_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Y_V_4", "role": "we0" }} , 
 	{ "name": "Y_V_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "Y_V_4", "role": "d0" }} , 
 	{ "name": "Y_V_4_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "Y_V_4", "role": "address1" }} , 
 	{ "name": "Y_V_4_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Y_V_4", "role": "ce1" }} , 
 	{ "name": "Y_V_4_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Y_V_4", "role": "we1" }} , 
 	{ "name": "Y_V_4_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "Y_V_4", "role": "d1" }} , 
 	{ "name": "Y_V_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "Y_V_6", "role": "address0" }} , 
 	{ "name": "Y_V_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Y_V_6", "role": "ce0" }} , 
 	{ "name": "Y_V_6_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Y_V_6", "role": "we0" }} , 
 	{ "name": "Y_V_6_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "Y_V_6", "role": "d0" }} , 
 	{ "name": "Y_V_6_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "Y_V_6", "role": "address1" }} , 
 	{ "name": "Y_V_6_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Y_V_6", "role": "ce1" }} , 
 	{ "name": "Y_V_6_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Y_V_6", "role": "we1" }} , 
 	{ "name": "Y_V_6_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "Y_V_6", "role": "d1" }} , 
 	{ "name": "Y_V_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "Y_V_3", "role": "address0" }} , 
 	{ "name": "Y_V_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Y_V_3", "role": "ce0" }} , 
 	{ "name": "Y_V_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Y_V_3", "role": "we0" }} , 
 	{ "name": "Y_V_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "Y_V_3", "role": "d0" }} , 
 	{ "name": "Y_V_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "Y_V_3", "role": "address1" }} , 
 	{ "name": "Y_V_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Y_V_3", "role": "ce1" }} , 
 	{ "name": "Y_V_3_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Y_V_3", "role": "we1" }} , 
 	{ "name": "Y_V_3_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "Y_V_3", "role": "d1" }} , 
 	{ "name": "Y_V_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "Y_V_5", "role": "address0" }} , 
 	{ "name": "Y_V_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Y_V_5", "role": "ce0" }} , 
 	{ "name": "Y_V_5_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Y_V_5", "role": "we0" }} , 
 	{ "name": "Y_V_5_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "Y_V_5", "role": "d0" }} , 
 	{ "name": "Y_V_5_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "Y_V_5", "role": "address1" }} , 
 	{ "name": "Y_V_5_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Y_V_5", "role": "ce1" }} , 
 	{ "name": "Y_V_5_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Y_V_5", "role": "we1" }} , 
 	{ "name": "Y_V_5_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "Y_V_5", "role": "d1" }} , 
 	{ "name": "Y_V_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "Y_V_7", "role": "address0" }} , 
 	{ "name": "Y_V_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Y_V_7", "role": "ce0" }} , 
 	{ "name": "Y_V_7_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Y_V_7", "role": "we0" }} , 
 	{ "name": "Y_V_7_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "Y_V_7", "role": "d0" }} , 
 	{ "name": "Y_V_7_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "Y_V_7", "role": "address1" }} , 
 	{ "name": "Y_V_7_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Y_V_7", "role": "ce1" }} , 
 	{ "name": "Y_V_7_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Y_V_7", "role": "we1" }} , 
 	{ "name": "Y_V_7_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "Y_V_7", "role": "d1" }} , 
 	{ "name": "p_0_0_036012404_i_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_0_0_036012404_i_out", "role": "default" }} , 
 	{ "name": "p_0_0_036012404_i_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_0_0_036012404_i_out", "role": "ap_vld" }} , 
 	{ "name": "p_0_0_036012400_i_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_0_0_036012400_i_out", "role": "default" }} , 
 	{ "name": "p_0_0_036012400_i_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_0_0_036012400_i_out", "role": "ap_vld" }} , 
 	{ "name": "p_0_0_036012396_i_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_0_0_036012396_i_out", "role": "default" }} , 
 	{ "name": "p_0_0_036012396_i_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_0_0_036012396_i_out", "role": "ap_vld" }} , 
 	{ "name": "p_0_0_036012392_i_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_0_0_036012392_i_out", "role": "default" }} , 
 	{ "name": "p_0_0_036012392_i_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_0_0_036012392_i_out", "role": "ap_vld" }} , 
 	{ "name": "p_0_0_036012386_i_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_0_0_036012386_i_out", "role": "default" }} , 
 	{ "name": "p_0_0_036012386_i_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_0_0_036012386_i_out", "role": "ap_vld" }} , 
 	{ "name": "p_0_0_036012382_i_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_0_0_036012382_i_out", "role": "default" }} , 
 	{ "name": "p_0_0_036012382_i_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_0_0_036012382_i_out", "role": "ap_vld" }} , 
 	{ "name": "p_0_0_036012378_i_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_0_0_036012378_i_out", "role": "default" }} , 
 	{ "name": "p_0_0_036012378_i_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_0_0_036012378_i_out", "role": "ap_vld" }} , 
 	{ "name": "p_0_0_036012374_i_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_0_0_036012374_i_out", "role": "default" }} , 
 	{ "name": "p_0_0_036012374_i_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_0_0_036012374_i_out", "role": "ap_vld" }} , 
 	{ "name": "p_0_0_036012372_i_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_0_0_036012372_i_out", "role": "default" }} , 
 	{ "name": "p_0_0_036012372_i_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_0_0_036012372_i_out", "role": "ap_vld" }} , 
 	{ "name": "p_0_0_036012368_i_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_0_0_036012368_i_out", "role": "default" }} , 
 	{ "name": "p_0_0_036012368_i_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_0_0_036012368_i_out", "role": "ap_vld" }} , 
 	{ "name": "p_0_0_036012364_i_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_0_0_036012364_i_out", "role": "default" }} , 
 	{ "name": "p_0_0_036012364_i_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_0_0_036012364_i_out", "role": "ap_vld" }} , 
 	{ "name": "p_0_0_036012360_i_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_0_0_036012360_i_out", "role": "default" }} , 
 	{ "name": "p_0_0_036012360_i_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_0_0_036012360_i_out", "role": "ap_vld" }} , 
 	{ "name": "p_0_0_036012356_i_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_0_0_036012356_i_out", "role": "default" }} , 
 	{ "name": "p_0_0_036012356_i_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_0_0_036012356_i_out", "role": "ap_vld" }} , 
 	{ "name": "p_0_0_036012352_i_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_0_0_036012352_i_out", "role": "default" }} , 
 	{ "name": "p_0_0_036012352_i_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_0_0_036012352_i_out", "role": "ap_vld" }} , 
 	{ "name": "p_0_0_036012348_i_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_0_0_036012348_i_out", "role": "default" }} , 
 	{ "name": "p_0_0_036012348_i_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_0_0_036012348_i_out", "role": "ap_vld" }} , 
 	{ "name": "p_0_0_036012344_i_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_0_0_036012344_i_out", "role": "default" }} , 
 	{ "name": "p_0_0_036012344_i_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_0_0_036012344_i_out", "role": "ap_vld" }} , 
 	{ "name": "p_0_0_036002340_i_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_0_0_036002340_i_out", "role": "default" }} , 
 	{ "name": "p_0_0_036002340_i_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_0_0_036002340_i_out", "role": "ap_vld" }} , 
 	{ "name": "p_0_0_036002336_i_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_0_0_036002336_i_out", "role": "default" }} , 
 	{ "name": "p_0_0_036002336_i_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_0_0_036002336_i_out", "role": "ap_vld" }} , 
 	{ "name": "p_0_0_036002332_i_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_0_0_036002332_i_out", "role": "default" }} , 
 	{ "name": "p_0_0_036002332_i_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_0_0_036002332_i_out", "role": "ap_vld" }} , 
 	{ "name": "p_0_0_036002328_i_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_0_0_036002328_i_out", "role": "default" }} , 
 	{ "name": "p_0_0_036002328_i_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_0_0_036002328_i_out", "role": "ap_vld" }} , 
 	{ "name": "p_0_0_036002322_i_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_0_0_036002322_i_out", "role": "default" }} , 
 	{ "name": "p_0_0_036002322_i_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_0_0_036002322_i_out", "role": "ap_vld" }} , 
 	{ "name": "p_0_0_036002318_i_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_0_0_036002318_i_out", "role": "default" }} , 
 	{ "name": "p_0_0_036002318_i_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_0_0_036002318_i_out", "role": "ap_vld" }} , 
 	{ "name": "p_0_0_036002314_i_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_0_0_036002314_i_out", "role": "default" }} , 
 	{ "name": "p_0_0_036002314_i_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_0_0_036002314_i_out", "role": "ap_vld" }} , 
 	{ "name": "p_0_0_036002310_i_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_0_0_036002310_i_out", "role": "default" }} , 
 	{ "name": "p_0_0_036002310_i_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_0_0_036002310_i_out", "role": "ap_vld" }} , 
 	{ "name": "p_0_0_036002308_i_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_0_0_036002308_i_out", "role": "default" }} , 
 	{ "name": "p_0_0_036002308_i_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_0_0_036002308_i_out", "role": "ap_vld" }} , 
 	{ "name": "p_0_0_036002304_i_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_0_0_036002304_i_out", "role": "default" }} , 
 	{ "name": "p_0_0_036002304_i_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_0_0_036002304_i_out", "role": "ap_vld" }} , 
 	{ "name": "p_0_0_036002300_i_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_0_0_036002300_i_out", "role": "default" }} , 
 	{ "name": "p_0_0_036002300_i_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_0_0_036002300_i_out", "role": "ap_vld" }} , 
 	{ "name": "p_0_0_036002296_i_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_0_0_036002296_i_out", "role": "default" }} , 
 	{ "name": "p_0_0_036002296_i_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_0_0_036002296_i_out", "role": "ap_vld" }} , 
 	{ "name": "p_0_0_036002292_i_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_0_0_036002292_i_out", "role": "default" }} , 
 	{ "name": "p_0_0_036002292_i_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_0_0_036002292_i_out", "role": "ap_vld" }} , 
 	{ "name": "p_0_0_036002288_i_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_0_0_036002288_i_out", "role": "default" }} , 
 	{ "name": "p_0_0_036002288_i_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_0_0_036002288_i_out", "role": "ap_vld" }} , 
 	{ "name": "p_0_0_036002284_i_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_0_0_036002284_i_out", "role": "default" }} , 
 	{ "name": "p_0_0_036002284_i_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_0_0_036002284_i_out", "role": "ap_vld" }} , 
 	{ "name": "p_0_0_036002280_i_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_0_0_036002280_i_out", "role": "default" }} , 
 	{ "name": "p_0_0_036002280_i_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_0_0_036002280_i_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "QRD_Pipeline_CHANNEL2REAL",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "Y_V_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Y_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Y_V_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Y_V_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Y_V_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Y_V_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Y_V_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Y_V_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_0_0_036012404_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_036012400_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_036012396_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_036012392_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_036012386_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_036012382_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_036012378_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_036012374_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_036012372_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_036012368_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_036012364_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_036012360_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_036012356_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_036012352_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_036012348_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_036012344_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_036002340_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_036002336_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_036002332_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_036002328_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_036002322_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_036002318_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_036002314_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_036002310_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_036002308_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_036002304_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_036002300_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_036002296_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_036002292_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_036002288_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_036002284_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_036002280_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "H_real_spl1", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "H_real_spl1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "H_imag_spl1", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "H_imag_spl1_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "CHANNEL2REAL", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	QRD_Pipeline_CHANNEL2REAL {
		Y_V_1 {Type O LastRead -1 FirstWrite 1}
		Y_V {Type O LastRead -1 FirstWrite 1}
		Y_V_2 {Type O LastRead -1 FirstWrite 1}
		Y_V_4 {Type O LastRead -1 FirstWrite 1}
		Y_V_6 {Type O LastRead -1 FirstWrite 1}
		Y_V_3 {Type O LastRead -1 FirstWrite 1}
		Y_V_5 {Type O LastRead -1 FirstWrite 1}
		Y_V_7 {Type O LastRead -1 FirstWrite 1}
		p_0_0_036012404_i_out {Type O LastRead -1 FirstWrite 0}
		p_0_0_036012400_i_out {Type O LastRead -1 FirstWrite 0}
		p_0_0_036012396_i_out {Type O LastRead -1 FirstWrite 0}
		p_0_0_036012392_i_out {Type O LastRead -1 FirstWrite 0}
		p_0_0_036012386_i_out {Type O LastRead -1 FirstWrite 0}
		p_0_0_036012382_i_out {Type O LastRead -1 FirstWrite 0}
		p_0_0_036012378_i_out {Type O LastRead -1 FirstWrite 0}
		p_0_0_036012374_i_out {Type O LastRead -1 FirstWrite 0}
		p_0_0_036012372_i_out {Type O LastRead -1 FirstWrite 0}
		p_0_0_036012368_i_out {Type O LastRead -1 FirstWrite 0}
		p_0_0_036012364_i_out {Type O LastRead -1 FirstWrite 0}
		p_0_0_036012360_i_out {Type O LastRead -1 FirstWrite 0}
		p_0_0_036012356_i_out {Type O LastRead -1 FirstWrite 0}
		p_0_0_036012352_i_out {Type O LastRead -1 FirstWrite 0}
		p_0_0_036012348_i_out {Type O LastRead -1 FirstWrite 0}
		p_0_0_036012344_i_out {Type O LastRead -1 FirstWrite 0}
		p_0_0_036002340_i_out {Type O LastRead -1 FirstWrite 0}
		p_0_0_036002336_i_out {Type O LastRead -1 FirstWrite 0}
		p_0_0_036002332_i_out {Type O LastRead -1 FirstWrite 0}
		p_0_0_036002328_i_out {Type O LastRead -1 FirstWrite 0}
		p_0_0_036002322_i_out {Type O LastRead -1 FirstWrite 0}
		p_0_0_036002318_i_out {Type O LastRead -1 FirstWrite 0}
		p_0_0_036002314_i_out {Type O LastRead -1 FirstWrite 0}
		p_0_0_036002310_i_out {Type O LastRead -1 FirstWrite 0}
		p_0_0_036002308_i_out {Type O LastRead -1 FirstWrite 0}
		p_0_0_036002304_i_out {Type O LastRead -1 FirstWrite 0}
		p_0_0_036002300_i_out {Type O LastRead -1 FirstWrite 0}
		p_0_0_036002296_i_out {Type O LastRead -1 FirstWrite 0}
		p_0_0_036002292_i_out {Type O LastRead -1 FirstWrite 0}
		p_0_0_036002288_i_out {Type O LastRead -1 FirstWrite 0}
		p_0_0_036002284_i_out {Type O LastRead -1 FirstWrite 0}
		p_0_0_036002280_i_out {Type O LastRead -1 FirstWrite 0}
		H_real_spl1 {Type I LastRead 1 FirstWrite -1}
		H_imag_spl1 {Type I LastRead 1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "18", "Max" : "18"}
	, {"Name" : "Interval", "Min" : "18", "Max" : "18"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	Y_V_1 { ap_memory {  { Y_V_1_address0 mem_address 1 3 }  { Y_V_1_ce0 mem_ce 1 1 }  { Y_V_1_we0 mem_we 1 1 }  { Y_V_1_d0 mem_din 1 16 }  { Y_V_1_address1 MemPortADDR2 1 3 }  { Y_V_1_ce1 MemPortCE2 1 1 }  { Y_V_1_we1 MemPortWE2 1 1 }  { Y_V_1_d1 MemPortDIN2 1 16 } } }
	Y_V { ap_memory {  { Y_V_address0 mem_address 1 3 }  { Y_V_ce0 mem_ce 1 1 }  { Y_V_we0 mem_we 1 1 }  { Y_V_d0 mem_din 1 16 }  { Y_V_address1 MemPortADDR2 1 3 }  { Y_V_ce1 MemPortCE2 1 1 }  { Y_V_we1 MemPortWE2 1 1 }  { Y_V_d1 MemPortDIN2 1 16 } } }
	Y_V_2 { ap_memory {  { Y_V_2_address0 mem_address 1 3 }  { Y_V_2_ce0 mem_ce 1 1 }  { Y_V_2_we0 mem_we 1 1 }  { Y_V_2_d0 mem_din 1 16 }  { Y_V_2_address1 MemPortADDR2 1 3 }  { Y_V_2_ce1 MemPortCE2 1 1 }  { Y_V_2_we1 MemPortWE2 1 1 }  { Y_V_2_d1 MemPortDIN2 1 16 } } }
	Y_V_4 { ap_memory {  { Y_V_4_address0 mem_address 1 3 }  { Y_V_4_ce0 mem_ce 1 1 }  { Y_V_4_we0 mem_we 1 1 }  { Y_V_4_d0 mem_din 1 16 }  { Y_V_4_address1 MemPortADDR2 1 3 }  { Y_V_4_ce1 MemPortCE2 1 1 }  { Y_V_4_we1 MemPortWE2 1 1 }  { Y_V_4_d1 MemPortDIN2 1 16 } } }
	Y_V_6 { ap_memory {  { Y_V_6_address0 mem_address 1 3 }  { Y_V_6_ce0 mem_ce 1 1 }  { Y_V_6_we0 mem_we 1 1 }  { Y_V_6_d0 mem_din 1 16 }  { Y_V_6_address1 MemPortADDR2 1 3 }  { Y_V_6_ce1 MemPortCE2 1 1 }  { Y_V_6_we1 MemPortWE2 1 1 }  { Y_V_6_d1 MemPortDIN2 1 16 } } }
	Y_V_3 { ap_memory {  { Y_V_3_address0 mem_address 1 3 }  { Y_V_3_ce0 mem_ce 1 1 }  { Y_V_3_we0 mem_we 1 1 }  { Y_V_3_d0 mem_din 1 16 }  { Y_V_3_address1 MemPortADDR2 1 3 }  { Y_V_3_ce1 MemPortCE2 1 1 }  { Y_V_3_we1 MemPortWE2 1 1 }  { Y_V_3_d1 MemPortDIN2 1 16 } } }
	Y_V_5 { ap_memory {  { Y_V_5_address0 mem_address 1 3 }  { Y_V_5_ce0 mem_ce 1 1 }  { Y_V_5_we0 mem_we 1 1 }  { Y_V_5_d0 mem_din 1 16 }  { Y_V_5_address1 MemPortADDR2 1 3 }  { Y_V_5_ce1 MemPortCE2 1 1 }  { Y_V_5_we1 MemPortWE2 1 1 }  { Y_V_5_d1 MemPortDIN2 1 16 } } }
	Y_V_7 { ap_memory {  { Y_V_7_address0 mem_address 1 3 }  { Y_V_7_ce0 mem_ce 1 1 }  { Y_V_7_we0 mem_we 1 1 }  { Y_V_7_d0 mem_din 1 16 }  { Y_V_7_address1 MemPortADDR2 1 3 }  { Y_V_7_ce1 MemPortCE2 1 1 }  { Y_V_7_we1 MemPortWE2 1 1 }  { Y_V_7_d1 MemPortDIN2 1 16 } } }
	p_0_0_036012404_i_out { ap_vld {  { p_0_0_036012404_i_out out_data 1 16 }  { p_0_0_036012404_i_out_ap_vld out_vld 1 1 } } }
	p_0_0_036012400_i_out { ap_vld {  { p_0_0_036012400_i_out out_data 1 16 }  { p_0_0_036012400_i_out_ap_vld out_vld 1 1 } } }
	p_0_0_036012396_i_out { ap_vld {  { p_0_0_036012396_i_out out_data 1 16 }  { p_0_0_036012396_i_out_ap_vld out_vld 1 1 } } }
	p_0_0_036012392_i_out { ap_vld {  { p_0_0_036012392_i_out out_data 1 16 }  { p_0_0_036012392_i_out_ap_vld out_vld 1 1 } } }
	p_0_0_036012386_i_out { ap_vld {  { p_0_0_036012386_i_out out_data 1 16 }  { p_0_0_036012386_i_out_ap_vld out_vld 1 1 } } }
	p_0_0_036012382_i_out { ap_vld {  { p_0_0_036012382_i_out out_data 1 16 }  { p_0_0_036012382_i_out_ap_vld out_vld 1 1 } } }
	p_0_0_036012378_i_out { ap_vld {  { p_0_0_036012378_i_out out_data 1 16 }  { p_0_0_036012378_i_out_ap_vld out_vld 1 1 } } }
	p_0_0_036012374_i_out { ap_vld {  { p_0_0_036012374_i_out out_data 1 16 }  { p_0_0_036012374_i_out_ap_vld out_vld 1 1 } } }
	p_0_0_036012372_i_out { ap_vld {  { p_0_0_036012372_i_out out_data 1 16 }  { p_0_0_036012372_i_out_ap_vld out_vld 1 1 } } }
	p_0_0_036012368_i_out { ap_vld {  { p_0_0_036012368_i_out out_data 1 16 }  { p_0_0_036012368_i_out_ap_vld out_vld 1 1 } } }
	p_0_0_036012364_i_out { ap_vld {  { p_0_0_036012364_i_out out_data 1 16 }  { p_0_0_036012364_i_out_ap_vld out_vld 1 1 } } }
	p_0_0_036012360_i_out { ap_vld {  { p_0_0_036012360_i_out out_data 1 16 }  { p_0_0_036012360_i_out_ap_vld out_vld 1 1 } } }
	p_0_0_036012356_i_out { ap_vld {  { p_0_0_036012356_i_out out_data 1 16 }  { p_0_0_036012356_i_out_ap_vld out_vld 1 1 } } }
	p_0_0_036012352_i_out { ap_vld {  { p_0_0_036012352_i_out out_data 1 16 }  { p_0_0_036012352_i_out_ap_vld out_vld 1 1 } } }
	p_0_0_036012348_i_out { ap_vld {  { p_0_0_036012348_i_out out_data 1 16 }  { p_0_0_036012348_i_out_ap_vld out_vld 1 1 } } }
	p_0_0_036012344_i_out { ap_vld {  { p_0_0_036012344_i_out out_data 1 16 }  { p_0_0_036012344_i_out_ap_vld out_vld 1 1 } } }
	p_0_0_036002340_i_out { ap_vld {  { p_0_0_036002340_i_out out_data 1 16 }  { p_0_0_036002340_i_out_ap_vld out_vld 1 1 } } }
	p_0_0_036002336_i_out { ap_vld {  { p_0_0_036002336_i_out out_data 1 16 }  { p_0_0_036002336_i_out_ap_vld out_vld 1 1 } } }
	p_0_0_036002332_i_out { ap_vld {  { p_0_0_036002332_i_out out_data 1 16 }  { p_0_0_036002332_i_out_ap_vld out_vld 1 1 } } }
	p_0_0_036002328_i_out { ap_vld {  { p_0_0_036002328_i_out out_data 1 16 }  { p_0_0_036002328_i_out_ap_vld out_vld 1 1 } } }
	p_0_0_036002322_i_out { ap_vld {  { p_0_0_036002322_i_out out_data 1 16 }  { p_0_0_036002322_i_out_ap_vld out_vld 1 1 } } }
	p_0_0_036002318_i_out { ap_vld {  { p_0_0_036002318_i_out out_data 1 16 }  { p_0_0_036002318_i_out_ap_vld out_vld 1 1 } } }
	p_0_0_036002314_i_out { ap_vld {  { p_0_0_036002314_i_out out_data 1 16 }  { p_0_0_036002314_i_out_ap_vld out_vld 1 1 } } }
	p_0_0_036002310_i_out { ap_vld {  { p_0_0_036002310_i_out out_data 1 16 }  { p_0_0_036002310_i_out_ap_vld out_vld 1 1 } } }
	p_0_0_036002308_i_out { ap_vld {  { p_0_0_036002308_i_out out_data 1 16 }  { p_0_0_036002308_i_out_ap_vld out_vld 1 1 } } }
	p_0_0_036002304_i_out { ap_vld {  { p_0_0_036002304_i_out out_data 1 16 }  { p_0_0_036002304_i_out_ap_vld out_vld 1 1 } } }
	p_0_0_036002300_i_out { ap_vld {  { p_0_0_036002300_i_out out_data 1 16 }  { p_0_0_036002300_i_out_ap_vld out_vld 1 1 } } }
	p_0_0_036002296_i_out { ap_vld {  { p_0_0_036002296_i_out out_data 1 16 }  { p_0_0_036002296_i_out_ap_vld out_vld 1 1 } } }
	p_0_0_036002292_i_out { ap_vld {  { p_0_0_036002292_i_out out_data 1 16 }  { p_0_0_036002292_i_out_ap_vld out_vld 1 1 } } }
	p_0_0_036002288_i_out { ap_vld {  { p_0_0_036002288_i_out out_data 1 16 }  { p_0_0_036002288_i_out_ap_vld out_vld 1 1 } } }
	p_0_0_036002284_i_out { ap_vld {  { p_0_0_036002284_i_out out_data 1 16 }  { p_0_0_036002284_i_out_ap_vld out_vld 1 1 } } }
	p_0_0_036002280_i_out { ap_vld {  { p_0_0_036002280_i_out out_data 1 16 }  { p_0_0_036002280_i_out_ap_vld out_vld 1 1 } } }
	H_real_spl1 { ap_fifo {  { H_real_spl1_dout fifo_data 0 16 }  { H_real_spl1_empty_n fifo_status 0 1 }  { H_real_spl1_read fifo_update 1 1 } } }
	H_imag_spl1 { ap_fifo {  { H_imag_spl1_dout fifo_data 0 16 }  { H_imag_spl1_empty_n fifo_status 0 1 }  { H_imag_spl1_read fifo_update 1 1 } } }
}

set moduleName KBEST_Pipeline_VITIS_LOOP_48_5
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
set C_modelName {KBEST_Pipeline_VITIS_LOOP_48_5}
set C_modelType { void 0 }
set C_modelArgList {
	{ select_ln42_61 int 32 regular  }
	{ select_ln42_62 int 32 regular  }
	{ select_ln42_64 int 32 regular  }
	{ select_ln42_67 int 32 regular  }
	{ select_ln42_69 int 32 regular  }
	{ select_ln42_72 int 32 regular  }
	{ select_ln42_75 int 32 regular  }
	{ select_ln42_16 int 32 regular  }
	{ select_ln42_13 int 32 regular  }
	{ select_ln42_12 int 32 regular  }
	{ select_ln42_10 int 32 regular  }
	{ select_ln42_7 int 32 regular  }
	{ select_ln42_5 int 32 regular  }
	{ select_ln42_2 int 32 regular  }
	{ select_ln42_42 int 32 regular  }
	{ select_ln42_43 int 32 regular  }
	{ select_ln42_45 int 32 regular  }
	{ select_ln42_48 int 32 regular  }
	{ select_ln42_50 int 32 regular  }
	{ select_ln42_53 int 32 regular  }
	{ select_ln42_56 int 32 regular  }
	{ select_ln42_35 int 32 regular  }
	{ select_ln42_32 int 32 regular  }
	{ select_ln42_31 int 32 regular  }
	{ select_ln42_29 int 32 regular  }
	{ select_ln42_26 int 32 regular  }
	{ select_ln42_24 int 32 regular  }
	{ select_ln42_21 int 32 regular  }
	{ survival_path int 32 regular {array 16 { 1 1 } 1 1 }  }
	{ zext_ln36 int 3 regular  }
	{ p_out int 32 regular {pointer 1}  }
	{ p_out1 int 32 regular {pointer 1}  }
	{ p_out2 int 32 regular {pointer 1}  }
	{ p_out3 int 32 regular {pointer 1}  }
	{ p_out4 int 32 regular {pointer 1}  }
	{ p_out5 int 32 regular {pointer 1}  }
	{ p_out6 int 32 regular {pointer 1}  }
	{ p_out7 int 32 regular {pointer 1}  }
	{ p_out8 int 32 regular {pointer 1}  }
	{ p_out9 int 32 regular {pointer 1}  }
	{ p_out10 int 32 regular {pointer 1}  }
	{ p_out11 int 32 regular {pointer 1}  }
	{ p_out12 int 32 regular {pointer 1}  }
	{ p_out13 int 32 regular {pointer 1}  }
	{ p_out14 int 32 regular {pointer 1}  }
	{ p_out15 int 32 regular {pointer 1}  }
	{ p_out16 int 32 regular {pointer 1}  }
	{ p_out17 int 32 regular {pointer 1}  }
	{ p_out18 int 32 regular {pointer 1}  }
	{ p_out19 int 32 regular {pointer 1}  }
	{ p_out20 int 32 regular {pointer 1}  }
	{ p_out21 int 32 regular {pointer 1}  }
	{ p_out22 int 32 regular {pointer 1}  }
	{ p_out23 int 32 regular {pointer 1}  }
	{ p_out24 int 32 regular {pointer 1}  }
	{ p_out25 int 32 regular {pointer 1}  }
	{ p_out26 int 32 regular {pointer 1}  }
	{ p_out27 int 32 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "select_ln42_61", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "select_ln42_62", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "select_ln42_64", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "select_ln42_67", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "select_ln42_69", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "select_ln42_72", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "select_ln42_75", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "select_ln42_16", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "select_ln42_13", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "select_ln42_12", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "select_ln42_10", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "select_ln42_7", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "select_ln42_5", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "select_ln42_2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "select_ln42_42", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "select_ln42_43", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "select_ln42_45", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "select_ln42_48", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "select_ln42_50", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "select_ln42_53", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "select_ln42_56", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "select_ln42_35", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "select_ln42_32", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "select_ln42_31", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "select_ln42_29", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "select_ln42_26", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "select_ln42_24", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "select_ln42_21", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "survival_path", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln36", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "p_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_out1", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_out2", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_out3", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_out4", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_out5", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_out6", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_out7", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_out8", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_out9", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_out10", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_out11", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_out12", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_out13", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_out14", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_out15", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_out16", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_out17", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_out18", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_out19", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_out20", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_out21", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_out22", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_out23", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_out24", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_out25", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_out26", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_out27", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 97
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ select_ln42_61 sc_in sc_lv 32 signal 0 } 
	{ select_ln42_62 sc_in sc_lv 32 signal 1 } 
	{ select_ln42_64 sc_in sc_lv 32 signal 2 } 
	{ select_ln42_67 sc_in sc_lv 32 signal 3 } 
	{ select_ln42_69 sc_in sc_lv 32 signal 4 } 
	{ select_ln42_72 sc_in sc_lv 32 signal 5 } 
	{ select_ln42_75 sc_in sc_lv 32 signal 6 } 
	{ select_ln42_16 sc_in sc_lv 32 signal 7 } 
	{ select_ln42_13 sc_in sc_lv 32 signal 8 } 
	{ select_ln42_12 sc_in sc_lv 32 signal 9 } 
	{ select_ln42_10 sc_in sc_lv 32 signal 10 } 
	{ select_ln42_7 sc_in sc_lv 32 signal 11 } 
	{ select_ln42_5 sc_in sc_lv 32 signal 12 } 
	{ select_ln42_2 sc_in sc_lv 32 signal 13 } 
	{ select_ln42_42 sc_in sc_lv 32 signal 14 } 
	{ select_ln42_43 sc_in sc_lv 32 signal 15 } 
	{ select_ln42_45 sc_in sc_lv 32 signal 16 } 
	{ select_ln42_48 sc_in sc_lv 32 signal 17 } 
	{ select_ln42_50 sc_in sc_lv 32 signal 18 } 
	{ select_ln42_53 sc_in sc_lv 32 signal 19 } 
	{ select_ln42_56 sc_in sc_lv 32 signal 20 } 
	{ select_ln42_35 sc_in sc_lv 32 signal 21 } 
	{ select_ln42_32 sc_in sc_lv 32 signal 22 } 
	{ select_ln42_31 sc_in sc_lv 32 signal 23 } 
	{ select_ln42_29 sc_in sc_lv 32 signal 24 } 
	{ select_ln42_26 sc_in sc_lv 32 signal 25 } 
	{ select_ln42_24 sc_in sc_lv 32 signal 26 } 
	{ select_ln42_21 sc_in sc_lv 32 signal 27 } 
	{ survival_path_address0 sc_out sc_lv 4 signal 28 } 
	{ survival_path_ce0 sc_out sc_logic 1 signal 28 } 
	{ survival_path_q0 sc_in sc_lv 32 signal 28 } 
	{ survival_path_address1 sc_out sc_lv 4 signal 28 } 
	{ survival_path_ce1 sc_out sc_logic 1 signal 28 } 
	{ survival_path_q1 sc_in sc_lv 32 signal 28 } 
	{ zext_ln36 sc_in sc_lv 3 signal 29 } 
	{ p_out sc_out sc_lv 32 signal 30 } 
	{ p_out_ap_vld sc_out sc_logic 1 outvld 30 } 
	{ p_out1 sc_out sc_lv 32 signal 31 } 
	{ p_out1_ap_vld sc_out sc_logic 1 outvld 31 } 
	{ p_out2 sc_out sc_lv 32 signal 32 } 
	{ p_out2_ap_vld sc_out sc_logic 1 outvld 32 } 
	{ p_out3 sc_out sc_lv 32 signal 33 } 
	{ p_out3_ap_vld sc_out sc_logic 1 outvld 33 } 
	{ p_out4 sc_out sc_lv 32 signal 34 } 
	{ p_out4_ap_vld sc_out sc_logic 1 outvld 34 } 
	{ p_out5 sc_out sc_lv 32 signal 35 } 
	{ p_out5_ap_vld sc_out sc_logic 1 outvld 35 } 
	{ p_out6 sc_out sc_lv 32 signal 36 } 
	{ p_out6_ap_vld sc_out sc_logic 1 outvld 36 } 
	{ p_out7 sc_out sc_lv 32 signal 37 } 
	{ p_out7_ap_vld sc_out sc_logic 1 outvld 37 } 
	{ p_out8 sc_out sc_lv 32 signal 38 } 
	{ p_out8_ap_vld sc_out sc_logic 1 outvld 38 } 
	{ p_out9 sc_out sc_lv 32 signal 39 } 
	{ p_out9_ap_vld sc_out sc_logic 1 outvld 39 } 
	{ p_out10 sc_out sc_lv 32 signal 40 } 
	{ p_out10_ap_vld sc_out sc_logic 1 outvld 40 } 
	{ p_out11 sc_out sc_lv 32 signal 41 } 
	{ p_out11_ap_vld sc_out sc_logic 1 outvld 41 } 
	{ p_out12 sc_out sc_lv 32 signal 42 } 
	{ p_out12_ap_vld sc_out sc_logic 1 outvld 42 } 
	{ p_out13 sc_out sc_lv 32 signal 43 } 
	{ p_out13_ap_vld sc_out sc_logic 1 outvld 43 } 
	{ p_out14 sc_out sc_lv 32 signal 44 } 
	{ p_out14_ap_vld sc_out sc_logic 1 outvld 44 } 
	{ p_out15 sc_out sc_lv 32 signal 45 } 
	{ p_out15_ap_vld sc_out sc_logic 1 outvld 45 } 
	{ p_out16 sc_out sc_lv 32 signal 46 } 
	{ p_out16_ap_vld sc_out sc_logic 1 outvld 46 } 
	{ p_out17 sc_out sc_lv 32 signal 47 } 
	{ p_out17_ap_vld sc_out sc_logic 1 outvld 47 } 
	{ p_out18 sc_out sc_lv 32 signal 48 } 
	{ p_out18_ap_vld sc_out sc_logic 1 outvld 48 } 
	{ p_out19 sc_out sc_lv 32 signal 49 } 
	{ p_out19_ap_vld sc_out sc_logic 1 outvld 49 } 
	{ p_out20 sc_out sc_lv 32 signal 50 } 
	{ p_out20_ap_vld sc_out sc_logic 1 outvld 50 } 
	{ p_out21 sc_out sc_lv 32 signal 51 } 
	{ p_out21_ap_vld sc_out sc_logic 1 outvld 51 } 
	{ p_out22 sc_out sc_lv 32 signal 52 } 
	{ p_out22_ap_vld sc_out sc_logic 1 outvld 52 } 
	{ p_out23 sc_out sc_lv 32 signal 53 } 
	{ p_out23_ap_vld sc_out sc_logic 1 outvld 53 } 
	{ p_out24 sc_out sc_lv 32 signal 54 } 
	{ p_out24_ap_vld sc_out sc_logic 1 outvld 54 } 
	{ p_out25 sc_out sc_lv 32 signal 55 } 
	{ p_out25_ap_vld sc_out sc_logic 1 outvld 55 } 
	{ p_out26 sc_out sc_lv 32 signal 56 } 
	{ p_out26_ap_vld sc_out sc_logic 1 outvld 56 } 
	{ p_out27 sc_out sc_lv 32 signal 57 } 
	{ p_out27_ap_vld sc_out sc_logic 1 outvld 57 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "select_ln42_61", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "select_ln42_61", "role": "default" }} , 
 	{ "name": "select_ln42_62", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "select_ln42_62", "role": "default" }} , 
 	{ "name": "select_ln42_64", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "select_ln42_64", "role": "default" }} , 
 	{ "name": "select_ln42_67", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "select_ln42_67", "role": "default" }} , 
 	{ "name": "select_ln42_69", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "select_ln42_69", "role": "default" }} , 
 	{ "name": "select_ln42_72", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "select_ln42_72", "role": "default" }} , 
 	{ "name": "select_ln42_75", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "select_ln42_75", "role": "default" }} , 
 	{ "name": "select_ln42_16", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "select_ln42_16", "role": "default" }} , 
 	{ "name": "select_ln42_13", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "select_ln42_13", "role": "default" }} , 
 	{ "name": "select_ln42_12", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "select_ln42_12", "role": "default" }} , 
 	{ "name": "select_ln42_10", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "select_ln42_10", "role": "default" }} , 
 	{ "name": "select_ln42_7", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "select_ln42_7", "role": "default" }} , 
 	{ "name": "select_ln42_5", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "select_ln42_5", "role": "default" }} , 
 	{ "name": "select_ln42_2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "select_ln42_2", "role": "default" }} , 
 	{ "name": "select_ln42_42", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "select_ln42_42", "role": "default" }} , 
 	{ "name": "select_ln42_43", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "select_ln42_43", "role": "default" }} , 
 	{ "name": "select_ln42_45", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "select_ln42_45", "role": "default" }} , 
 	{ "name": "select_ln42_48", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "select_ln42_48", "role": "default" }} , 
 	{ "name": "select_ln42_50", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "select_ln42_50", "role": "default" }} , 
 	{ "name": "select_ln42_53", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "select_ln42_53", "role": "default" }} , 
 	{ "name": "select_ln42_56", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "select_ln42_56", "role": "default" }} , 
 	{ "name": "select_ln42_35", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "select_ln42_35", "role": "default" }} , 
 	{ "name": "select_ln42_32", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "select_ln42_32", "role": "default" }} , 
 	{ "name": "select_ln42_31", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "select_ln42_31", "role": "default" }} , 
 	{ "name": "select_ln42_29", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "select_ln42_29", "role": "default" }} , 
 	{ "name": "select_ln42_26", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "select_ln42_26", "role": "default" }} , 
 	{ "name": "select_ln42_24", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "select_ln42_24", "role": "default" }} , 
 	{ "name": "select_ln42_21", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "select_ln42_21", "role": "default" }} , 
 	{ "name": "survival_path_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "survival_path", "role": "address0" }} , 
 	{ "name": "survival_path_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "survival_path", "role": "ce0" }} , 
 	{ "name": "survival_path_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "survival_path", "role": "q0" }} , 
 	{ "name": "survival_path_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "survival_path", "role": "address1" }} , 
 	{ "name": "survival_path_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "survival_path", "role": "ce1" }} , 
 	{ "name": "survival_path_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "survival_path", "role": "q1" }} , 
 	{ "name": "zext_ln36", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "zext_ln36", "role": "default" }} , 
 	{ "name": "p_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_out", "role": "default" }} , 
 	{ "name": "p_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_out", "role": "ap_vld" }} , 
 	{ "name": "p_out1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_out1", "role": "default" }} , 
 	{ "name": "p_out1_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_out1", "role": "ap_vld" }} , 
 	{ "name": "p_out2", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_out2", "role": "default" }} , 
 	{ "name": "p_out2_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_out2", "role": "ap_vld" }} , 
 	{ "name": "p_out3", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_out3", "role": "default" }} , 
 	{ "name": "p_out3_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_out3", "role": "ap_vld" }} , 
 	{ "name": "p_out4", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_out4", "role": "default" }} , 
 	{ "name": "p_out4_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_out4", "role": "ap_vld" }} , 
 	{ "name": "p_out5", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_out5", "role": "default" }} , 
 	{ "name": "p_out5_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_out5", "role": "ap_vld" }} , 
 	{ "name": "p_out6", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_out6", "role": "default" }} , 
 	{ "name": "p_out6_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_out6", "role": "ap_vld" }} , 
 	{ "name": "p_out7", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_out7", "role": "default" }} , 
 	{ "name": "p_out7_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_out7", "role": "ap_vld" }} , 
 	{ "name": "p_out8", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_out8", "role": "default" }} , 
 	{ "name": "p_out8_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_out8", "role": "ap_vld" }} , 
 	{ "name": "p_out9", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_out9", "role": "default" }} , 
 	{ "name": "p_out9_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_out9", "role": "ap_vld" }} , 
 	{ "name": "p_out10", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_out10", "role": "default" }} , 
 	{ "name": "p_out10_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_out10", "role": "ap_vld" }} , 
 	{ "name": "p_out11", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_out11", "role": "default" }} , 
 	{ "name": "p_out11_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_out11", "role": "ap_vld" }} , 
 	{ "name": "p_out12", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_out12", "role": "default" }} , 
 	{ "name": "p_out12_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_out12", "role": "ap_vld" }} , 
 	{ "name": "p_out13", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_out13", "role": "default" }} , 
 	{ "name": "p_out13_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_out13", "role": "ap_vld" }} , 
 	{ "name": "p_out14", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_out14", "role": "default" }} , 
 	{ "name": "p_out14_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_out14", "role": "ap_vld" }} , 
 	{ "name": "p_out15", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_out15", "role": "default" }} , 
 	{ "name": "p_out15_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_out15", "role": "ap_vld" }} , 
 	{ "name": "p_out16", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_out16", "role": "default" }} , 
 	{ "name": "p_out16_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_out16", "role": "ap_vld" }} , 
 	{ "name": "p_out17", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_out17", "role": "default" }} , 
 	{ "name": "p_out17_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_out17", "role": "ap_vld" }} , 
 	{ "name": "p_out18", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_out18", "role": "default" }} , 
 	{ "name": "p_out18_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_out18", "role": "ap_vld" }} , 
 	{ "name": "p_out19", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_out19", "role": "default" }} , 
 	{ "name": "p_out19_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_out19", "role": "ap_vld" }} , 
 	{ "name": "p_out20", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_out20", "role": "default" }} , 
 	{ "name": "p_out20_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_out20", "role": "ap_vld" }} , 
 	{ "name": "p_out21", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_out21", "role": "default" }} , 
 	{ "name": "p_out21_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_out21", "role": "ap_vld" }} , 
 	{ "name": "p_out22", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_out22", "role": "default" }} , 
 	{ "name": "p_out22_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_out22", "role": "ap_vld" }} , 
 	{ "name": "p_out23", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_out23", "role": "default" }} , 
 	{ "name": "p_out23_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_out23", "role": "ap_vld" }} , 
 	{ "name": "p_out24", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_out24", "role": "default" }} , 
 	{ "name": "p_out24_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_out24", "role": "ap_vld" }} , 
 	{ "name": "p_out25", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_out25", "role": "default" }} , 
 	{ "name": "p_out25_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_out25", "role": "ap_vld" }} , 
 	{ "name": "p_out26", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_out26", "role": "default" }} , 
 	{ "name": "p_out26_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_out26", "role": "ap_vld" }} , 
 	{ "name": "p_out27", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_out27", "role": "default" }} , 
 	{ "name": "p_out27_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_out27", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "KBEST_Pipeline_VITIS_LOOP_48_5",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "9",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "select_ln42_61", "Type" : "None", "Direction" : "I"},
			{"Name" : "select_ln42_62", "Type" : "None", "Direction" : "I"},
			{"Name" : "select_ln42_64", "Type" : "None", "Direction" : "I"},
			{"Name" : "select_ln42_67", "Type" : "None", "Direction" : "I"},
			{"Name" : "select_ln42_69", "Type" : "None", "Direction" : "I"},
			{"Name" : "select_ln42_72", "Type" : "None", "Direction" : "I"},
			{"Name" : "select_ln42_75", "Type" : "None", "Direction" : "I"},
			{"Name" : "select_ln42_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "select_ln42_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "select_ln42_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "select_ln42_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "select_ln42_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "select_ln42_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "select_ln42_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "select_ln42_42", "Type" : "None", "Direction" : "I"},
			{"Name" : "select_ln42_43", "Type" : "None", "Direction" : "I"},
			{"Name" : "select_ln42_45", "Type" : "None", "Direction" : "I"},
			{"Name" : "select_ln42_48", "Type" : "None", "Direction" : "I"},
			{"Name" : "select_ln42_50", "Type" : "None", "Direction" : "I"},
			{"Name" : "select_ln42_53", "Type" : "None", "Direction" : "I"},
			{"Name" : "select_ln42_56", "Type" : "None", "Direction" : "I"},
			{"Name" : "select_ln42_35", "Type" : "None", "Direction" : "I"},
			{"Name" : "select_ln42_32", "Type" : "None", "Direction" : "I"},
			{"Name" : "select_ln42_31", "Type" : "None", "Direction" : "I"},
			{"Name" : "select_ln42_29", "Type" : "None", "Direction" : "I"},
			{"Name" : "select_ln42_26", "Type" : "None", "Direction" : "I"},
			{"Name" : "select_ln42_24", "Type" : "None", "Direction" : "I"},
			{"Name" : "select_ln42_21", "Type" : "None", "Direction" : "I"},
			{"Name" : "survival_path", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "zext_ln36", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out1", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out2", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out3", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out4", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out5", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out6", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out7", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out8", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out9", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out10", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out11", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out12", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out13", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out14", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out15", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out16", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out17", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out18", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out19", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out20", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out21", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out22", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out23", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out24", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out25", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out26", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out27", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_48_5", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	KBEST_Pipeline_VITIS_LOOP_48_5 {
		select_ln42_61 {Type I LastRead 0 FirstWrite -1}
		select_ln42_62 {Type I LastRead 0 FirstWrite -1}
		select_ln42_64 {Type I LastRead 0 FirstWrite -1}
		select_ln42_67 {Type I LastRead 0 FirstWrite -1}
		select_ln42_69 {Type I LastRead 0 FirstWrite -1}
		select_ln42_72 {Type I LastRead 0 FirstWrite -1}
		select_ln42_75 {Type I LastRead 0 FirstWrite -1}
		select_ln42_16 {Type I LastRead 0 FirstWrite -1}
		select_ln42_13 {Type I LastRead 0 FirstWrite -1}
		select_ln42_12 {Type I LastRead 0 FirstWrite -1}
		select_ln42_10 {Type I LastRead 0 FirstWrite -1}
		select_ln42_7 {Type I LastRead 0 FirstWrite -1}
		select_ln42_5 {Type I LastRead 0 FirstWrite -1}
		select_ln42_2 {Type I LastRead 0 FirstWrite -1}
		select_ln42_42 {Type I LastRead 0 FirstWrite -1}
		select_ln42_43 {Type I LastRead 0 FirstWrite -1}
		select_ln42_45 {Type I LastRead 0 FirstWrite -1}
		select_ln42_48 {Type I LastRead 0 FirstWrite -1}
		select_ln42_50 {Type I LastRead 0 FirstWrite -1}
		select_ln42_53 {Type I LastRead 0 FirstWrite -1}
		select_ln42_56 {Type I LastRead 0 FirstWrite -1}
		select_ln42_35 {Type I LastRead 0 FirstWrite -1}
		select_ln42_32 {Type I LastRead 0 FirstWrite -1}
		select_ln42_31 {Type I LastRead 0 FirstWrite -1}
		select_ln42_29 {Type I LastRead 0 FirstWrite -1}
		select_ln42_26 {Type I LastRead 0 FirstWrite -1}
		select_ln42_24 {Type I LastRead 0 FirstWrite -1}
		select_ln42_21 {Type I LastRead 0 FirstWrite -1}
		survival_path {Type I LastRead 2 FirstWrite -1}
		zext_ln36 {Type I LastRead 0 FirstWrite -1}
		p_out {Type O LastRead -1 FirstWrite 1}
		p_out1 {Type O LastRead -1 FirstWrite 1}
		p_out2 {Type O LastRead -1 FirstWrite 1}
		p_out3 {Type O LastRead -1 FirstWrite 1}
		p_out4 {Type O LastRead -1 FirstWrite 1}
		p_out5 {Type O LastRead -1 FirstWrite 1}
		p_out6 {Type O LastRead -1 FirstWrite 1}
		p_out7 {Type O LastRead -1 FirstWrite 1}
		p_out8 {Type O LastRead -1 FirstWrite 1}
		p_out9 {Type O LastRead -1 FirstWrite 1}
		p_out10 {Type O LastRead -1 FirstWrite 1}
		p_out11 {Type O LastRead -1 FirstWrite 1}
		p_out12 {Type O LastRead -1 FirstWrite 1}
		p_out13 {Type O LastRead -1 FirstWrite 1}
		p_out14 {Type O LastRead -1 FirstWrite 1}
		p_out15 {Type O LastRead -1 FirstWrite 1}
		p_out16 {Type O LastRead -1 FirstWrite 1}
		p_out17 {Type O LastRead -1 FirstWrite 1}
		p_out18 {Type O LastRead -1 FirstWrite 1}
		p_out19 {Type O LastRead -1 FirstWrite 1}
		p_out20 {Type O LastRead -1 FirstWrite 1}
		p_out21 {Type O LastRead -1 FirstWrite 1}
		p_out22 {Type O LastRead -1 FirstWrite 1}
		p_out23 {Type O LastRead -1 FirstWrite 1}
		p_out24 {Type O LastRead -1 FirstWrite 1}
		p_out25 {Type O LastRead -1 FirstWrite 1}
		p_out26 {Type O LastRead -1 FirstWrite 1}
		p_out27 {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2", "Max" : "9"}
	, {"Name" : "Interval", "Min" : "2", "Max" : "9"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	select_ln42_61 { ap_none {  { select_ln42_61 in_data 0 32 } } }
	select_ln42_62 { ap_none {  { select_ln42_62 in_data 0 32 } } }
	select_ln42_64 { ap_none {  { select_ln42_64 in_data 0 32 } } }
	select_ln42_67 { ap_none {  { select_ln42_67 in_data 0 32 } } }
	select_ln42_69 { ap_none {  { select_ln42_69 in_data 0 32 } } }
	select_ln42_72 { ap_none {  { select_ln42_72 in_data 0 32 } } }
	select_ln42_75 { ap_none {  { select_ln42_75 in_data 0 32 } } }
	select_ln42_16 { ap_none {  { select_ln42_16 in_data 0 32 } } }
	select_ln42_13 { ap_none {  { select_ln42_13 in_data 0 32 } } }
	select_ln42_12 { ap_none {  { select_ln42_12 in_data 0 32 } } }
	select_ln42_10 { ap_none {  { select_ln42_10 in_data 0 32 } } }
	select_ln42_7 { ap_none {  { select_ln42_7 in_data 0 32 } } }
	select_ln42_5 { ap_none {  { select_ln42_5 in_data 0 32 } } }
	select_ln42_2 { ap_none {  { select_ln42_2 in_data 0 32 } } }
	select_ln42_42 { ap_none {  { select_ln42_42 in_data 0 32 } } }
	select_ln42_43 { ap_none {  { select_ln42_43 in_data 0 32 } } }
	select_ln42_45 { ap_none {  { select_ln42_45 in_data 0 32 } } }
	select_ln42_48 { ap_none {  { select_ln42_48 in_data 0 32 } } }
	select_ln42_50 { ap_none {  { select_ln42_50 in_data 0 32 } } }
	select_ln42_53 { ap_none {  { select_ln42_53 in_data 0 32 } } }
	select_ln42_56 { ap_none {  { select_ln42_56 in_data 0 32 } } }
	select_ln42_35 { ap_none {  { select_ln42_35 in_data 0 32 } } }
	select_ln42_32 { ap_none {  { select_ln42_32 in_data 0 32 } } }
	select_ln42_31 { ap_none {  { select_ln42_31 in_data 0 32 } } }
	select_ln42_29 { ap_none {  { select_ln42_29 in_data 0 32 } } }
	select_ln42_26 { ap_none {  { select_ln42_26 in_data 0 32 } } }
	select_ln42_24 { ap_none {  { select_ln42_24 in_data 0 32 } } }
	select_ln42_21 { ap_none {  { select_ln42_21 in_data 0 32 } } }
	survival_path { ap_memory {  { survival_path_address0 mem_address 1 4 }  { survival_path_ce0 mem_ce 1 1 }  { survival_path_q0 in_data 0 32 }  { survival_path_address1 MemPortADDR2 1 4 }  { survival_path_ce1 MemPortCE2 1 1 }  { survival_path_q1 in_data 0 32 } } }
	zext_ln36 { ap_none {  { zext_ln36 in_data 0 3 } } }
	p_out { ap_vld {  { p_out out_data 1 32 }  { p_out_ap_vld out_vld 1 1 } } }
	p_out1 { ap_vld {  { p_out1 out_data 1 32 }  { p_out1_ap_vld out_vld 1 1 } } }
	p_out2 { ap_vld {  { p_out2 out_data 1 32 }  { p_out2_ap_vld out_vld 1 1 } } }
	p_out3 { ap_vld {  { p_out3 out_data 1 32 }  { p_out3_ap_vld out_vld 1 1 } } }
	p_out4 { ap_vld {  { p_out4 out_data 1 32 }  { p_out4_ap_vld out_vld 1 1 } } }
	p_out5 { ap_vld {  { p_out5 out_data 1 32 }  { p_out5_ap_vld out_vld 1 1 } } }
	p_out6 { ap_vld {  { p_out6 out_data 1 32 }  { p_out6_ap_vld out_vld 1 1 } } }
	p_out7 { ap_vld {  { p_out7 out_data 1 32 }  { p_out7_ap_vld out_vld 1 1 } } }
	p_out8 { ap_vld {  { p_out8 out_data 1 32 }  { p_out8_ap_vld out_vld 1 1 } } }
	p_out9 { ap_vld {  { p_out9 out_data 1 32 }  { p_out9_ap_vld out_vld 1 1 } } }
	p_out10 { ap_vld {  { p_out10 out_data 1 32 }  { p_out10_ap_vld out_vld 1 1 } } }
	p_out11 { ap_vld {  { p_out11 out_data 1 32 }  { p_out11_ap_vld out_vld 1 1 } } }
	p_out12 { ap_vld {  { p_out12 out_data 1 32 }  { p_out12_ap_vld out_vld 1 1 } } }
	p_out13 { ap_vld {  { p_out13 out_data 1 32 }  { p_out13_ap_vld out_vld 1 1 } } }
	p_out14 { ap_vld {  { p_out14 out_data 1 32 }  { p_out14_ap_vld out_vld 1 1 } } }
	p_out15 { ap_vld {  { p_out15 out_data 1 32 }  { p_out15_ap_vld out_vld 1 1 } } }
	p_out16 { ap_vld {  { p_out16 out_data 1 32 }  { p_out16_ap_vld out_vld 1 1 } } }
	p_out17 { ap_vld {  { p_out17 out_data 1 32 }  { p_out17_ap_vld out_vld 1 1 } } }
	p_out18 { ap_vld {  { p_out18 out_data 1 32 }  { p_out18_ap_vld out_vld 1 1 } } }
	p_out19 { ap_vld {  { p_out19 out_data 1 32 }  { p_out19_ap_vld out_vld 1 1 } } }
	p_out20 { ap_vld {  { p_out20 out_data 1 32 }  { p_out20_ap_vld out_vld 1 1 } } }
	p_out21 { ap_vld {  { p_out21 out_data 1 32 }  { p_out21_ap_vld out_vld 1 1 } } }
	p_out22 { ap_vld {  { p_out22 out_data 1 32 }  { p_out22_ap_vld out_vld 1 1 } } }
	p_out23 { ap_vld {  { p_out23 out_data 1 32 }  { p_out23_ap_vld out_vld 1 1 } } }
	p_out24 { ap_vld {  { p_out24 out_data 1 32 }  { p_out24_ap_vld out_vld 1 1 } } }
	p_out25 { ap_vld {  { p_out25 out_data 1 32 }  { p_out25_ap_vld out_vld 1 1 } } }
	p_out26 { ap_vld {  { p_out26 out_data 1 32 }  { p_out26_ap_vld out_vld 1 1 } } }
	p_out27 { ap_vld {  { p_out27 out_data 1 32 }  { p_out27_ap_vld out_vld 1 1 } } }
}

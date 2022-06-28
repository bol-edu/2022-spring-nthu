set moduleName KBEST_Pipeline_VITIS_LOOP_57_7
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
set C_modelName {KBEST_Pipeline_VITIS_LOOP_57_7}
set C_modelType { void 0 }
set C_modelArgList {
	{ zext_ln36 int 3 regular  }
	{ zext_ln712 int 6 regular  }
	{ R_V int 16 regular {array 64 { 1 3 } 1 1 }  }
	{ select_ln42_37 int 32 regular  }
	{ p_reload269 int 32 regular  }
	{ p_reload270 int 32 regular  }
	{ p_reload271 int 32 regular  }
	{ p_reload272 int 32 regular  }
	{ p_reload273 int 32 regular  }
	{ p_reload274 int 32 regular  }
	{ p_reload268 int 32 regular  }
	{ select_ln42_39 int 32 regular  }
	{ p_reload262 int 32 regular  }
	{ p_reload263 int 32 regular  }
	{ p_reload264 int 32 regular  }
	{ p_reload265 int 32 regular  }
	{ p_reload266 int 32 regular  }
	{ p_reload267 int 32 regular  }
	{ p_reload261 int 32 regular  }
	{ select_ln42_18 int 32 regular  }
	{ p_reload255 int 32 regular  }
	{ p_reload256 int 32 regular  }
	{ p_reload257 int 32 regular  }
	{ p_reload258 int 32 regular  }
	{ p_reload259 int 32 regular  }
	{ p_reload260 int 32 regular  }
	{ p_reload254 int 32 regular  }
	{ select_ln42_58 int 32 regular  }
	{ p_reload248 int 32 regular  }
	{ p_reload249 int 32 regular  }
	{ p_reload250 int 32 regular  }
	{ p_reload251 int 32 regular  }
	{ p_reload252 int 32 regular  }
	{ p_reload253 int 32 regular  }
	{ p_reload247 int 32 regular  }
	{ i_27 int 2 regular  }
	{ dist_V_out int 16 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "zext_ln36", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln712", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "R_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "select_ln42_37", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_reload269", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_reload270", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_reload271", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_reload272", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_reload273", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_reload274", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_reload268", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "select_ln42_39", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_reload262", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_reload263", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_reload264", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_reload265", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_reload266", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_reload267", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_reload261", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "select_ln42_18", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_reload255", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_reload256", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_reload257", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_reload258", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_reload259", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_reload260", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_reload254", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "select_ln42_58", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_reload248", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_reload249", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_reload250", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_reload251", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_reload252", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_reload253", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_reload247", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "i_27", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "dist_V_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 46
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ zext_ln36 sc_in sc_lv 3 signal 0 } 
	{ zext_ln712 sc_in sc_lv 6 signal 1 } 
	{ R_V_address0 sc_out sc_lv 6 signal 2 } 
	{ R_V_ce0 sc_out sc_logic 1 signal 2 } 
	{ R_V_q0 sc_in sc_lv 16 signal 2 } 
	{ select_ln42_37 sc_in sc_lv 32 signal 3 } 
	{ p_reload269 sc_in sc_lv 32 signal 4 } 
	{ p_reload270 sc_in sc_lv 32 signal 5 } 
	{ p_reload271 sc_in sc_lv 32 signal 6 } 
	{ p_reload272 sc_in sc_lv 32 signal 7 } 
	{ p_reload273 sc_in sc_lv 32 signal 8 } 
	{ p_reload274 sc_in sc_lv 32 signal 9 } 
	{ p_reload268 sc_in sc_lv 32 signal 10 } 
	{ select_ln42_39 sc_in sc_lv 32 signal 11 } 
	{ p_reload262 sc_in sc_lv 32 signal 12 } 
	{ p_reload263 sc_in sc_lv 32 signal 13 } 
	{ p_reload264 sc_in sc_lv 32 signal 14 } 
	{ p_reload265 sc_in sc_lv 32 signal 15 } 
	{ p_reload266 sc_in sc_lv 32 signal 16 } 
	{ p_reload267 sc_in sc_lv 32 signal 17 } 
	{ p_reload261 sc_in sc_lv 32 signal 18 } 
	{ select_ln42_18 sc_in sc_lv 32 signal 19 } 
	{ p_reload255 sc_in sc_lv 32 signal 20 } 
	{ p_reload256 sc_in sc_lv 32 signal 21 } 
	{ p_reload257 sc_in sc_lv 32 signal 22 } 
	{ p_reload258 sc_in sc_lv 32 signal 23 } 
	{ p_reload259 sc_in sc_lv 32 signal 24 } 
	{ p_reload260 sc_in sc_lv 32 signal 25 } 
	{ p_reload254 sc_in sc_lv 32 signal 26 } 
	{ select_ln42_58 sc_in sc_lv 32 signal 27 } 
	{ p_reload248 sc_in sc_lv 32 signal 28 } 
	{ p_reload249 sc_in sc_lv 32 signal 29 } 
	{ p_reload250 sc_in sc_lv 32 signal 30 } 
	{ p_reload251 sc_in sc_lv 32 signal 31 } 
	{ p_reload252 sc_in sc_lv 32 signal 32 } 
	{ p_reload253 sc_in sc_lv 32 signal 33 } 
	{ p_reload247 sc_in sc_lv 32 signal 34 } 
	{ i_27 sc_in sc_lv 2 signal 35 } 
	{ dist_V_out sc_out sc_lv 16 signal 36 } 
	{ dist_V_out_ap_vld sc_out sc_logic 1 outvld 36 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "zext_ln36", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "zext_ln36", "role": "default" }} , 
 	{ "name": "zext_ln712", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "zext_ln712", "role": "default" }} , 
 	{ "name": "R_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "R_V", "role": "address0" }} , 
 	{ "name": "R_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "R_V", "role": "ce0" }} , 
 	{ "name": "R_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "R_V", "role": "q0" }} , 
 	{ "name": "select_ln42_37", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "select_ln42_37", "role": "default" }} , 
 	{ "name": "p_reload269", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_reload269", "role": "default" }} , 
 	{ "name": "p_reload270", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_reload270", "role": "default" }} , 
 	{ "name": "p_reload271", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_reload271", "role": "default" }} , 
 	{ "name": "p_reload272", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_reload272", "role": "default" }} , 
 	{ "name": "p_reload273", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_reload273", "role": "default" }} , 
 	{ "name": "p_reload274", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_reload274", "role": "default" }} , 
 	{ "name": "p_reload268", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_reload268", "role": "default" }} , 
 	{ "name": "select_ln42_39", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "select_ln42_39", "role": "default" }} , 
 	{ "name": "p_reload262", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_reload262", "role": "default" }} , 
 	{ "name": "p_reload263", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_reload263", "role": "default" }} , 
 	{ "name": "p_reload264", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_reload264", "role": "default" }} , 
 	{ "name": "p_reload265", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_reload265", "role": "default" }} , 
 	{ "name": "p_reload266", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_reload266", "role": "default" }} , 
 	{ "name": "p_reload267", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_reload267", "role": "default" }} , 
 	{ "name": "p_reload261", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_reload261", "role": "default" }} , 
 	{ "name": "select_ln42_18", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "select_ln42_18", "role": "default" }} , 
 	{ "name": "p_reload255", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_reload255", "role": "default" }} , 
 	{ "name": "p_reload256", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_reload256", "role": "default" }} , 
 	{ "name": "p_reload257", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_reload257", "role": "default" }} , 
 	{ "name": "p_reload258", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_reload258", "role": "default" }} , 
 	{ "name": "p_reload259", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_reload259", "role": "default" }} , 
 	{ "name": "p_reload260", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_reload260", "role": "default" }} , 
 	{ "name": "p_reload254", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_reload254", "role": "default" }} , 
 	{ "name": "select_ln42_58", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "select_ln42_58", "role": "default" }} , 
 	{ "name": "p_reload248", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_reload248", "role": "default" }} , 
 	{ "name": "p_reload249", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_reload249", "role": "default" }} , 
 	{ "name": "p_reload250", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_reload250", "role": "default" }} , 
 	{ "name": "p_reload251", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_reload251", "role": "default" }} , 
 	{ "name": "p_reload252", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_reload252", "role": "default" }} , 
 	{ "name": "p_reload253", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_reload253", "role": "default" }} , 
 	{ "name": "p_reload247", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_reload247", "role": "default" }} , 
 	{ "name": "i_27", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "i_27", "role": "default" }} , 
 	{ "name": "dist_V_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "dist_V_out", "role": "default" }} , 
 	{ "name": "dist_V_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "dist_V_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6"],
		"CDFG" : "KBEST_Pipeline_VITIS_LOOP_57_7",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "zext_ln36", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln712", "Type" : "None", "Direction" : "I"},
			{"Name" : "R_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "select_ln42_37", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload269", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload270", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload271", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload272", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload273", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload274", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload268", "Type" : "None", "Direction" : "I"},
			{"Name" : "select_ln42_39", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload262", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload263", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload264", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload265", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload266", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload267", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload261", "Type" : "None", "Direction" : "I"},
			{"Name" : "select_ln42_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload255", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload256", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload257", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload258", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload259", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload260", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload254", "Type" : "None", "Direction" : "I"},
			{"Name" : "select_ln42_58", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload248", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload249", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload250", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload251", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload252", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload253", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload247", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_27", "Type" : "None", "Direction" : "I"},
			{"Name" : "dist_V_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_57_7", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_864_32_1_1_U1164", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_864_32_1_1_U1165", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_864_32_1_1_U1166", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_864_32_1_1_U1167", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_32_1_1_U1168", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	KBEST_Pipeline_VITIS_LOOP_57_7 {
		zext_ln36 {Type I LastRead 0 FirstWrite -1}
		zext_ln712 {Type I LastRead 0 FirstWrite -1}
		R_V {Type I LastRead 1 FirstWrite -1}
		select_ln42_37 {Type I LastRead 0 FirstWrite -1}
		p_reload269 {Type I LastRead 0 FirstWrite -1}
		p_reload270 {Type I LastRead 0 FirstWrite -1}
		p_reload271 {Type I LastRead 0 FirstWrite -1}
		p_reload272 {Type I LastRead 0 FirstWrite -1}
		p_reload273 {Type I LastRead 0 FirstWrite -1}
		p_reload274 {Type I LastRead 0 FirstWrite -1}
		p_reload268 {Type I LastRead 0 FirstWrite -1}
		select_ln42_39 {Type I LastRead 0 FirstWrite -1}
		p_reload262 {Type I LastRead 0 FirstWrite -1}
		p_reload263 {Type I LastRead 0 FirstWrite -1}
		p_reload264 {Type I LastRead 0 FirstWrite -1}
		p_reload265 {Type I LastRead 0 FirstWrite -1}
		p_reload266 {Type I LastRead 0 FirstWrite -1}
		p_reload267 {Type I LastRead 0 FirstWrite -1}
		p_reload261 {Type I LastRead 0 FirstWrite -1}
		select_ln42_18 {Type I LastRead 0 FirstWrite -1}
		p_reload255 {Type I LastRead 0 FirstWrite -1}
		p_reload256 {Type I LastRead 0 FirstWrite -1}
		p_reload257 {Type I LastRead 0 FirstWrite -1}
		p_reload258 {Type I LastRead 0 FirstWrite -1}
		p_reload259 {Type I LastRead 0 FirstWrite -1}
		p_reload260 {Type I LastRead 0 FirstWrite -1}
		p_reload254 {Type I LastRead 0 FirstWrite -1}
		select_ln42_58 {Type I LastRead 0 FirstWrite -1}
		p_reload248 {Type I LastRead 0 FirstWrite -1}
		p_reload249 {Type I LastRead 0 FirstWrite -1}
		p_reload250 {Type I LastRead 0 FirstWrite -1}
		p_reload251 {Type I LastRead 0 FirstWrite -1}
		p_reload252 {Type I LastRead 0 FirstWrite -1}
		p_reload253 {Type I LastRead 0 FirstWrite -1}
		p_reload247 {Type I LastRead 0 FirstWrite -1}
		i_27 {Type I LastRead 0 FirstWrite -1}
		dist_V_out {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3", "Max" : "10"}
	, {"Name" : "Interval", "Min" : "3", "Max" : "10"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	zext_ln36 { ap_none {  { zext_ln36 in_data 0 3 } } }
	zext_ln712 { ap_none {  { zext_ln712 in_data 0 6 } } }
	R_V { ap_memory {  { R_V_address0 mem_address 1 6 }  { R_V_ce0 mem_ce 1 1 }  { R_V_q0 in_data 0 16 } } }
	select_ln42_37 { ap_none {  { select_ln42_37 in_data 0 32 } } }
	p_reload269 { ap_none {  { p_reload269 in_data 0 32 } } }
	p_reload270 { ap_none {  { p_reload270 in_data 0 32 } } }
	p_reload271 { ap_none {  { p_reload271 in_data 0 32 } } }
	p_reload272 { ap_none {  { p_reload272 in_data 0 32 } } }
	p_reload273 { ap_none {  { p_reload273 in_data 0 32 } } }
	p_reload274 { ap_none {  { p_reload274 in_data 0 32 } } }
	p_reload268 { ap_none {  { p_reload268 in_data 0 32 } } }
	select_ln42_39 { ap_none {  { select_ln42_39 in_data 0 32 } } }
	p_reload262 { ap_none {  { p_reload262 in_data 0 32 } } }
	p_reload263 { ap_none {  { p_reload263 in_data 0 32 } } }
	p_reload264 { ap_none {  { p_reload264 in_data 0 32 } } }
	p_reload265 { ap_none {  { p_reload265 in_data 0 32 } } }
	p_reload266 { ap_none {  { p_reload266 in_data 0 32 } } }
	p_reload267 { ap_none {  { p_reload267 in_data 0 32 } } }
	p_reload261 { ap_none {  { p_reload261 in_data 0 32 } } }
	select_ln42_18 { ap_none {  { select_ln42_18 in_data 0 32 } } }
	p_reload255 { ap_none {  { p_reload255 in_data 0 32 } } }
	p_reload256 { ap_none {  { p_reload256 in_data 0 32 } } }
	p_reload257 { ap_none {  { p_reload257 in_data 0 32 } } }
	p_reload258 { ap_none {  { p_reload258 in_data 0 32 } } }
	p_reload259 { ap_none {  { p_reload259 in_data 0 32 } } }
	p_reload260 { ap_none {  { p_reload260 in_data 0 32 } } }
	p_reload254 { ap_none {  { p_reload254 in_data 0 32 } } }
	select_ln42_58 { ap_none {  { select_ln42_58 in_data 0 32 } } }
	p_reload248 { ap_none {  { p_reload248 in_data 0 32 } } }
	p_reload249 { ap_none {  { p_reload249 in_data 0 32 } } }
	p_reload250 { ap_none {  { p_reload250 in_data 0 32 } } }
	p_reload251 { ap_none {  { p_reload251 in_data 0 32 } } }
	p_reload252 { ap_none {  { p_reload252 in_data 0 32 } } }
	p_reload253 { ap_none {  { p_reload253 in_data 0 32 } } }
	p_reload247 { ap_none {  { p_reload247 in_data 0 32 } } }
	i_27 { ap_none {  { i_27 in_data 0 2 } } }
	dist_V_out { ap_vld {  { dist_V_out out_data 1 16 }  { dist_V_out_ap_vld out_vld 1 1 } } }
}

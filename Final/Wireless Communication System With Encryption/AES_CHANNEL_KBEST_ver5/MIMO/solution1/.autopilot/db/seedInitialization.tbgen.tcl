set moduleName seedInitialization
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {seedInitialization}
set C_modelType { int 128 }
set C_modelArgList {
	{ this_mt_odd_0 int 32 regular {array 512 { 2 1 } 1 1 }  }
	{ this_mt_odd_1 int 32 regular {array 512 { 0 3 } 0 1 }  }
	{ this_mt_even_0 int 32 regular {array 512 { 2 3 } 1 1 }  }
	{ this_mt_even_1 int 32 regular {array 512 { 0 3 } 0 1 }  }
	{ seed int 6 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "this_mt_odd_0", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "this_mt_odd_1", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "this_mt_even_0", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "this_mt_even_1", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "seed", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 128} ]}
# RTL Port declarations: 
set portNum 32
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ this_mt_odd_0_address0 sc_out sc_lv 9 signal 0 } 
	{ this_mt_odd_0_ce0 sc_out sc_logic 1 signal 0 } 
	{ this_mt_odd_0_we0 sc_out sc_logic 1 signal 0 } 
	{ this_mt_odd_0_d0 sc_out sc_lv 32 signal 0 } 
	{ this_mt_odd_0_q0 sc_in sc_lv 32 signal 0 } 
	{ this_mt_odd_0_address1 sc_out sc_lv 9 signal 0 } 
	{ this_mt_odd_0_ce1 sc_out sc_logic 1 signal 0 } 
	{ this_mt_odd_0_q1 sc_in sc_lv 32 signal 0 } 
	{ this_mt_odd_1_address0 sc_out sc_lv 9 signal 1 } 
	{ this_mt_odd_1_ce0 sc_out sc_logic 1 signal 1 } 
	{ this_mt_odd_1_we0 sc_out sc_logic 1 signal 1 } 
	{ this_mt_odd_1_d0 sc_out sc_lv 32 signal 1 } 
	{ this_mt_even_0_address0 sc_out sc_lv 9 signal 2 } 
	{ this_mt_even_0_ce0 sc_out sc_logic 1 signal 2 } 
	{ this_mt_even_0_we0 sc_out sc_logic 1 signal 2 } 
	{ this_mt_even_0_d0 sc_out sc_lv 32 signal 2 } 
	{ this_mt_even_0_q0 sc_in sc_lv 32 signal 2 } 
	{ this_mt_even_1_address0 sc_out sc_lv 9 signal 3 } 
	{ this_mt_even_1_ce0 sc_out sc_logic 1 signal 3 } 
	{ this_mt_even_1_we0 sc_out sc_logic 1 signal 3 } 
	{ this_mt_even_1_d0 sc_out sc_lv 32 signal 3 } 
	{ seed sc_in sc_lv 6 signal 4 } 
	{ ap_return_0 sc_out sc_lv 32 signal -1 } 
	{ ap_return_1 sc_out sc_lv 32 signal -1 } 
	{ ap_return_2 sc_out sc_lv 32 signal -1 } 
	{ ap_return_3 sc_out sc_lv 32 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "this_mt_odd_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "this_mt_odd_0", "role": "address0" }} , 
 	{ "name": "this_mt_odd_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "this_mt_odd_0", "role": "ce0" }} , 
 	{ "name": "this_mt_odd_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "this_mt_odd_0", "role": "we0" }} , 
 	{ "name": "this_mt_odd_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "this_mt_odd_0", "role": "d0" }} , 
 	{ "name": "this_mt_odd_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "this_mt_odd_0", "role": "q0" }} , 
 	{ "name": "this_mt_odd_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "this_mt_odd_0", "role": "address1" }} , 
 	{ "name": "this_mt_odd_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "this_mt_odd_0", "role": "ce1" }} , 
 	{ "name": "this_mt_odd_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "this_mt_odd_0", "role": "q1" }} , 
 	{ "name": "this_mt_odd_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "this_mt_odd_1", "role": "address0" }} , 
 	{ "name": "this_mt_odd_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "this_mt_odd_1", "role": "ce0" }} , 
 	{ "name": "this_mt_odd_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "this_mt_odd_1", "role": "we0" }} , 
 	{ "name": "this_mt_odd_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "this_mt_odd_1", "role": "d0" }} , 
 	{ "name": "this_mt_even_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "this_mt_even_0", "role": "address0" }} , 
 	{ "name": "this_mt_even_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "this_mt_even_0", "role": "ce0" }} , 
 	{ "name": "this_mt_even_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "this_mt_even_0", "role": "we0" }} , 
 	{ "name": "this_mt_even_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "this_mt_even_0", "role": "d0" }} , 
 	{ "name": "this_mt_even_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "this_mt_even_0", "role": "q0" }} , 
 	{ "name": "this_mt_even_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "this_mt_even_1", "role": "address0" }} , 
 	{ "name": "this_mt_even_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "this_mt_even_1", "role": "ce0" }} , 
 	{ "name": "this_mt_even_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "this_mt_even_1", "role": "we0" }} , 
 	{ "name": "this_mt_even_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "this_mt_even_1", "role": "d0" }} , 
 	{ "name": "seed", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "seed", "role": "default" }} , 
 	{ "name": "ap_return_0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_0", "role": "default" }} , 
 	{ "name": "ap_return_1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_1", "role": "default" }} , 
 	{ "name": "ap_return_2", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_2", "role": "default" }} , 
 	{ "name": "ap_return_3", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_3", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "seedInitialization",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "629", "EstimateLatencyMax" : "629",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "this_mt_odd_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_94", "Port" : "this_mt_odd_0", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "this_mt_odd_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_94", "Port" : "this_mt_odd_1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "this_mt_even_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_94", "Port" : "this_mt_even_0", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "this_mt_even_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_94", "Port" : "this_mt_even_1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "seed", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_94", "Parent" : "0", "Child" : ["2", "3"],
		"CDFG" : "seedInitialization_Pipeline_SEED_INIT_LOOP",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "625", "EstimateLatencyMax" : "625",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "zext_ln610", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_mt_even_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "this_mt_even_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "this_mt_odd_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "this_mt_odd_1", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "SEED_INIT_LOOP", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_94.mul_32s_32ns_32_1_1_U66", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_94.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	seedInitialization {
		this_mt_odd_0 {Type IO LastRead 4 FirstWrite 1}
		this_mt_odd_1 {Type O LastRead -1 FirstWrite 1}
		this_mt_even_0 {Type IO LastRead 3 FirstWrite 0}
		this_mt_even_1 {Type O LastRead -1 FirstWrite 0}
		seed {Type I LastRead 0 FirstWrite -1}}
	seedInitialization_Pipeline_SEED_INIT_LOOP {
		zext_ln610 {Type I LastRead 0 FirstWrite -1}
		this_mt_even_0 {Type O LastRead -1 FirstWrite 1}
		this_mt_even_1 {Type O LastRead -1 FirstWrite 1}
		this_mt_odd_0 {Type O LastRead -1 FirstWrite 1}
		this_mt_odd_1 {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "629", "Max" : "629"}
	, {"Name" : "Interval", "Min" : "629", "Max" : "629"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	this_mt_odd_0 { ap_memory {  { this_mt_odd_0_address0 mem_address 1 9 }  { this_mt_odd_0_ce0 mem_ce 1 1 }  { this_mt_odd_0_we0 mem_we 1 1 }  { this_mt_odd_0_d0 mem_din 1 32 }  { this_mt_odd_0_q0 in_data 0 32 }  { this_mt_odd_0_address1 MemPortADDR2 1 9 }  { this_mt_odd_0_ce1 MemPortCE2 1 1 }  { this_mt_odd_0_q1 in_data 0 32 } } }
	this_mt_odd_1 { ap_memory {  { this_mt_odd_1_address0 mem_address 1 9 }  { this_mt_odd_1_ce0 mem_ce 1 1 }  { this_mt_odd_1_we0 mem_we 1 1 }  { this_mt_odd_1_d0 mem_din 1 32 } } }
	this_mt_even_0 { ap_memory {  { this_mt_even_0_address0 mem_address 1 9 }  { this_mt_even_0_ce0 mem_ce 1 1 }  { this_mt_even_0_we0 mem_we 1 1 }  { this_mt_even_0_d0 mem_din 1 32 }  { this_mt_even_0_q0 in_data 0 32 } } }
	this_mt_even_1 { ap_memory {  { this_mt_even_1_address0 mem_address 1 9 }  { this_mt_even_1_ce0 mem_ce 1 1 }  { this_mt_even_1_we0 mem_we 1 1 }  { this_mt_even_1_d0 mem_din 1 32 } } }
	seed { ap_none {  { seed in_data 0 6 } } }
}

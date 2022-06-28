set moduleName extendKey
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
set C_modelName {extendKey}
set C_modelType { void 0 }
set C_modelArgList {
	{ key int 8 regular {array 16 { 1 1 } 1 1 }  }
	{ w int 32 regular {array 44 { 2 2 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "key", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "w", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ key_address0 sc_out sc_lv 4 signal 0 } 
	{ key_ce0 sc_out sc_logic 1 signal 0 } 
	{ key_q0 sc_in sc_lv 8 signal 0 } 
	{ key_address1 sc_out sc_lv 4 signal 0 } 
	{ key_ce1 sc_out sc_logic 1 signal 0 } 
	{ key_q1 sc_in sc_lv 8 signal 0 } 
	{ w_address0 sc_out sc_lv 6 signal 1 } 
	{ w_ce0 sc_out sc_logic 1 signal 1 } 
	{ w_we0 sc_out sc_logic 1 signal 1 } 
	{ w_d0 sc_out sc_lv 32 signal 1 } 
	{ w_q0 sc_in sc_lv 32 signal 1 } 
	{ w_address1 sc_out sc_lv 6 signal 1 } 
	{ w_ce1 sc_out sc_logic 1 signal 1 } 
	{ w_we1 sc_out sc_logic 1 signal 1 } 
	{ w_d1 sc_out sc_lv 32 signal 1 } 
	{ w_q1 sc_in sc_lv 32 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "key_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "key", "role": "address0" }} , 
 	{ "name": "key_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "key", "role": "ce0" }} , 
 	{ "name": "key_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "key", "role": "q0" }} , 
 	{ "name": "key_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "key", "role": "address1" }} , 
 	{ "name": "key_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "key", "role": "ce1" }} , 
 	{ "name": "key_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "key", "role": "q1" }} , 
 	{ "name": "w_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "w", "role": "address0" }} , 
 	{ "name": "w_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w", "role": "ce0" }} , 
 	{ "name": "w_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w", "role": "we0" }} , 
 	{ "name": "w_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w", "role": "d0" }} , 
 	{ "name": "w_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w", "role": "q0" }} , 
 	{ "name": "w_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "w", "role": "address1" }} , 
 	{ "name": "w_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w", "role": "ce1" }} , 
 	{ "name": "w_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w", "role": "we1" }} , 
 	{ "name": "w_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w", "role": "d1" }} , 
 	{ "name": "w_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "3"],
		"CDFG" : "extendKey",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "255", "EstimateLatencyMax" : "255",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "key", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_extendKey_Pipeline_extendKey_label5_fu_12", "Port" : "key", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "w", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_extendKey_Pipeline_extendKey_label5_fu_12", "Port" : "w", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "3", "SubInstance" : "grp_extendKey_Pipeline_extendKey_label0_fu_20", "Port" : "w", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "S29", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_extendKey_Pipeline_extendKey_label0_fu_20", "Port" : "S29", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "Rcon", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_extendKey_Pipeline_extendKey_label0_fu_20", "Port" : "Rcon", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_extendKey_Pipeline_extendKey_label5_fu_12", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "extendKey_Pipeline_extendKey_label5",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "key", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "extendKey_label5", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_extendKey_Pipeline_extendKey_label5_fu_12.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_extendKey_Pipeline_extendKey_label0_fu_20", "Parent" : "0", "Child" : ["4", "5", "6"],
		"CDFG" : "extendKey_Pipeline_extendKey_label0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "242", "EstimateLatencyMax" : "242",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "w", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "S29", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Rcon", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "extendKey_label0", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_pp0_stage1", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage1_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_extendKey_Pipeline_extendKey_label0_fu_20.S29_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_extendKey_Pipeline_extendKey_label0_fu_20.Rcon_U", "Parent" : "3"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_extendKey_Pipeline_extendKey_label0_fu_20.flow_control_loop_pipe_sequential_init_U", "Parent" : "3"}]}


set ArgLastReadFirstWriteLatency {
	extendKey {
		key {Type I LastRead 2 FirstWrite -1}
		w {Type IO LastRead 2 FirstWrite 2}
		S29 {Type I LastRead -1 FirstWrite -1}
		Rcon {Type I LastRead -1 FirstWrite -1}}
	extendKey_Pipeline_extendKey_label5 {
		key {Type I LastRead 2 FirstWrite -1}
		w {Type O LastRead -1 FirstWrite 2}}
	extendKey_Pipeline_extendKey_label0 {
		w {Type IO LastRead 2 FirstWrite 2}
		S29 {Type I LastRead -1 FirstWrite -1}
		Rcon {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "255", "Max" : "255"}
	, {"Name" : "Interval", "Min" : "255", "Max" : "255"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	key { ap_memory {  { key_address0 mem_address 1 4 }  { key_ce0 mem_ce 1 1 }  { key_q0 mem_dout 0 8 }  { key_address1 MemPortADDR2 1 4 }  { key_ce1 MemPortCE2 1 1 }  { key_q1 MemPortDOUT2 0 8 } } }
	w { ap_memory {  { w_address0 mem_address 1 6 }  { w_ce0 mem_ce 1 1 }  { w_we0 mem_we 1 1 }  { w_d0 mem_din 1 32 }  { w_q0 mem_dout 0 32 }  { w_address1 MemPortADDR2 1 6 }  { w_ce1 MemPortCE2 1 1 }  { w_we1 MemPortWE2 1 1 }  { w_d1 MemPortDIN2 1 32 }  { w_q1 MemPortDOUT2 0 32 } } }
}

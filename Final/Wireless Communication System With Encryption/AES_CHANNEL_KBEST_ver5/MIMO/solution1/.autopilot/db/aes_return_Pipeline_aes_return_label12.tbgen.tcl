set moduleName aes_return_Pipeline_aes_return_label12
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
set C_modelName {aes_return_Pipeline_aes_return_label12}
set C_modelType { void 0 }
set C_modelArgList {
	{ pArray int 32 regular {array 16 { 2 2 } 1 1 }  }
	{ w int 32 regular {array 44 { 1 1 } 1 1 }  }
	{ S int 8 regular {array 256 { 1 } 1 1 } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "pArray", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "w", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "S", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 25
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ pArray_address0 sc_out sc_lv 4 signal 0 } 
	{ pArray_ce0 sc_out sc_logic 1 signal 0 } 
	{ pArray_we0 sc_out sc_logic 1 signal 0 } 
	{ pArray_d0 sc_out sc_lv 32 signal 0 } 
	{ pArray_q0 sc_in sc_lv 32 signal 0 } 
	{ pArray_address1 sc_out sc_lv 4 signal 0 } 
	{ pArray_ce1 sc_out sc_logic 1 signal 0 } 
	{ pArray_we1 sc_out sc_logic 1 signal 0 } 
	{ pArray_d1 sc_out sc_lv 32 signal 0 } 
	{ pArray_q1 sc_in sc_lv 32 signal 0 } 
	{ w_address0 sc_out sc_lv 6 signal 1 } 
	{ w_ce0 sc_out sc_logic 1 signal 1 } 
	{ w_q0 sc_in sc_lv 32 signal 1 } 
	{ w_address1 sc_out sc_lv 6 signal 1 } 
	{ w_ce1 sc_out sc_logic 1 signal 1 } 
	{ w_q1 sc_in sc_lv 32 signal 1 } 
	{ S_address0 sc_out sc_lv 8 signal 2 } 
	{ S_ce0 sc_out sc_logic 1 signal 2 } 
	{ S_q0 sc_in sc_lv 8 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "pArray_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "pArray", "role": "address0" }} , 
 	{ "name": "pArray_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pArray", "role": "ce0" }} , 
 	{ "name": "pArray_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pArray", "role": "we0" }} , 
 	{ "name": "pArray_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pArray", "role": "d0" }} , 
 	{ "name": "pArray_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pArray", "role": "q0" }} , 
 	{ "name": "pArray_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "pArray", "role": "address1" }} , 
 	{ "name": "pArray_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pArray", "role": "ce1" }} , 
 	{ "name": "pArray_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pArray", "role": "we1" }} , 
 	{ "name": "pArray_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pArray", "role": "d1" }} , 
 	{ "name": "pArray_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pArray", "role": "q1" }} , 
 	{ "name": "w_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "w", "role": "address0" }} , 
 	{ "name": "w_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w", "role": "ce0" }} , 
 	{ "name": "w_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w", "role": "q0" }} , 
 	{ "name": "w_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "w", "role": "address1" }} , 
 	{ "name": "w_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w", "role": "ce1" }} , 
 	{ "name": "w_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w", "role": "q1" }} , 
 	{ "name": "S_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "S", "role": "address0" }} , 
 	{ "name": "S_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "S", "role": "ce0" }} , 
 	{ "name": "S_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "S", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5"],
		"CDFG" : "aes_return_Pipeline_aes_return_label12",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "317", "EstimateLatencyMax" : "317",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "pArray", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_addRoundKey_fu_369", "Port" : "array_r", "Inst_start_state" : "20", "Inst_end_state" : "35"}]},
			{"Name" : "w", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_addRoundKey_fu_369", "Port" : "w", "Inst_start_state" : "20", "Inst_end_state" : "35"}]},
			{"Name" : "S", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "aes_return_label12", "PipelineType" : "NotSupport"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_GFMul_fu_342", "Parent" : "0",
		"CDFG" : "GFMul",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "n", "Type" : "None", "Direction" : "I"},
			{"Name" : "s", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_GFMul_fu_349", "Parent" : "0",
		"CDFG" : "GFMul",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "n", "Type" : "None", "Direction" : "I"},
			{"Name" : "s", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_GFMul_fu_356", "Parent" : "0",
		"CDFG" : "GFMul",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "n", "Type" : "None", "Direction" : "I"},
			{"Name" : "s", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_addRoundKey_fu_369", "Parent" : "0",
		"CDFG" : "addRoundKey",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "16",
		"VariableLatency" : "0", "ExactLatency" : "15", "EstimateLatencyMin" : "15", "EstimateLatencyMax" : "15",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "array_r", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "round", "Type" : "None", "Direction" : "I"},
			{"Name" : "w", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	aes_return_Pipeline_aes_return_label12 {
		pArray {Type IO LastRead 8 FirstWrite 5}
		w {Type I LastRead 2 FirstWrite -1}
		S {Type I LastRead 16 FirstWrite -1}}
	GFMul {
		n {Type I LastRead 0 FirstWrite -1}
		s {Type I LastRead 0 FirstWrite -1}}
	GFMul {
		n {Type I LastRead 0 FirstWrite -1}
		s {Type I LastRead 0 FirstWrite -1}}
	GFMul {
		n {Type I LastRead 0 FirstWrite -1}
		s {Type I LastRead 0 FirstWrite -1}}
	addRoundKey {
		array_r {Type IO LastRead 8 FirstWrite 8}
		round {Type I LastRead 0 FirstWrite -1}
		w {Type I LastRead 2 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "317", "Max" : "317"}
	, {"Name" : "Interval", "Min" : "317", "Max" : "317"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	pArray { ap_memory {  { pArray_address0 mem_address 1 4 }  { pArray_ce0 mem_ce 1 1 }  { pArray_we0 mem_we 1 1 }  { pArray_d0 mem_din 1 32 }  { pArray_q0 in_data 0 32 }  { pArray_address1 MemPortADDR2 1 4 }  { pArray_ce1 MemPortCE2 1 1 }  { pArray_we1 MemPortWE2 1 1 }  { pArray_d1 MemPortDIN2 1 32 }  { pArray_q1 in_data 0 32 } } }
	w { ap_memory {  { w_address0 mem_address 1 6 }  { w_ce0 mem_ce 1 1 }  { w_q0 mem_dout 0 32 }  { w_address1 MemPortADDR2 1 6 }  { w_ce1 MemPortCE2 1 1 }  { w_q1 MemPortDOUT2 0 32 } } }
	S { ap_memory {  { S_address0 mem_address 1 8 }  { S_ce0 mem_ce 1 1 }  { S_q0 in_data 0 8 } } }
}

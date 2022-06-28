set moduleName deAes_return_Pipeline_addRoundKey_label0
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
set C_modelName {deAes_return_Pipeline_addRoundKey_label0}
set C_modelType { void 0 }
set C_modelArgList {
	{ cArray int 32 regular {array 16 { 2 2 } 1 1 }  }
	{ w int 32 regular {array 44 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "cArray", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "w", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 19
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ cArray_address0 sc_out sc_lv 4 signal 0 } 
	{ cArray_ce0 sc_out sc_logic 1 signal 0 } 
	{ cArray_we0 sc_out sc_logic 1 signal 0 } 
	{ cArray_d0 sc_out sc_lv 32 signal 0 } 
	{ cArray_q0 sc_in sc_lv 32 signal 0 } 
	{ cArray_address1 sc_out sc_lv 4 signal 0 } 
	{ cArray_ce1 sc_out sc_logic 1 signal 0 } 
	{ cArray_we1 sc_out sc_logic 1 signal 0 } 
	{ cArray_d1 sc_out sc_lv 32 signal 0 } 
	{ cArray_q1 sc_in sc_lv 32 signal 0 } 
	{ w_address0 sc_out sc_lv 6 signal 1 } 
	{ w_ce0 sc_out sc_logic 1 signal 1 } 
	{ w_q0 sc_in sc_lv 32 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "cArray_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "cArray", "role": "address0" }} , 
 	{ "name": "cArray_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cArray", "role": "ce0" }} , 
 	{ "name": "cArray_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cArray", "role": "we0" }} , 
 	{ "name": "cArray_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cArray", "role": "d0" }} , 
 	{ "name": "cArray_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cArray", "role": "q0" }} , 
 	{ "name": "cArray_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "cArray", "role": "address1" }} , 
 	{ "name": "cArray_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cArray", "role": "ce1" }} , 
 	{ "name": "cArray_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cArray", "role": "we1" }} , 
 	{ "name": "cArray_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cArray", "role": "d1" }} , 
 	{ "name": "cArray_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cArray", "role": "q1" }} , 
 	{ "name": "w_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "w", "role": "address0" }} , 
 	{ "name": "w_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w", "role": "ce0" }} , 
 	{ "name": "w_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "deAes_return_Pipeline_addRoundKey_label0",
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
			{"Name" : "cArray", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "w", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "addRoundKey_label0", "PipelineType" : "NotSupport"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	deAes_return_Pipeline_addRoundKey_label0 {
		cArray {Type IO LastRead 2 FirstWrite 2}
		w {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "18", "Max" : "18"}
	, {"Name" : "Interval", "Min" : "18", "Max" : "18"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	cArray { ap_memory {  { cArray_address0 mem_address 1 4 }  { cArray_ce0 mem_ce 1 1 }  { cArray_we0 mem_we 1 1 }  { cArray_d0 mem_din 1 32 }  { cArray_q0 in_data 0 32 }  { cArray_address1 MemPortADDR2 1 4 }  { cArray_ce1 MemPortCE2 1 1 }  { cArray_we1 MemPortWE2 1 1 }  { cArray_d1 MemPortDIN2 1 32 }  { cArray_q1 in_data 0 32 } } }
	w { ap_memory {  { w_address0 mem_address 1 6 }  { w_ce0 mem_ce 1 1 }  { w_q0 in_data 0 32 } } }
}

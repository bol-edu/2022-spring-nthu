set moduleName deAes_return_Pipeline_deAes_return_label22
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
set C_modelName {deAes_return_Pipeline_deAes_return_label22}
set C_modelType { void 0 }
set C_modelArgList {
	{ wArray int 32 regular {array 16 { 2 2 } 1 1 }  }
	{ cArray int 32 regular {array 16 { 2 2 } 1 1 }  }
	{ w int 32 regular {array 44 { 1 1 } 1 1 }  }
	{ S2 int 8 regular {array 256 { 1 } 1 1 } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "wArray", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "cArray", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "w", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "S2", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 35
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ wArray_address0 sc_out sc_lv 4 signal 0 } 
	{ wArray_ce0 sc_out sc_logic 1 signal 0 } 
	{ wArray_we0 sc_out sc_logic 1 signal 0 } 
	{ wArray_d0 sc_out sc_lv 32 signal 0 } 
	{ wArray_q0 sc_in sc_lv 32 signal 0 } 
	{ wArray_address1 sc_out sc_lv 4 signal 0 } 
	{ wArray_ce1 sc_out sc_logic 1 signal 0 } 
	{ wArray_we1 sc_out sc_logic 1 signal 0 } 
	{ wArray_d1 sc_out sc_lv 32 signal 0 } 
	{ wArray_q1 sc_in sc_lv 32 signal 0 } 
	{ cArray_address0 sc_out sc_lv 4 signal 1 } 
	{ cArray_ce0 sc_out sc_logic 1 signal 1 } 
	{ cArray_we0 sc_out sc_logic 1 signal 1 } 
	{ cArray_d0 sc_out sc_lv 32 signal 1 } 
	{ cArray_q0 sc_in sc_lv 32 signal 1 } 
	{ cArray_address1 sc_out sc_lv 4 signal 1 } 
	{ cArray_ce1 sc_out sc_logic 1 signal 1 } 
	{ cArray_we1 sc_out sc_logic 1 signal 1 } 
	{ cArray_d1 sc_out sc_lv 32 signal 1 } 
	{ cArray_q1 sc_in sc_lv 32 signal 1 } 
	{ w_address0 sc_out sc_lv 6 signal 2 } 
	{ w_ce0 sc_out sc_logic 1 signal 2 } 
	{ w_q0 sc_in sc_lv 32 signal 2 } 
	{ w_address1 sc_out sc_lv 6 signal 2 } 
	{ w_ce1 sc_out sc_logic 1 signal 2 } 
	{ w_q1 sc_in sc_lv 32 signal 2 } 
	{ S2_address0 sc_out sc_lv 8 signal 3 } 
	{ S2_ce0 sc_out sc_logic 1 signal 3 } 
	{ S2_q0 sc_in sc_lv 8 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "wArray_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "wArray", "role": "address0" }} , 
 	{ "name": "wArray_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wArray", "role": "ce0" }} , 
 	{ "name": "wArray_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wArray", "role": "we0" }} , 
 	{ "name": "wArray_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "wArray", "role": "d0" }} , 
 	{ "name": "wArray_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "wArray", "role": "q0" }} , 
 	{ "name": "wArray_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "wArray", "role": "address1" }} , 
 	{ "name": "wArray_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wArray", "role": "ce1" }} , 
 	{ "name": "wArray_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wArray", "role": "we1" }} , 
 	{ "name": "wArray_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "wArray", "role": "d1" }} , 
 	{ "name": "wArray_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "wArray", "role": "q1" }} , 
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
 	{ "name": "w_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w", "role": "q0" }} , 
 	{ "name": "w_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "w", "role": "address1" }} , 
 	{ "name": "w_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w", "role": "ce1" }} , 
 	{ "name": "w_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w", "role": "q1" }} , 
 	{ "name": "S2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "S2", "role": "address0" }} , 
 	{ "name": "S2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "S2", "role": "ce0" }} , 
 	{ "name": "S2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "S2", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "7", "13"],
		"CDFG" : "deAes_return_Pipeline_deAes_return_label22",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "452", "EstimateLatencyMax" : "452",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "wArray", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_deMixColumns_fu_542", "Port" : "array_r", "Inst_start_state" : "10", "Inst_end_state" : "25"}]},
			{"Name" : "cArray", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_deMixColumns_fu_548", "Port" : "array_r", "Inst_start_state" : "19", "Inst_end_state" : "34"}]},
			{"Name" : "w", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "S2", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "deAes_return_label22", "PipelineType" : "NotSupport"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_deMixColumns_fu_542", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6"],
		"CDFG" : "deMixColumns",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "16",
		"VariableLatency" : "0", "ExactLatency" : "15", "EstimateLatencyMin" : "15", "EstimateLatencyMax" : "15",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "array_r", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_deMixColumns_fu_542.grp_GFMul_fu_197", "Parent" : "1",
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
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_deMixColumns_fu_542.grp_GFMul_fu_205", "Parent" : "1",
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
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_deMixColumns_fu_542.grp_GFMul_fu_213", "Parent" : "1",
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
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_deMixColumns_fu_542.grp_GFMul_fu_221", "Parent" : "1",
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
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_deMixColumns_fu_542.grp_GFMul_fu_229", "Parent" : "1",
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
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_deMixColumns_fu_548", "Parent" : "0", "Child" : ["8", "9", "10", "11", "12"],
		"CDFG" : "deMixColumns",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "16",
		"VariableLatency" : "0", "ExactLatency" : "15", "EstimateLatencyMin" : "15", "EstimateLatencyMax" : "15",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "array_r", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_deMixColumns_fu_548.grp_GFMul_fu_197", "Parent" : "7",
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
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_deMixColumns_fu_548.grp_GFMul_fu_205", "Parent" : "7",
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
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_deMixColumns_fu_548.grp_GFMul_fu_213", "Parent" : "7",
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
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_deMixColumns_fu_548.grp_GFMul_fu_221", "Parent" : "7",
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
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_deMixColumns_fu_548.grp_GFMul_fu_229", "Parent" : "7",
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
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	deAes_return_Pipeline_deAes_return_label22 {
		wArray {Type IO LastRead 33 FirstWrite 1}
		cArray {Type IO LastRead 42 FirstWrite 8}
		w {Type I LastRead 2 FirstWrite -1}
		S2 {Type I LastRead 16 FirstWrite -1}}
	deMixColumns {
		array_r {Type IO LastRead 8 FirstWrite 8}}
	GFMul {
		n {Type I LastRead 0 FirstWrite -1}
		s {Type I LastRead 0 FirstWrite -1}}
	GFMul {
		n {Type I LastRead 0 FirstWrite -1}
		s {Type I LastRead 0 FirstWrite -1}}
	GFMul {
		n {Type I LastRead 0 FirstWrite -1}
		s {Type I LastRead 0 FirstWrite -1}}
	GFMul {
		n {Type I LastRead 0 FirstWrite -1}
		s {Type I LastRead 0 FirstWrite -1}}
	GFMul {
		n {Type I LastRead 0 FirstWrite -1}
		s {Type I LastRead 0 FirstWrite -1}}
	deMixColumns {
		array_r {Type IO LastRead 8 FirstWrite 8}}
	GFMul {
		n {Type I LastRead 0 FirstWrite -1}
		s {Type I LastRead 0 FirstWrite -1}}
	GFMul {
		n {Type I LastRead 0 FirstWrite -1}
		s {Type I LastRead 0 FirstWrite -1}}
	GFMul {
		n {Type I LastRead 0 FirstWrite -1}
		s {Type I LastRead 0 FirstWrite -1}}
	GFMul {
		n {Type I LastRead 0 FirstWrite -1}
		s {Type I LastRead 0 FirstWrite -1}}
	GFMul {
		n {Type I LastRead 0 FirstWrite -1}
		s {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "452", "Max" : "452"}
	, {"Name" : "Interval", "Min" : "452", "Max" : "452"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	wArray { ap_memory {  { wArray_address0 mem_address 1 4 }  { wArray_ce0 mem_ce 1 1 }  { wArray_we0 mem_we 1 1 }  { wArray_d0 mem_din 1 32 }  { wArray_q0 mem_dout 0 32 }  { wArray_address1 MemPortADDR2 1 4 }  { wArray_ce1 MemPortCE2 1 1 }  { wArray_we1 MemPortWE2 1 1 }  { wArray_d1 MemPortDIN2 1 32 }  { wArray_q1 MemPortDOUT2 0 32 } } }
	cArray { ap_memory {  { cArray_address0 mem_address 1 4 }  { cArray_ce0 mem_ce 1 1 }  { cArray_we0 mem_we 1 1 }  { cArray_d0 mem_din 1 32 }  { cArray_q0 in_data 0 32 }  { cArray_address1 MemPortADDR2 1 4 }  { cArray_ce1 MemPortCE2 1 1 }  { cArray_we1 MemPortWE2 1 1 }  { cArray_d1 MemPortDIN2 1 32 }  { cArray_q1 in_data 0 32 } } }
	w { ap_memory {  { w_address0 mem_address 1 6 }  { w_ce0 mem_ce 1 1 }  { w_q0 in_data 0 32 }  { w_address1 MemPortADDR2 1 6 }  { w_ce1 MemPortCE2 1 1 }  { w_q1 in_data 0 32 } } }
	S2 { ap_memory {  { S2_address0 mem_address 1 8 }  { S2_ce0 mem_ce 1 1 }  { S2_q0 in_data 0 8 } } }
}

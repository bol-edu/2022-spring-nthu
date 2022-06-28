set moduleName Rayleigh_1
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
set C_modelName {Rayleigh.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ H_real int 16 regular {fifo 1 volatile } {global 1}  }
	{ H_imag int 16 regular {fifo 1 volatile } {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "H_real", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "H_imag", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ start_full_n sc_in sc_logic 1 signal -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ start_out sc_out sc_logic 1 signal -1 } 
	{ start_write sc_out sc_logic 1 signal -1 } 
	{ H_real_din sc_out sc_lv 16 signal 0 } 
	{ H_real_full_n sc_in sc_logic 1 signal 0 } 
	{ H_real_write sc_out sc_logic 1 signal 0 } 
	{ H_imag_din sc_out sc_lv 16 signal 1 } 
	{ H_imag_full_n sc_in sc_logic 1 signal 1 } 
	{ H_imag_write sc_out sc_logic 1 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "start_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_full_n", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }} , 
 	{ "name": "H_real_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "H_real", "role": "din" }} , 
 	{ "name": "H_real_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "H_real", "role": "full_n" }} , 
 	{ "name": "H_real_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "H_real", "role": "write" }} , 
 	{ "name": "H_imag_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "H_imag", "role": "din" }} , 
 	{ "name": "H_imag_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "H_imag", "role": "full_n" }} , 
 	{ "name": "H_imag_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "H_imag", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40"],
		"CDFG" : "Rayleigh_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "711", "EstimateLatencyMax" : "711",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "H_real", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "H_real_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "H_imag", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "H_imag_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_21_1", "PipelineType" : "pipeline",
				"LoopDec" : {"FSMBitwidth" : "5", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter24", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "PreState" : ["ap_ST_fsm_state2"], "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter24", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "PostState" : ["ap_ST_fsm_state53"]}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.rngMT19937ICN_uniformRNG_mt_odd_0_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.rngMT19937ICN_1_i_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.rngMT19937ICN_uniformRNG_mt_even_0_V_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.rngMT19937ICN_3_i_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_seedInitialization_fu_452", "Parent" : "0", "Child" : ["6"],
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
					{"ID" : "6", "SubInstance" : "grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_94", "Port" : "this_mt_odd_0", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "this_mt_odd_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_94", "Port" : "this_mt_odd_1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "this_mt_even_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_94", "Port" : "this_mt_even_0", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "this_mt_even_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_94", "Port" : "this_mt_even_1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "seed", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seedInitialization_fu_452.grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_94", "Parent" : "5", "Child" : ["7", "8"],
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
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seedInitialization_fu_452.grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_94.mul_32s_32ns_32_1_1_U66", "Parent" : "6"},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seedInitialization_fu_452.grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_94.flow_control_loop_pipe_sequential_init_U", "Parent" : "6"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dadd_64ns_64ns_64_2_no_dsp_1_U78", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dsub_64ns_64ns_64_2_no_dsp_1_U79", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dadd_64ns_64ns_64_2_no_dsp_1_U80", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dadd_64ns_64ns_64_2_no_dsp_1_U81", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dadd_64ns_64ns_64_2_no_dsp_1_U82", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dadd_64ns_64ns_64_2_no_dsp_1_U83", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dadd_64ns_64ns_64_2_no_dsp_1_U84", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dadd_64ns_64ns_64_2_no_dsp_1_U85", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dadd_64ns_64ns_64_2_no_dsp_1_U86", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dadd_64ns_64ns_64_2_no_dsp_1_U87", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dadd_64ns_64ns_64_2_no_dsp_1_U88", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dadd_64ns_64ns_64_2_no_dsp_1_U89", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dmul_64ns_64ns_64_2_med_dsp_1_U90", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dmul_64ns_64ns_64_2_med_dsp_1_U91", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dmul_64ns_64ns_64_2_med_dsp_1_U92", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dmul_64ns_64ns_64_2_med_dsp_1_U93", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dmul_64ns_64ns_64_2_med_dsp_1_U94", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dmul_64ns_64ns_64_2_med_dsp_1_U95", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dmul_64ns_64ns_64_2_med_dsp_1_U96", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dmul_64ns_64ns_64_2_med_dsp_1_U97", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dmul_64ns_64ns_64_2_med_dsp_1_U98", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dmul_64ns_64ns_64_2_med_dsp_1_U99", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dmul_64ns_64ns_64_2_med_dsp_1_U100", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dmul_64ns_64ns_64_2_med_dsp_1_U101", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dmul_64ns_64ns_64_2_med_dsp_1_U102", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ddiv_64ns_64ns_64_7_no_dsp_1_U103", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dcmp_64ns_64ns_1_1_no_dsp_1_U104", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dcmp_64ns_64ns_1_1_no_dsp_1_U105", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dsqrt_64ns_64ns_64_7_no_dsp_1_U106", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dlog_64ns_64ns_64_5_med_dsp_1_U107", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_8ns_24_4_1_U108", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_8ns_24_4_1_U109", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	Rayleigh_1 {
		H_real {Type O LastRead -1 FirstWrite 51}
		H_imag {Type O LastRead -1 FirstWrite 51}}
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
	{"Name" : "Latency", "Min" : "711", "Max" : "711"}
	, {"Name" : "Interval", "Min" : "711", "Max" : "711"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	H_real { ap_fifo {  { H_real_din fifo_data 1 16 }  { H_real_full_n fifo_status 0 1 }  { H_real_write fifo_update 1 1 } } }
	H_imag { ap_fifo {  { H_imag_din fifo_data 1 16 }  { H_imag_full_n fifo_status 0 1 }  { H_imag_write fifo_update 1 1 } } }
}

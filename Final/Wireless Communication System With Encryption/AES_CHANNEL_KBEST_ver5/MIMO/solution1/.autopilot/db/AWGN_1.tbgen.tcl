set moduleName AWGN_1
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
set C_modelName {AWGN.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ SNR int 16 regular {fifo 0}  }
	{ channel_out int 16 regular {fifo 0 volatile } {global 0}  }
	{ noise_out int 16 regular {fifo 1 volatile } {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "SNR", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "channel_out", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "noise_out", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 19
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
	{ SNR_dout sc_in sc_lv 16 signal 0 } 
	{ SNR_empty_n sc_in sc_logic 1 signal 0 } 
	{ SNR_read sc_out sc_logic 1 signal 0 } 
	{ channel_out_dout sc_in sc_lv 16 signal 1 } 
	{ channel_out_empty_n sc_in sc_logic 1 signal 1 } 
	{ channel_out_read sc_out sc_logic 1 signal 1 } 
	{ noise_out_din sc_out sc_lv 16 signal 2 } 
	{ noise_out_full_n sc_in sc_logic 1 signal 2 } 
	{ noise_out_write sc_out sc_logic 1 signal 2 } 
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
 	{ "name": "SNR_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SNR", "role": "dout" }} , 
 	{ "name": "SNR_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SNR", "role": "empty_n" }} , 
 	{ "name": "SNR_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SNR", "role": "read" }} , 
 	{ "name": "channel_out_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "channel_out", "role": "dout" }} , 
 	{ "name": "channel_out_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "channel_out", "role": "empty_n" }} , 
 	{ "name": "channel_out_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "channel_out", "role": "read" }} , 
 	{ "name": "noise_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "noise_out", "role": "din" }} , 
 	{ "name": "noise_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "noise_out", "role": "full_n" }} , 
 	{ "name": "noise_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "noise_out", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "9"],
		"CDFG" : "AWGN_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "810", "EstimateLatencyMax" : "810",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "SNR", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "5", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "SNR_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "channel_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_AWGN_1_Pipeline_VITIS_LOOP_15_1_fu_72", "Port" : "channel_out", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "noise_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_AWGN_1_Pipeline_VITIS_LOOP_15_1_fu_72", "Port" : "noise_out", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.rngMT19937ICN_uniformRNG_mt_odd_0_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.rngMT19937ICN_1_i_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.rngMT19937ICN_uniformRNG_mt_even_0_V_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.rngMT19937ICN_3_i_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_seedInitialization_fu_58", "Parent" : "0", "Child" : ["6"],
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
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seedInitialization_fu_58.grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_94", "Parent" : "5", "Child" : ["7", "8"],
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
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seedInitialization_fu_58.grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_94.mul_32s_32ns_32_1_1_U66", "Parent" : "6"},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seedInitialization_fu_58.grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_94.flow_control_loop_pipe_sequential_init_U", "Parent" : "6"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_AWGN_1_Pipeline_VITIS_LOOP_15_1_fu_72", "Parent" : "0", "Child" : ["10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41"],
		"CDFG" : "AWGN_1_Pipeline_VITIS_LOOP_15_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "178", "EstimateLatencyMax" : "178",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"DependenceCheck" : [
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_88", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_111", "FromFinalSV" : "1", "FromAddress" : "rngMT19937ICN_uniformRNG_mt_odd_0_V_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state2_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_119", "ToInitialSV" : "1", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_119", "ToFinalSV" : "1", "ToAddress" : "rngMT19937ICN_uniformRNG_mt_odd_0_V_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "9", "II" : "1", "Pragma" : "(src/rng.hpp:697:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_90", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_112", "FromFinalSV" : "1", "FromAddress" : "rngMT19937ICN_uniformRNG_mt_even_0_V_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state2_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_114", "ToInitialSV" : "1", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_114", "ToFinalSV" : "1", "ToAddress" : "rngMT19937ICN_uniformRNG_mt_even_0_V_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "9", "II" : "1", "Pragma" : "(src/rng.hpp:694:28)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state2_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_114", "FromInitialSV" : "1", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_114", "FromFinalSV" : "1", "FromAddress" : "rngMT19937ICN_uniformRNG_mt_even_0_V_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_90", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_112", "ToFinalSV" : "1", "ToAddress" : "rngMT19937ICN_uniformRNG_mt_even_0_V_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "9", "II" : "1", "Pragma" : "(src/rng.hpp:694:28)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0", "ap_enable_state2_pp0_iter1_stage0"]},
			{"FromInitialState" : "ap_enable_state2_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_114", "FromInitialSV" : "1", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_114", "FromFinalSV" : "1", "FromAddress" : "rngMT19937ICN_uniformRNG_mt_even_0_V_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_92", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_116", "ToFinalSV" : "1", "ToAddress" : "rngMT19937ICN_uniformRNG_mt_even_0_V_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "9", "II" : "1", "Pragma" : "(src/rng.hpp:694:28)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0", "ap_enable_state2_pp0_iter1_stage0"]},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_92", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_116", "FromFinalSV" : "1", "FromAddress" : "rngMT19937ICN_uniformRNG_mt_even_0_V_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state2_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_114", "ToInitialSV" : "1", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_114", "ToFinalSV" : "1", "ToAddress" : "rngMT19937ICN_uniformRNG_mt_even_0_V_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "9", "II" : "1", "Pragma" : "(src/rng.hpp:694:28)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_94", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_117", "FromFinalSV" : "1", "FromAddress" : "rngMT19937ICN_uniformRNG_mt_odd_0_V_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state2_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_119", "ToInitialSV" : "1", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_119", "ToFinalSV" : "1", "ToAddress" : "rngMT19937ICN_uniformRNG_mt_odd_0_V_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "9", "II" : "1", "Pragma" : "(src/rng.hpp:697:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state2_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_119", "FromInitialSV" : "1", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_119", "FromFinalSV" : "1", "FromAddress" : "rngMT19937ICN_uniformRNG_mt_odd_0_V_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_88", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_111", "ToFinalSV" : "1", "ToAddress" : "rngMT19937ICN_uniformRNG_mt_odd_0_V_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "9", "II" : "1", "Pragma" : "(src/rng.hpp:697:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0", "ap_enable_state2_pp0_iter1_stage0"]},
			{"FromInitialState" : "ap_enable_state2_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_119", "FromInitialSV" : "1", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_119", "FromFinalSV" : "1", "FromAddress" : "rngMT19937ICN_uniformRNG_mt_odd_0_V_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_94", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_117", "ToFinalSV" : "1", "ToAddress" : "rngMT19937ICN_uniformRNG_mt_odd_0_V_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "9", "II" : "1", "Pragma" : "(src/rng.hpp:697:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0", "ap_enable_state2_pp0_iter1_stage0"]}],
		"Port" : [
			{"Name" : "rngMT19937ICN_uniformRNG_x_k_p_0_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "rngMT19937ICN_uniformRNG_x_k_p_1_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "rngMT19937ICN_uniformRNG_x_k_p_m_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "rngMT19937ICN_uniformRNG_x_k_p_2_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln1245", "Type" : "None", "Direction" : "I"},
			{"Name" : "rngMT19937ICN_uniformRNG_mt_even_0_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "rngMT19937ICN_uniformRNG_mt_odd_0_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "channel_out", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "channel_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "noise_out", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "noise_out_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_15_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter49", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter49", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_AWGN_1_Pipeline_VITIS_LOOP_15_1_fu_72.dsub_64ns_64ns_64_2_no_dsp_1_U951", "Parent" : "9"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_AWGN_1_Pipeline_VITIS_LOOP_15_1_fu_72.dadd_64ns_64ns_64_2_no_dsp_1_U952", "Parent" : "9"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_AWGN_1_Pipeline_VITIS_LOOP_15_1_fu_72.dadd_64ns_64ns_64_2_no_dsp_1_U953", "Parent" : "9"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_AWGN_1_Pipeline_VITIS_LOOP_15_1_fu_72.dadd_64ns_64ns_64_2_no_dsp_1_U954", "Parent" : "9"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_AWGN_1_Pipeline_VITIS_LOOP_15_1_fu_72.dadd_64ns_64ns_64_2_no_dsp_1_U955", "Parent" : "9"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_AWGN_1_Pipeline_VITIS_LOOP_15_1_fu_72.dadd_64ns_64ns_64_2_no_dsp_1_U956", "Parent" : "9"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_AWGN_1_Pipeline_VITIS_LOOP_15_1_fu_72.dadd_64ns_64ns_64_2_no_dsp_1_U957", "Parent" : "9"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_AWGN_1_Pipeline_VITIS_LOOP_15_1_fu_72.dadd_64ns_64ns_64_2_no_dsp_1_U958", "Parent" : "9"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_AWGN_1_Pipeline_VITIS_LOOP_15_1_fu_72.dadd_64ns_64ns_64_2_no_dsp_1_U959", "Parent" : "9"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_AWGN_1_Pipeline_VITIS_LOOP_15_1_fu_72.dadd_64ns_64ns_64_2_no_dsp_1_U960", "Parent" : "9"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_AWGN_1_Pipeline_VITIS_LOOP_15_1_fu_72.dadd_64ns_64ns_64_2_no_dsp_1_U961", "Parent" : "9"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_AWGN_1_Pipeline_VITIS_LOOP_15_1_fu_72.dadd_64ns_64ns_64_2_no_dsp_1_U962", "Parent" : "9"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_AWGN_1_Pipeline_VITIS_LOOP_15_1_fu_72.dmul_64ns_64ns_64_2_med_dsp_1_U963", "Parent" : "9"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_AWGN_1_Pipeline_VITIS_LOOP_15_1_fu_72.dmul_64ns_64ns_64_2_med_dsp_1_U964", "Parent" : "9"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_AWGN_1_Pipeline_VITIS_LOOP_15_1_fu_72.dmul_64ns_64ns_64_2_med_dsp_1_U965", "Parent" : "9"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_AWGN_1_Pipeline_VITIS_LOOP_15_1_fu_72.dmul_64ns_64ns_64_2_med_dsp_1_U966", "Parent" : "9"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_AWGN_1_Pipeline_VITIS_LOOP_15_1_fu_72.dmul_64ns_64ns_64_2_med_dsp_1_U967", "Parent" : "9"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_AWGN_1_Pipeline_VITIS_LOOP_15_1_fu_72.dmul_64ns_64ns_64_2_med_dsp_1_U968", "Parent" : "9"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_AWGN_1_Pipeline_VITIS_LOOP_15_1_fu_72.dmul_64ns_64ns_64_2_med_dsp_1_U969", "Parent" : "9"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_AWGN_1_Pipeline_VITIS_LOOP_15_1_fu_72.dmul_64ns_64ns_64_2_med_dsp_1_U970", "Parent" : "9"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_AWGN_1_Pipeline_VITIS_LOOP_15_1_fu_72.dmul_64ns_64ns_64_2_med_dsp_1_U971", "Parent" : "9"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_AWGN_1_Pipeline_VITIS_LOOP_15_1_fu_72.dmul_64ns_64ns_64_2_med_dsp_1_U972", "Parent" : "9"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_AWGN_1_Pipeline_VITIS_LOOP_15_1_fu_72.dmul_64ns_64ns_64_2_med_dsp_1_U973", "Parent" : "9"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_AWGN_1_Pipeline_VITIS_LOOP_15_1_fu_72.dmul_64ns_64ns_64_2_med_dsp_1_U974", "Parent" : "9"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_AWGN_1_Pipeline_VITIS_LOOP_15_1_fu_72.dmul_64ns_64ns_64_2_med_dsp_1_U975", "Parent" : "9"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_AWGN_1_Pipeline_VITIS_LOOP_15_1_fu_72.ddiv_64ns_64ns_64_7_no_dsp_1_U976", "Parent" : "9"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_AWGN_1_Pipeline_VITIS_LOOP_15_1_fu_72.dcmp_64ns_64ns_1_1_no_dsp_1_U977", "Parent" : "9"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_AWGN_1_Pipeline_VITIS_LOOP_15_1_fu_72.dcmp_64ns_64ns_1_1_no_dsp_1_U978", "Parent" : "9"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_AWGN_1_Pipeline_VITIS_LOOP_15_1_fu_72.dsqrt_64ns_64ns_64_7_no_dsp_1_U979", "Parent" : "9"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_AWGN_1_Pipeline_VITIS_LOOP_15_1_fu_72.dlog_64ns_64ns_64_5_med_dsp_1_U980", "Parent" : "9"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_AWGN_1_Pipeline_VITIS_LOOP_15_1_fu_72.mac_muladd_16s_16s_24ns_24_4_1_U981", "Parent" : "9"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_AWGN_1_Pipeline_VITIS_LOOP_15_1_fu_72.flow_control_loop_pipe_sequential_init_U", "Parent" : "9"}]}


set ArgLastReadFirstWriteLatency {
	AWGN_1 {
		SNR {Type I LastRead 1 FirstWrite -1}
		channel_out {Type I LastRead 48 FirstWrite -1}
		noise_out {Type O LastRead -1 FirstWrite 49}}
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
		this_mt_odd_1 {Type O LastRead -1 FirstWrite 1}}
	AWGN_1_Pipeline_VITIS_LOOP_15_1 {
		rngMT19937ICN_uniformRNG_x_k_p_0_V {Type I LastRead 0 FirstWrite -1}
		rngMT19937ICN_uniformRNG_x_k_p_1_V {Type I LastRead 0 FirstWrite -1}
		rngMT19937ICN_uniformRNG_x_k_p_m_V {Type I LastRead 0 FirstWrite -1}
		rngMT19937ICN_uniformRNG_x_k_p_2_V {Type I LastRead 0 FirstWrite -1}
		sext_ln1245 {Type I LastRead 0 FirstWrite -1}
		rngMT19937ICN_uniformRNG_mt_even_0_V {Type IO LastRead 1 FirstWrite 1}
		rngMT19937ICN_uniformRNG_mt_odd_0_V {Type IO LastRead 1 FirstWrite 1}
		channel_out {Type I LastRead 48 FirstWrite -1}
		noise_out {Type O LastRead -1 FirstWrite 49}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "810", "Max" : "810"}
	, {"Name" : "Interval", "Min" : "810", "Max" : "810"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	SNR { ap_fifo {  { SNR_dout fifo_data 0 16 }  { SNR_empty_n fifo_status 0 1 }  { SNR_read fifo_update 1 1 } } }
	channel_out { ap_fifo {  { channel_out_dout fifo_data 0 16 }  { channel_out_empty_n fifo_status 0 1 }  { channel_out_read fifo_update 1 1 } } }
	noise_out { ap_fifo {  { noise_out_din fifo_data 1 16 }  { noise_out_full_n fifo_status 0 1 }  { noise_out_write fifo_update 1 1 } } }
}

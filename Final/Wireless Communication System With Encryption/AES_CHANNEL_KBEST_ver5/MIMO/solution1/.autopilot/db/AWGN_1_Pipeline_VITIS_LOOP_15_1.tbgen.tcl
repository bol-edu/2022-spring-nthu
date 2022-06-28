set moduleName AWGN_1_Pipeline_VITIS_LOOP_15_1
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
set C_modelName {AWGN.1_Pipeline_VITIS_LOOP_15_1}
set C_modelType { void 0 }
set C_modelArgList {
	{ rngMT19937ICN_uniformRNG_x_k_p_0_V int 32 regular  }
	{ rngMT19937ICN_uniformRNG_x_k_p_1_V int 32 regular  }
	{ rngMT19937ICN_uniformRNG_x_k_p_m_V int 32 regular  }
	{ rngMT19937ICN_uniformRNG_x_k_p_2_V int 32 regular  }
	{ sext_ln1245 int 16 regular  }
	{ rngMT19937ICN_uniformRNG_mt_even_0_V int 32 regular {array 512 { 0 1 } 1 1 }  }
	{ rngMT19937ICN_uniformRNG_mt_odd_0_V int 32 regular {array 512 { 0 1 } 1 1 }  }
	{ channel_out int 16 regular {fifo 0 volatile } {global 0}  }
	{ noise_out int 16 regular {fifo 1 volatile } {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "rngMT19937ICN_uniformRNG_x_k_p_0_V", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "rngMT19937ICN_uniformRNG_x_k_p_1_V", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "rngMT19937ICN_uniformRNG_x_k_p_m_V", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "rngMT19937ICN_uniformRNG_x_k_p_2_V", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln1245", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "rngMT19937ICN_uniformRNG_mt_even_0_V", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "rngMT19937ICN_uniformRNG_mt_odd_0_V", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "channel_out", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "noise_out", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 31
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ channel_out_dout sc_in sc_lv 16 signal 7 } 
	{ channel_out_empty_n sc_in sc_logic 1 signal 7 } 
	{ channel_out_read sc_out sc_logic 1 signal 7 } 
	{ noise_out_din sc_out sc_lv 16 signal 8 } 
	{ noise_out_full_n sc_in sc_logic 1 signal 8 } 
	{ noise_out_write sc_out sc_logic 1 signal 8 } 
	{ rngMT19937ICN_uniformRNG_x_k_p_0_V sc_in sc_lv 32 signal 0 } 
	{ rngMT19937ICN_uniformRNG_x_k_p_1_V sc_in sc_lv 32 signal 1 } 
	{ rngMT19937ICN_uniformRNG_x_k_p_m_V sc_in sc_lv 32 signal 2 } 
	{ rngMT19937ICN_uniformRNG_x_k_p_2_V sc_in sc_lv 32 signal 3 } 
	{ sext_ln1245 sc_in sc_lv 16 signal 4 } 
	{ rngMT19937ICN_uniformRNG_mt_even_0_V_address0 sc_out sc_lv 9 signal 5 } 
	{ rngMT19937ICN_uniformRNG_mt_even_0_V_ce0 sc_out sc_logic 1 signal 5 } 
	{ rngMT19937ICN_uniformRNG_mt_even_0_V_we0 sc_out sc_logic 1 signal 5 } 
	{ rngMT19937ICN_uniformRNG_mt_even_0_V_d0 sc_out sc_lv 32 signal 5 } 
	{ rngMT19937ICN_uniformRNG_mt_even_0_V_address1 sc_out sc_lv 9 signal 5 } 
	{ rngMT19937ICN_uniformRNG_mt_even_0_V_ce1 sc_out sc_logic 1 signal 5 } 
	{ rngMT19937ICN_uniformRNG_mt_even_0_V_q1 sc_in sc_lv 32 signal 5 } 
	{ rngMT19937ICN_uniformRNG_mt_odd_0_V_address0 sc_out sc_lv 9 signal 6 } 
	{ rngMT19937ICN_uniformRNG_mt_odd_0_V_ce0 sc_out sc_logic 1 signal 6 } 
	{ rngMT19937ICN_uniformRNG_mt_odd_0_V_we0 sc_out sc_logic 1 signal 6 } 
	{ rngMT19937ICN_uniformRNG_mt_odd_0_V_d0 sc_out sc_lv 32 signal 6 } 
	{ rngMT19937ICN_uniformRNG_mt_odd_0_V_address1 sc_out sc_lv 9 signal 6 } 
	{ rngMT19937ICN_uniformRNG_mt_odd_0_V_ce1 sc_out sc_logic 1 signal 6 } 
	{ rngMT19937ICN_uniformRNG_mt_odd_0_V_q1 sc_in sc_lv 32 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "channel_out_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "channel_out", "role": "dout" }} , 
 	{ "name": "channel_out_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "channel_out", "role": "empty_n" }} , 
 	{ "name": "channel_out_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "channel_out", "role": "read" }} , 
 	{ "name": "noise_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "noise_out", "role": "din" }} , 
 	{ "name": "noise_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "noise_out", "role": "full_n" }} , 
 	{ "name": "noise_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "noise_out", "role": "write" }} , 
 	{ "name": "rngMT19937ICN_uniformRNG_x_k_p_0_V", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "rngMT19937ICN_uniformRNG_x_k_p_0_V", "role": "default" }} , 
 	{ "name": "rngMT19937ICN_uniformRNG_x_k_p_1_V", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "rngMT19937ICN_uniformRNG_x_k_p_1_V", "role": "default" }} , 
 	{ "name": "rngMT19937ICN_uniformRNG_x_k_p_m_V", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "rngMT19937ICN_uniformRNG_x_k_p_m_V", "role": "default" }} , 
 	{ "name": "rngMT19937ICN_uniformRNG_x_k_p_2_V", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "rngMT19937ICN_uniformRNG_x_k_p_2_V", "role": "default" }} , 
 	{ "name": "sext_ln1245", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sext_ln1245", "role": "default" }} , 
 	{ "name": "rngMT19937ICN_uniformRNG_mt_even_0_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "rngMT19937ICN_uniformRNG_mt_even_0_V", "role": "address0" }} , 
 	{ "name": "rngMT19937ICN_uniformRNG_mt_even_0_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rngMT19937ICN_uniformRNG_mt_even_0_V", "role": "ce0" }} , 
 	{ "name": "rngMT19937ICN_uniformRNG_mt_even_0_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rngMT19937ICN_uniformRNG_mt_even_0_V", "role": "we0" }} , 
 	{ "name": "rngMT19937ICN_uniformRNG_mt_even_0_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "rngMT19937ICN_uniformRNG_mt_even_0_V", "role": "d0" }} , 
 	{ "name": "rngMT19937ICN_uniformRNG_mt_even_0_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "rngMT19937ICN_uniformRNG_mt_even_0_V", "role": "address1" }} , 
 	{ "name": "rngMT19937ICN_uniformRNG_mt_even_0_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rngMT19937ICN_uniformRNG_mt_even_0_V", "role": "ce1" }} , 
 	{ "name": "rngMT19937ICN_uniformRNG_mt_even_0_V_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "rngMT19937ICN_uniformRNG_mt_even_0_V", "role": "q1" }} , 
 	{ "name": "rngMT19937ICN_uniformRNG_mt_odd_0_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "rngMT19937ICN_uniformRNG_mt_odd_0_V", "role": "address0" }} , 
 	{ "name": "rngMT19937ICN_uniformRNG_mt_odd_0_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rngMT19937ICN_uniformRNG_mt_odd_0_V", "role": "ce0" }} , 
 	{ "name": "rngMT19937ICN_uniformRNG_mt_odd_0_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rngMT19937ICN_uniformRNG_mt_odd_0_V", "role": "we0" }} , 
 	{ "name": "rngMT19937ICN_uniformRNG_mt_odd_0_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "rngMT19937ICN_uniformRNG_mt_odd_0_V", "role": "d0" }} , 
 	{ "name": "rngMT19937ICN_uniformRNG_mt_odd_0_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "rngMT19937ICN_uniformRNG_mt_odd_0_V", "role": "address1" }} , 
 	{ "name": "rngMT19937ICN_uniformRNG_mt_odd_0_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rngMT19937ICN_uniformRNG_mt_odd_0_V", "role": "ce1" }} , 
 	{ "name": "rngMT19937ICN_uniformRNG_mt_odd_0_V_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "rngMT19937ICN_uniformRNG_mt_odd_0_V", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dsub_64ns_64ns_64_2_no_dsp_1_U951", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dadd_64ns_64ns_64_2_no_dsp_1_U952", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dadd_64ns_64ns_64_2_no_dsp_1_U953", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dadd_64ns_64ns_64_2_no_dsp_1_U954", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dadd_64ns_64ns_64_2_no_dsp_1_U955", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dadd_64ns_64ns_64_2_no_dsp_1_U956", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dadd_64ns_64ns_64_2_no_dsp_1_U957", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dadd_64ns_64ns_64_2_no_dsp_1_U958", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dadd_64ns_64ns_64_2_no_dsp_1_U959", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dadd_64ns_64ns_64_2_no_dsp_1_U960", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dadd_64ns_64ns_64_2_no_dsp_1_U961", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dadd_64ns_64ns_64_2_no_dsp_1_U962", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dmul_64ns_64ns_64_2_med_dsp_1_U963", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dmul_64ns_64ns_64_2_med_dsp_1_U964", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dmul_64ns_64ns_64_2_med_dsp_1_U965", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dmul_64ns_64ns_64_2_med_dsp_1_U966", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dmul_64ns_64ns_64_2_med_dsp_1_U967", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dmul_64ns_64ns_64_2_med_dsp_1_U968", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dmul_64ns_64ns_64_2_med_dsp_1_U969", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dmul_64ns_64ns_64_2_med_dsp_1_U970", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dmul_64ns_64ns_64_2_med_dsp_1_U971", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dmul_64ns_64ns_64_2_med_dsp_1_U972", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dmul_64ns_64ns_64_2_med_dsp_1_U973", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dmul_64ns_64ns_64_2_med_dsp_1_U974", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dmul_64ns_64ns_64_2_med_dsp_1_U975", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ddiv_64ns_64ns_64_7_no_dsp_1_U976", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dcmp_64ns_64ns_1_1_no_dsp_1_U977", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dcmp_64ns_64ns_1_1_no_dsp_1_U978", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dsqrt_64ns_64ns_64_7_no_dsp_1_U979", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dlog_64ns_64ns_64_5_med_dsp_1_U980", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_24ns_24_4_1_U981", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
	{"Name" : "Latency", "Min" : "178", "Max" : "178"}
	, {"Name" : "Interval", "Min" : "178", "Max" : "178"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	rngMT19937ICN_uniformRNG_x_k_p_0_V { ap_none {  { rngMT19937ICN_uniformRNG_x_k_p_0_V in_data 0 32 } } }
	rngMT19937ICN_uniformRNG_x_k_p_1_V { ap_none {  { rngMT19937ICN_uniformRNG_x_k_p_1_V in_data 0 32 } } }
	rngMT19937ICN_uniformRNG_x_k_p_m_V { ap_none {  { rngMT19937ICN_uniformRNG_x_k_p_m_V in_data 0 32 } } }
	rngMT19937ICN_uniformRNG_x_k_p_2_V { ap_none {  { rngMT19937ICN_uniformRNG_x_k_p_2_V in_data 0 32 } } }
	sext_ln1245 { ap_none {  { sext_ln1245 in_data 0 16 } } }
	rngMT19937ICN_uniformRNG_mt_even_0_V { ap_memory {  { rngMT19937ICN_uniformRNG_mt_even_0_V_address0 mem_address 1 9 }  { rngMT19937ICN_uniformRNG_mt_even_0_V_ce0 mem_ce 1 1 }  { rngMT19937ICN_uniformRNG_mt_even_0_V_we0 mem_we 1 1 }  { rngMT19937ICN_uniformRNG_mt_even_0_V_d0 mem_din 1 32 }  { rngMT19937ICN_uniformRNG_mt_even_0_V_address1 MemPortADDR2 1 9 }  { rngMT19937ICN_uniformRNG_mt_even_0_V_ce1 MemPortCE2 1 1 }  { rngMT19937ICN_uniformRNG_mt_even_0_V_q1 in_data 0 32 } } }
	rngMT19937ICN_uniformRNG_mt_odd_0_V { ap_memory {  { rngMT19937ICN_uniformRNG_mt_odd_0_V_address0 mem_address 1 9 }  { rngMT19937ICN_uniformRNG_mt_odd_0_V_ce0 mem_ce 1 1 }  { rngMT19937ICN_uniformRNG_mt_odd_0_V_we0 mem_we 1 1 }  { rngMT19937ICN_uniformRNG_mt_odd_0_V_d0 mem_din 1 32 }  { rngMT19937ICN_uniformRNG_mt_odd_0_V_address1 MemPortADDR2 1 9 }  { rngMT19937ICN_uniformRNG_mt_odd_0_V_ce1 MemPortCE2 1 1 }  { rngMT19937ICN_uniformRNG_mt_odd_0_V_q1 in_data 0 32 } } }
	channel_out { ap_fifo {  { channel_out_dout fifo_data 0 16 }  { channel_out_empty_n fifo_status 0 1 }  { channel_out_read fifo_update 1 1 } } }
	noise_out { ap_fifo {  { noise_out_din fifo_data 1 16 }  { noise_out_full_n fifo_status 0 1 }  { noise_out_write fifo_update 1 1 } } }
}

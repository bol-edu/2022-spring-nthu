set moduleName channel_mult
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
set C_modelName {channel_mult}
set C_modelType { void 0 }
set C_modelArgList {
	{ H_real_spl0 int 16 regular {fifo 0 volatile } {global 0}  }
	{ H_imag_spl0 int 16 regular {fifo 0 volatile } {global 0}  }
	{ xr int 16 regular {fifo 0 volatile } {global 0}  }
	{ xi int 16 regular {fifo 0 volatile } {global 0}  }
	{ channel_out int 16 regular {fifo 1 volatile } {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "H_real_spl0", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "H_imag_spl0", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "xr", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "xi", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "channel_out", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ H_real_spl0_dout sc_in sc_lv 16 signal 0 } 
	{ H_real_spl0_empty_n sc_in sc_logic 1 signal 0 } 
	{ H_real_spl0_read sc_out sc_logic 1 signal 0 } 
	{ H_imag_spl0_dout sc_in sc_lv 16 signal 1 } 
	{ H_imag_spl0_empty_n sc_in sc_logic 1 signal 1 } 
	{ H_imag_spl0_read sc_out sc_logic 1 signal 1 } 
	{ xr_dout sc_in sc_lv 16 signal 2 } 
	{ xr_empty_n sc_in sc_logic 1 signal 2 } 
	{ xr_read sc_out sc_logic 1 signal 2 } 
	{ xi_dout sc_in sc_lv 16 signal 3 } 
	{ xi_empty_n sc_in sc_logic 1 signal 3 } 
	{ xi_read sc_out sc_logic 1 signal 3 } 
	{ channel_out_din sc_out sc_lv 16 signal 4 } 
	{ channel_out_full_n sc_in sc_logic 1 signal 4 } 
	{ channel_out_write sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "H_real_spl0_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "H_real_spl0", "role": "dout" }} , 
 	{ "name": "H_real_spl0_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "H_real_spl0", "role": "empty_n" }} , 
 	{ "name": "H_real_spl0_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "H_real_spl0", "role": "read" }} , 
 	{ "name": "H_imag_spl0_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "H_imag_spl0", "role": "dout" }} , 
 	{ "name": "H_imag_spl0_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "H_imag_spl0", "role": "empty_n" }} , 
 	{ "name": "H_imag_spl0_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "H_imag_spl0", "role": "read" }} , 
 	{ "name": "xr_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "xr", "role": "dout" }} , 
 	{ "name": "xr_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "xr", "role": "empty_n" }} , 
 	{ "name": "xr_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "xr", "role": "read" }} , 
 	{ "name": "xi_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "xi", "role": "dout" }} , 
 	{ "name": "xi_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "xi", "role": "empty_n" }} , 
 	{ "name": "xi_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "xi", "role": "read" }} , 
 	{ "name": "channel_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "channel_out", "role": "din" }} , 
 	{ "name": "channel_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "channel_out", "role": "full_n" }} , 
 	{ "name": "channel_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "channel_out", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "3"],
		"CDFG" : "channel_mult",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "163", "EstimateLatencyMax" : "163",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "H_real_spl0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_channel_mult_Pipeline_CHANNEL2REAL_fu_282", "Port" : "H_real_spl0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "H_imag_spl0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_channel_mult_Pipeline_CHANNEL2REAL_fu_282", "Port" : "H_imag_spl0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "xr", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "128", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_channel_mult_Pipeline_VITIS_LOOP_63_1_fu_354", "Port" : "xr", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "xi", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "128", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_channel_mult_Pipeline_VITIS_LOOP_63_1_fu_354", "Port" : "xi", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "channel_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_channel_mult_Pipeline_VITIS_LOOP_63_1_fu_354", "Port" : "channel_out", "Inst_start_state" : "4", "Inst_end_state" : "5"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_channel_mult_Pipeline_CHANNEL2REAL_fu_282", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "channel_mult_Pipeline_CHANNEL2REAL",
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
			{"Name" : "p_0_0_080344_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_080341_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_080338_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_080335_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_080330_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_080327_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_080324_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_080321_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_080320_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_080317_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_080314_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_080311_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_080308_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_080305_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_080302_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_080299_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "CHANNEL_V_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "CHANNEL_V_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "CHANNEL_V_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv_i_i_i35287_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "CHANNEL_V_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "CHANNEL_V_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "CHANNEL_V_5_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "CHANNEL_V_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "CHANNEL_V_7_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "CHANNEL_V_8_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "CHANNEL_V_9_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "CHANNEL_V_10_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "CHANNEL_V_11_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "CHANNEL_V_12_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "CHANNEL_V_13_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "CHANNEL_V_14_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "CHANNEL_V_15_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "CHANNEL_V_16_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "CHANNEL_V_17_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_079239_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "CHANNEL_V_18_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "CHANNEL_V_19_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "CHANNEL_V_20_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "CHANNEL_V_21_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "CHANNEL_V_22_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "CHANNEL_V_23_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "CHANNEL_V_24_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "CHANNEL_V_25_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "CHANNEL_V_26_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "CHANNEL_V_27_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "CHANNEL_V_28_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "CHANNEL_V_29_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "CHANNEL_V_30_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "CHANNEL_V_31_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "CHANNEL_V_32_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_079191_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "CHANNEL_V_33_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "CHANNEL_V_34_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "CHANNEL_V_35_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "CHANNEL_V_36_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "CHANNEL_V_37_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "CHANNEL_V_38_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "CHANNEL_V_39_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "CHANNEL_V_40_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "CHANNEL_V_41_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "CHANNEL_V_42_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "CHANNEL_V_43_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "CHANNEL_V_44_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "H_real_spl0", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "H_real_spl0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "H_imag_spl0", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "H_imag_spl0_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "CHANNEL2REAL", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_channel_mult_Pipeline_CHANNEL2REAL_fu_282.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_channel_mult_Pipeline_VITIS_LOOP_63_1_fu_354", "Parent" : "0", "Child" : ["4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68"],
		"CDFG" : "channel_mult_Pipeline_VITIS_LOOP_63_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "sext_ln1171", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln1171_72", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln1171_73", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln1171_74", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln1171_75", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln1171_76", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln1171_77", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln1171_78", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln1171_79", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln1171_80", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln1171_81", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln1171_82", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln1171_83", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln1171_84", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln1171_85", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln1171_86", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln1171_87", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln1171_88", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln1171_89", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln1171_90", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln1171_91", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln1171_92", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln1171_93", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln1171_94", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln1171_95", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln1171_96", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln1171_97", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln1171_98", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln1171_99", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln1171_100", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln1171_101", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln1171_102", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln1171_103", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln1171_104", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln1171_105", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln1171_106", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln1171_107", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln1171_108", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln1171_109", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln1171_110", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln1171_111", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln1171_112", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln1171_113", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln1171_114", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln1171_115", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln1171_116", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln1171_117", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln1171_118", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln1171_119", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln1171_120", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln1171_121", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln1171_122", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln1171_123", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln1171_124", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln1171_125", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln1171_126", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln1171_127", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln1171_128", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln1171_129", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln1171_130", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln1171_131", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln1171_132", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln1171_133", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln1171_134", "Type" : "None", "Direction" : "I"},
			{"Name" : "xr", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "xr_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "xi", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "xi_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "channel_out", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "channel_out_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_63_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage3", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage3_subdone", "QuitState" : "ap_ST_fsm_pp0_stage3", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage3_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_channel_mult_Pipeline_VITIS_LOOP_63_1_fu_354.mul_mul_16s_16s_24_4_1_U815", "Parent" : "3"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_channel_mult_Pipeline_VITIS_LOOP_63_1_fu_354.mul_mul_16s_16s_24_4_1_U816", "Parent" : "3"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_channel_mult_Pipeline_VITIS_LOOP_63_1_fu_354.mul_mul_16s_16s_24_4_1_U817", "Parent" : "3"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_channel_mult_Pipeline_VITIS_LOOP_63_1_fu_354.mul_mul_16s_16s_24_4_1_U818", "Parent" : "3"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_channel_mult_Pipeline_VITIS_LOOP_63_1_fu_354.mul_mul_16s_16s_24_4_1_U819", "Parent" : "3"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_channel_mult_Pipeline_VITIS_LOOP_63_1_fu_354.mul_mul_16s_16s_24_4_1_U820", "Parent" : "3"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_channel_mult_Pipeline_VITIS_LOOP_63_1_fu_354.mul_mul_16s_16s_24_4_1_U821", "Parent" : "3"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_channel_mult_Pipeline_VITIS_LOOP_63_1_fu_354.mul_mul_16s_16s_24_4_1_U822", "Parent" : "3"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_channel_mult_Pipeline_VITIS_LOOP_63_1_fu_354.mac_muladd_16s_16s_24ns_24_4_1_U823", "Parent" : "3"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_channel_mult_Pipeline_VITIS_LOOP_63_1_fu_354.mac_muladd_16s_16s_24ns_24_4_1_U824", "Parent" : "3"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_channel_mult_Pipeline_VITIS_LOOP_63_1_fu_354.mac_muladd_16s_16s_24ns_24_4_1_U825", "Parent" : "3"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_channel_mult_Pipeline_VITIS_LOOP_63_1_fu_354.mac_muladd_16s_16s_24ns_24_4_1_U826", "Parent" : "3"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_channel_mult_Pipeline_VITIS_LOOP_63_1_fu_354.mac_muladd_16s_16s_24ns_24_4_1_U827", "Parent" : "3"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_channel_mult_Pipeline_VITIS_LOOP_63_1_fu_354.mac_muladd_16s_16s_24ns_24_4_1_U828", "Parent" : "3"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_channel_mult_Pipeline_VITIS_LOOP_63_1_fu_354.mac_muladd_16s_16s_24ns_24_4_1_U829", "Parent" : "3"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_channel_mult_Pipeline_VITIS_LOOP_63_1_fu_354.mac_muladd_16s_16s_24ns_24_4_1_U830", "Parent" : "3"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_channel_mult_Pipeline_VITIS_LOOP_63_1_fu_354.mac_muladd_16s_16s_24ns_24_4_1_U831", "Parent" : "3"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_channel_mult_Pipeline_VITIS_LOOP_63_1_fu_354.mac_muladd_16s_16s_24ns_24_4_1_U832", "Parent" : "3"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_channel_mult_Pipeline_VITIS_LOOP_63_1_fu_354.mac_muladd_16s_16s_24ns_24_4_1_U833", "Parent" : "3"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_channel_mult_Pipeline_VITIS_LOOP_63_1_fu_354.mac_muladd_16s_16s_24ns_24_4_1_U834", "Parent" : "3"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_channel_mult_Pipeline_VITIS_LOOP_63_1_fu_354.mac_muladd_16s_16s_24ns_24_4_1_U835", "Parent" : "3"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_channel_mult_Pipeline_VITIS_LOOP_63_1_fu_354.mac_muladd_16s_16s_24ns_24_4_1_U836", "Parent" : "3"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_channel_mult_Pipeline_VITIS_LOOP_63_1_fu_354.mac_muladd_16s_16s_24ns_24_4_1_U837", "Parent" : "3"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_channel_mult_Pipeline_VITIS_LOOP_63_1_fu_354.mac_muladd_16s_16s_24ns_24_4_1_U838", "Parent" : "3"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_channel_mult_Pipeline_VITIS_LOOP_63_1_fu_354.mac_muladd_16s_16s_24ns_24_4_1_U839", "Parent" : "3"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_channel_mult_Pipeline_VITIS_LOOP_63_1_fu_354.mac_muladd_16s_16s_24ns_24_4_1_U840", "Parent" : "3"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_channel_mult_Pipeline_VITIS_LOOP_63_1_fu_354.mac_muladd_16s_16s_24ns_24_4_1_U841", "Parent" : "3"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_channel_mult_Pipeline_VITIS_LOOP_63_1_fu_354.mac_muladd_16s_16s_24ns_24_4_1_U842", "Parent" : "3"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_channel_mult_Pipeline_VITIS_LOOP_63_1_fu_354.mac_muladd_16s_16s_24ns_24_4_1_U843", "Parent" : "3"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_channel_mult_Pipeline_VITIS_LOOP_63_1_fu_354.mac_muladd_16s_16s_24ns_24_4_1_U844", "Parent" : "3"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_channel_mult_Pipeline_VITIS_LOOP_63_1_fu_354.mac_muladd_16s_16s_24ns_24_4_1_U845", "Parent" : "3"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_channel_mult_Pipeline_VITIS_LOOP_63_1_fu_354.mac_muladd_16s_16s_24ns_24_4_1_U846", "Parent" : "3"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_channel_mult_Pipeline_VITIS_LOOP_63_1_fu_354.mac_muladd_16s_16s_24ns_24_4_1_U847", "Parent" : "3"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_channel_mult_Pipeline_VITIS_LOOP_63_1_fu_354.mac_muladd_16s_16s_24ns_24_4_1_U848", "Parent" : "3"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_channel_mult_Pipeline_VITIS_LOOP_63_1_fu_354.mac_muladd_16s_16s_24ns_24_4_1_U849", "Parent" : "3"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_channel_mult_Pipeline_VITIS_LOOP_63_1_fu_354.mac_muladd_16s_16s_24ns_24_4_1_U850", "Parent" : "3"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_channel_mult_Pipeline_VITIS_LOOP_63_1_fu_354.mac_muladd_16s_16s_24ns_24_4_1_U851", "Parent" : "3"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_channel_mult_Pipeline_VITIS_LOOP_63_1_fu_354.mac_muladd_16s_16s_24ns_24_4_1_U852", "Parent" : "3"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_channel_mult_Pipeline_VITIS_LOOP_63_1_fu_354.mac_muladd_16s_16s_24ns_24_4_1_U853", "Parent" : "3"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_channel_mult_Pipeline_VITIS_LOOP_63_1_fu_354.mac_muladd_16s_16s_24ns_24_4_1_U854", "Parent" : "3"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_channel_mult_Pipeline_VITIS_LOOP_63_1_fu_354.mac_muladd_16s_16s_24ns_24_4_1_U855", "Parent" : "3"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_channel_mult_Pipeline_VITIS_LOOP_63_1_fu_354.mac_muladd_16s_16s_24ns_24_4_1_U856", "Parent" : "3"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_channel_mult_Pipeline_VITIS_LOOP_63_1_fu_354.mac_muladd_16s_16s_24ns_24_4_1_U857", "Parent" : "3"},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_channel_mult_Pipeline_VITIS_LOOP_63_1_fu_354.mac_muladd_16s_16s_24ns_24_4_1_U858", "Parent" : "3"},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_channel_mult_Pipeline_VITIS_LOOP_63_1_fu_354.mac_muladd_16s_16s_24ns_24_4_1_U859", "Parent" : "3"},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_channel_mult_Pipeline_VITIS_LOOP_63_1_fu_354.mac_muladd_16s_16s_24ns_24_4_1_U860", "Parent" : "3"},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_channel_mult_Pipeline_VITIS_LOOP_63_1_fu_354.mac_muladd_16s_16s_24ns_24_4_1_U861", "Parent" : "3"},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_channel_mult_Pipeline_VITIS_LOOP_63_1_fu_354.mac_muladd_16s_16s_24ns_24_4_1_U862", "Parent" : "3"},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_channel_mult_Pipeline_VITIS_LOOP_63_1_fu_354.mac_muladd_16s_16s_24ns_24_4_1_U863", "Parent" : "3"},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_channel_mult_Pipeline_VITIS_LOOP_63_1_fu_354.mac_muladd_16s_16s_24ns_24_4_1_U864", "Parent" : "3"},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_channel_mult_Pipeline_VITIS_LOOP_63_1_fu_354.mac_muladd_16s_16s_24ns_24_4_1_U865", "Parent" : "3"},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_channel_mult_Pipeline_VITIS_LOOP_63_1_fu_354.mac_muladd_16s_16s_24ns_24_4_1_U866", "Parent" : "3"},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_channel_mult_Pipeline_VITIS_LOOP_63_1_fu_354.mac_muladd_16s_16s_24ns_24_4_1_U867", "Parent" : "3"},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_channel_mult_Pipeline_VITIS_LOOP_63_1_fu_354.mac_muladd_16s_16s_24ns_24_4_1_U868", "Parent" : "3"},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_channel_mult_Pipeline_VITIS_LOOP_63_1_fu_354.mac_muladd_16s_16s_24ns_24_4_1_U869", "Parent" : "3"},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_channel_mult_Pipeline_VITIS_LOOP_63_1_fu_354.mac_muladd_16s_16s_24ns_24_4_1_U870", "Parent" : "3"},
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_channel_mult_Pipeline_VITIS_LOOP_63_1_fu_354.mac_muladd_16s_16s_24ns_24_4_1_U871", "Parent" : "3"},
	{"ID" : "61", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_channel_mult_Pipeline_VITIS_LOOP_63_1_fu_354.mac_muladd_16s_16s_24ns_24_4_1_U872", "Parent" : "3"},
	{"ID" : "62", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_channel_mult_Pipeline_VITIS_LOOP_63_1_fu_354.mac_muladd_16s_16s_24ns_24_4_1_U873", "Parent" : "3"},
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_channel_mult_Pipeline_VITIS_LOOP_63_1_fu_354.mac_muladd_16s_16s_24ns_24_4_1_U874", "Parent" : "3"},
	{"ID" : "64", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_channel_mult_Pipeline_VITIS_LOOP_63_1_fu_354.mac_muladd_16s_16s_24ns_24_4_1_U875", "Parent" : "3"},
	{"ID" : "65", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_channel_mult_Pipeline_VITIS_LOOP_63_1_fu_354.mac_muladd_16s_16s_24ns_24_4_1_U876", "Parent" : "3"},
	{"ID" : "66", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_channel_mult_Pipeline_VITIS_LOOP_63_1_fu_354.mac_muladd_16s_16s_24ns_24_4_1_U877", "Parent" : "3"},
	{"ID" : "67", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_channel_mult_Pipeline_VITIS_LOOP_63_1_fu_354.mac_muladd_16s_16s_24ns_24_4_1_U878", "Parent" : "3"},
	{"ID" : "68", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_channel_mult_Pipeline_VITIS_LOOP_63_1_fu_354.flow_control_loop_pipe_sequential_init_U", "Parent" : "3"}]}


set ArgLastReadFirstWriteLatency {
	channel_mult {
		H_real_spl0 {Type I LastRead 1 FirstWrite -1}
		H_imag_spl0 {Type I LastRead 1 FirstWrite -1}
		xr {Type I LastRead 4 FirstWrite -1}
		xi {Type I LastRead 4 FirstWrite -1}
		channel_out {Type O LastRead -1 FirstWrite 12}}
	channel_mult_Pipeline_CHANNEL2REAL {
		p_0_0_080344_i_out {Type O LastRead -1 FirstWrite 0}
		p_0_0_080341_i_out {Type O LastRead -1 FirstWrite 0}
		p_0_0_080338_i_out {Type O LastRead -1 FirstWrite 0}
		p_0_0_080335_i_out {Type O LastRead -1 FirstWrite 0}
		p_0_0_080330_i_out {Type O LastRead -1 FirstWrite 0}
		p_0_0_080327_i_out {Type O LastRead -1 FirstWrite 0}
		p_0_0_080324_i_out {Type O LastRead -1 FirstWrite 0}
		p_0_0_080321_i_out {Type O LastRead -1 FirstWrite 0}
		p_0_0_080320_i_out {Type O LastRead -1 FirstWrite 0}
		p_0_0_080317_i_out {Type O LastRead -1 FirstWrite 0}
		p_0_0_080314_i_out {Type O LastRead -1 FirstWrite 0}
		p_0_0_080311_i_out {Type O LastRead -1 FirstWrite 0}
		p_0_0_080308_i_out {Type O LastRead -1 FirstWrite 0}
		p_0_0_080305_i_out {Type O LastRead -1 FirstWrite 0}
		p_0_0_080302_i_out {Type O LastRead -1 FirstWrite 0}
		p_0_0_080299_i_out {Type O LastRead -1 FirstWrite 0}
		CHANNEL_V_out {Type O LastRead -1 FirstWrite 0}
		CHANNEL_V_1_out {Type O LastRead -1 FirstWrite 0}
		CHANNEL_V_2_out {Type O LastRead -1 FirstWrite 0}
		conv_i_i_i35287_i_out {Type O LastRead -1 FirstWrite 0}
		CHANNEL_V_3_out {Type O LastRead -1 FirstWrite 0}
		CHANNEL_V_4_out {Type O LastRead -1 FirstWrite 0}
		CHANNEL_V_5_out {Type O LastRead -1 FirstWrite 0}
		CHANNEL_V_6_out {Type O LastRead -1 FirstWrite 0}
		CHANNEL_V_7_out {Type O LastRead -1 FirstWrite 0}
		CHANNEL_V_8_out {Type O LastRead -1 FirstWrite 0}
		CHANNEL_V_9_out {Type O LastRead -1 FirstWrite 0}
		CHANNEL_V_10_out {Type O LastRead -1 FirstWrite 0}
		CHANNEL_V_11_out {Type O LastRead -1 FirstWrite 0}
		CHANNEL_V_12_out {Type O LastRead -1 FirstWrite 0}
		CHANNEL_V_13_out {Type O LastRead -1 FirstWrite 0}
		CHANNEL_V_14_out {Type O LastRead -1 FirstWrite 0}
		CHANNEL_V_15_out {Type O LastRead -1 FirstWrite 0}
		CHANNEL_V_16_out {Type O LastRead -1 FirstWrite 0}
		CHANNEL_V_17_out {Type O LastRead -1 FirstWrite 0}
		p_0_0_079239_i_out {Type O LastRead -1 FirstWrite 0}
		CHANNEL_V_18_out {Type O LastRead -1 FirstWrite 0}
		CHANNEL_V_19_out {Type O LastRead -1 FirstWrite 0}
		CHANNEL_V_20_out {Type O LastRead -1 FirstWrite 0}
		CHANNEL_V_21_out {Type O LastRead -1 FirstWrite 0}
		CHANNEL_V_22_out {Type O LastRead -1 FirstWrite 0}
		CHANNEL_V_23_out {Type O LastRead -1 FirstWrite 0}
		CHANNEL_V_24_out {Type O LastRead -1 FirstWrite 0}
		CHANNEL_V_25_out {Type O LastRead -1 FirstWrite 0}
		CHANNEL_V_26_out {Type O LastRead -1 FirstWrite 0}
		CHANNEL_V_27_out {Type O LastRead -1 FirstWrite 0}
		CHANNEL_V_28_out {Type O LastRead -1 FirstWrite 0}
		CHANNEL_V_29_out {Type O LastRead -1 FirstWrite 0}
		CHANNEL_V_30_out {Type O LastRead -1 FirstWrite 0}
		CHANNEL_V_31_out {Type O LastRead -1 FirstWrite 0}
		CHANNEL_V_32_out {Type O LastRead -1 FirstWrite 0}
		p_0_0_079191_i_out {Type O LastRead -1 FirstWrite 0}
		CHANNEL_V_33_out {Type O LastRead -1 FirstWrite 0}
		CHANNEL_V_34_out {Type O LastRead -1 FirstWrite 0}
		CHANNEL_V_35_out {Type O LastRead -1 FirstWrite 0}
		CHANNEL_V_36_out {Type O LastRead -1 FirstWrite 0}
		CHANNEL_V_37_out {Type O LastRead -1 FirstWrite 0}
		CHANNEL_V_38_out {Type O LastRead -1 FirstWrite 0}
		CHANNEL_V_39_out {Type O LastRead -1 FirstWrite 0}
		CHANNEL_V_40_out {Type O LastRead -1 FirstWrite 0}
		CHANNEL_V_41_out {Type O LastRead -1 FirstWrite 0}
		CHANNEL_V_42_out {Type O LastRead -1 FirstWrite 0}
		CHANNEL_V_43_out {Type O LastRead -1 FirstWrite 0}
		CHANNEL_V_44_out {Type O LastRead -1 FirstWrite 0}
		H_real_spl0 {Type I LastRead 1 FirstWrite -1}
		H_imag_spl0 {Type I LastRead 1 FirstWrite -1}}
	channel_mult_Pipeline_VITIS_LOOP_63_1 {
		sext_ln1171 {Type I LastRead 0 FirstWrite -1}
		sext_ln1171_72 {Type I LastRead 0 FirstWrite -1}
		sext_ln1171_73 {Type I LastRead 0 FirstWrite -1}
		sext_ln1171_74 {Type I LastRead 0 FirstWrite -1}
		sext_ln1171_75 {Type I LastRead 0 FirstWrite -1}
		sext_ln1171_76 {Type I LastRead 0 FirstWrite -1}
		sext_ln1171_77 {Type I LastRead 0 FirstWrite -1}
		sext_ln1171_78 {Type I LastRead 0 FirstWrite -1}
		sext_ln1171_79 {Type I LastRead 0 FirstWrite -1}
		sext_ln1171_80 {Type I LastRead 0 FirstWrite -1}
		sext_ln1171_81 {Type I LastRead 0 FirstWrite -1}
		sext_ln1171_82 {Type I LastRead 0 FirstWrite -1}
		sext_ln1171_83 {Type I LastRead 0 FirstWrite -1}
		sext_ln1171_84 {Type I LastRead 0 FirstWrite -1}
		sext_ln1171_85 {Type I LastRead 0 FirstWrite -1}
		sext_ln1171_86 {Type I LastRead 0 FirstWrite -1}
		sext_ln1171_87 {Type I LastRead 0 FirstWrite -1}
		sext_ln1171_88 {Type I LastRead 0 FirstWrite -1}
		sext_ln1171_89 {Type I LastRead 0 FirstWrite -1}
		sext_ln1171_90 {Type I LastRead 0 FirstWrite -1}
		sext_ln1171_91 {Type I LastRead 0 FirstWrite -1}
		sext_ln1171_92 {Type I LastRead 0 FirstWrite -1}
		sext_ln1171_93 {Type I LastRead 0 FirstWrite -1}
		sext_ln1171_94 {Type I LastRead 0 FirstWrite -1}
		sext_ln1171_95 {Type I LastRead 0 FirstWrite -1}
		sext_ln1171_96 {Type I LastRead 0 FirstWrite -1}
		sext_ln1171_97 {Type I LastRead 0 FirstWrite -1}
		sext_ln1171_98 {Type I LastRead 0 FirstWrite -1}
		sext_ln1171_99 {Type I LastRead 0 FirstWrite -1}
		sext_ln1171_100 {Type I LastRead 0 FirstWrite -1}
		sext_ln1171_101 {Type I LastRead 0 FirstWrite -1}
		sext_ln1171_102 {Type I LastRead 0 FirstWrite -1}
		sext_ln1171_103 {Type I LastRead 0 FirstWrite -1}
		sext_ln1171_104 {Type I LastRead 0 FirstWrite -1}
		sext_ln1171_105 {Type I LastRead 0 FirstWrite -1}
		sext_ln1171_106 {Type I LastRead 0 FirstWrite -1}
		sext_ln1171_107 {Type I LastRead 0 FirstWrite -1}
		sext_ln1171_108 {Type I LastRead 0 FirstWrite -1}
		sext_ln1171_109 {Type I LastRead 0 FirstWrite -1}
		sext_ln1171_110 {Type I LastRead 0 FirstWrite -1}
		sext_ln1171_111 {Type I LastRead 0 FirstWrite -1}
		sext_ln1171_112 {Type I LastRead 0 FirstWrite -1}
		sext_ln1171_113 {Type I LastRead 0 FirstWrite -1}
		sext_ln1171_114 {Type I LastRead 0 FirstWrite -1}
		sext_ln1171_115 {Type I LastRead 0 FirstWrite -1}
		sext_ln1171_116 {Type I LastRead 0 FirstWrite -1}
		sext_ln1171_117 {Type I LastRead 0 FirstWrite -1}
		sext_ln1171_118 {Type I LastRead 0 FirstWrite -1}
		sext_ln1171_119 {Type I LastRead 0 FirstWrite -1}
		sext_ln1171_120 {Type I LastRead 0 FirstWrite -1}
		sext_ln1171_121 {Type I LastRead 0 FirstWrite -1}
		sext_ln1171_122 {Type I LastRead 0 FirstWrite -1}
		sext_ln1171_123 {Type I LastRead 0 FirstWrite -1}
		sext_ln1171_124 {Type I LastRead 0 FirstWrite -1}
		sext_ln1171_125 {Type I LastRead 0 FirstWrite -1}
		sext_ln1171_126 {Type I LastRead 0 FirstWrite -1}
		sext_ln1171_127 {Type I LastRead 0 FirstWrite -1}
		sext_ln1171_128 {Type I LastRead 0 FirstWrite -1}
		sext_ln1171_129 {Type I LastRead 0 FirstWrite -1}
		sext_ln1171_130 {Type I LastRead 0 FirstWrite -1}
		sext_ln1171_131 {Type I LastRead 0 FirstWrite -1}
		sext_ln1171_132 {Type I LastRead 0 FirstWrite -1}
		sext_ln1171_133 {Type I LastRead 0 FirstWrite -1}
		sext_ln1171_134 {Type I LastRead 0 FirstWrite -1}
		xr {Type I LastRead 4 FirstWrite -1}
		xi {Type I LastRead 4 FirstWrite -1}
		channel_out {Type O LastRead -1 FirstWrite 12}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "163", "Max" : "163"}
	, {"Name" : "Interval", "Min" : "163", "Max" : "163"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	H_real_spl0 { ap_fifo {  { H_real_spl0_dout fifo_data 0 16 }  { H_real_spl0_empty_n fifo_status 0 1 }  { H_real_spl0_read fifo_update 1 1 } } }
	H_imag_spl0 { ap_fifo {  { H_imag_spl0_dout fifo_data 0 16 }  { H_imag_spl0_empty_n fifo_status 0 1 }  { H_imag_spl0_read fifo_update 1 1 } } }
	xr { ap_fifo {  { xr_dout fifo_data 0 16 }  { xr_empty_n fifo_status 0 1 }  { xr_read fifo_update 1 1 } } }
	xi { ap_fifo {  { xi_dout fifo_data 0 16 }  { xi_empty_n fifo_status 0 1 }  { xi_read fifo_update 1 1 } } }
	channel_out { ap_fifo {  { channel_out_din fifo_data 1 16 }  { channel_out_full_n fifo_status 0 1 }  { channel_out_write fifo_update 1 1 } } }
}

set moduleName matrix_mult
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
set C_modelName {matrix_mult}
set C_modelType { void 0 }
set C_modelArgList {
	{ Q int 16 regular {fifo 0 volatile } {global 0}  }
	{ noise_out int 16 regular {fifo 0 volatile } {global 0}  }
	{ MULQ_out int 16 regular {fifo 1 volatile } {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "Q", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "noise_out", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "MULQ_out", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ Q_dout sc_in sc_lv 16 signal 0 } 
	{ Q_empty_n sc_in sc_logic 1 signal 0 } 
	{ Q_read sc_out sc_logic 1 signal 0 } 
	{ noise_out_dout sc_in sc_lv 16 signal 1 } 
	{ noise_out_empty_n sc_in sc_logic 1 signal 1 } 
	{ noise_out_read sc_out sc_logic 1 signal 1 } 
	{ MULQ_out_din sc_out sc_lv 16 signal 2 } 
	{ MULQ_out_full_n sc_in sc_logic 1 signal 2 } 
	{ MULQ_out_write sc_out sc_logic 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "Q_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "Q", "role": "dout" }} , 
 	{ "name": "Q_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Q", "role": "empty_n" }} , 
 	{ "name": "Q_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Q", "role": "read" }} , 
 	{ "name": "noise_out_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "noise_out", "role": "dout" }} , 
 	{ "name": "noise_out_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "noise_out", "role": "empty_n" }} , 
 	{ "name": "noise_out_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "noise_out", "role": "read" }} , 
 	{ "name": "MULQ_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "MULQ_out", "role": "din" }} , 
 	{ "name": "MULQ_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "MULQ_out", "role": "full_n" }} , 
 	{ "name": "MULQ_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "MULQ_out", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "4"],
		"CDFG" : "matrix_mult",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "212", "EstimateLatencyMax" : "212",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "Q", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_matrix_mult_Pipeline_VITIS_LOOP_88_1_fu_26", "Port" : "Q", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "noise_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_matrix_mult_Pipeline_VITIS_LOOP_94_2_fu_34", "Port" : "noise_out", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "MULQ_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_matrix_mult_Pipeline_VITIS_LOOP_94_2_fu_34", "Port" : "MULQ_out", "Inst_start_state" : "4", "Inst_end_state" : "5"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Q_TEMP_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_matrix_mult_Pipeline_VITIS_LOOP_88_1_fu_26", "Parent" : "0", "Child" : ["3"],
		"CDFG" : "matrix_mult_Pipeline_VITIS_LOOP_88_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "66", "EstimateLatencyMax" : "66",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "Q_TEMP_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Q", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "Q_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_88_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matrix_mult_Pipeline_VITIS_LOOP_88_1_fu_26.flow_control_loop_pipe_sequential_init_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_matrix_mult_Pipeline_VITIS_LOOP_94_2_fu_34", "Parent" : "0", "Child" : ["5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69"],
		"CDFG" : "matrix_mult_Pipeline_VITIS_LOOP_94_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "142", "EstimateLatencyMax" : "142",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "Q_TEMP_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "noise_out", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "noise_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "MULQ_out", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "MULQ_out_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_94_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage4", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage4_subdone", "QuitState" : "ap_ST_fsm_pp0_stage4", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage4_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matrix_mult_Pipeline_VITIS_LOOP_94_2_fu_34.mul_mul_16s_16s_24_4_1_U997", "Parent" : "4"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matrix_mult_Pipeline_VITIS_LOOP_94_2_fu_34.mul_mul_16s_16s_24_4_1_U998", "Parent" : "4"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matrix_mult_Pipeline_VITIS_LOOP_94_2_fu_34.mul_mul_16s_16s_24_4_1_U999", "Parent" : "4"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matrix_mult_Pipeline_VITIS_LOOP_94_2_fu_34.mac_muladd_16s_16s_24ns_24_4_1_U1000", "Parent" : "4"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matrix_mult_Pipeline_VITIS_LOOP_94_2_fu_34.mac_muladd_16s_16s_24ns_24_4_1_U1001", "Parent" : "4"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matrix_mult_Pipeline_VITIS_LOOP_94_2_fu_34.mac_muladd_16s_16s_24ns_24_4_1_U1002", "Parent" : "4"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matrix_mult_Pipeline_VITIS_LOOP_94_2_fu_34.mul_mul_16s_16s_24_4_1_U1003", "Parent" : "4"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matrix_mult_Pipeline_VITIS_LOOP_94_2_fu_34.mul_mul_16s_16s_24_4_1_U1004", "Parent" : "4"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matrix_mult_Pipeline_VITIS_LOOP_94_2_fu_34.mac_muladd_16s_16s_24ns_24_4_1_U1005", "Parent" : "4"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matrix_mult_Pipeline_VITIS_LOOP_94_2_fu_34.mac_muladd_16s_16s_24ns_24_4_1_U1006", "Parent" : "4"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matrix_mult_Pipeline_VITIS_LOOP_94_2_fu_34.mac_muladd_16s_16s_24ns_24_4_1_U1007", "Parent" : "4"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matrix_mult_Pipeline_VITIS_LOOP_94_2_fu_34.mac_muladd_16s_16s_24ns_24_4_1_U1008", "Parent" : "4"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matrix_mult_Pipeline_VITIS_LOOP_94_2_fu_34.mac_muladd_16s_16s_24ns_24_4_1_U1009", "Parent" : "4"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matrix_mult_Pipeline_VITIS_LOOP_94_2_fu_34.mul_mul_16s_16s_24_4_1_U1010", "Parent" : "4"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matrix_mult_Pipeline_VITIS_LOOP_94_2_fu_34.mac_muladd_16s_16s_24ns_24_4_1_U1011", "Parent" : "4"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matrix_mult_Pipeline_VITIS_LOOP_94_2_fu_34.mac_muladd_16s_16s_24ns_24_4_1_U1012", "Parent" : "4"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matrix_mult_Pipeline_VITIS_LOOP_94_2_fu_34.mac_muladd_16s_16s_24ns_24_4_1_U1013", "Parent" : "4"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matrix_mult_Pipeline_VITIS_LOOP_94_2_fu_34.mac_muladd_16s_16s_24ns_24_4_1_U1014", "Parent" : "4"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matrix_mult_Pipeline_VITIS_LOOP_94_2_fu_34.mac_muladd_16s_16s_24ns_24_4_1_U1015", "Parent" : "4"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matrix_mult_Pipeline_VITIS_LOOP_94_2_fu_34.mac_muladd_16s_16s_24ns_24_4_1_U1016", "Parent" : "4"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matrix_mult_Pipeline_VITIS_LOOP_94_2_fu_34.mul_mul_16s_16s_24_4_1_U1017", "Parent" : "4"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matrix_mult_Pipeline_VITIS_LOOP_94_2_fu_34.mac_muladd_16s_16s_24ns_24_4_1_U1018", "Parent" : "4"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matrix_mult_Pipeline_VITIS_LOOP_94_2_fu_34.mac_muladd_16s_16s_24ns_24_4_1_U1019", "Parent" : "4"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matrix_mult_Pipeline_VITIS_LOOP_94_2_fu_34.mac_muladd_16s_16s_24ns_24_4_1_U1020", "Parent" : "4"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matrix_mult_Pipeline_VITIS_LOOP_94_2_fu_34.mac_muladd_16s_16s_24ns_24_4_1_U1021", "Parent" : "4"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matrix_mult_Pipeline_VITIS_LOOP_94_2_fu_34.mac_muladd_16s_16s_24ns_24_4_1_U1022", "Parent" : "4"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matrix_mult_Pipeline_VITIS_LOOP_94_2_fu_34.mac_muladd_16s_16s_24ns_24_4_1_U1023", "Parent" : "4"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matrix_mult_Pipeline_VITIS_LOOP_94_2_fu_34.mac_muladd_16s_16s_24ns_24_4_1_U1024", "Parent" : "4"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matrix_mult_Pipeline_VITIS_LOOP_94_2_fu_34.mul_mul_16s_16s_24_4_1_U1025", "Parent" : "4"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matrix_mult_Pipeline_VITIS_LOOP_94_2_fu_34.mac_muladd_16s_16s_24ns_24_4_1_U1026", "Parent" : "4"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matrix_mult_Pipeline_VITIS_LOOP_94_2_fu_34.mac_muladd_16s_16s_24ns_24_4_1_U1027", "Parent" : "4"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matrix_mult_Pipeline_VITIS_LOOP_94_2_fu_34.mac_muladd_16s_16s_24ns_24_4_1_U1028", "Parent" : "4"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matrix_mult_Pipeline_VITIS_LOOP_94_2_fu_34.mac_muladd_16s_16s_24ns_24_4_1_U1029", "Parent" : "4"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matrix_mult_Pipeline_VITIS_LOOP_94_2_fu_34.mac_muladd_16s_16s_24ns_24_4_1_U1030", "Parent" : "4"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matrix_mult_Pipeline_VITIS_LOOP_94_2_fu_34.mac_muladd_16s_16s_24ns_24_4_1_U1031", "Parent" : "4"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matrix_mult_Pipeline_VITIS_LOOP_94_2_fu_34.mac_muladd_16s_16s_24ns_24_4_1_U1032", "Parent" : "4"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matrix_mult_Pipeline_VITIS_LOOP_94_2_fu_34.mac_muladd_16s_16s_24ns_24_4_1_U1033", "Parent" : "4"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matrix_mult_Pipeline_VITIS_LOOP_94_2_fu_34.mac_muladd_16s_16s_24ns_24_4_1_U1034", "Parent" : "4"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matrix_mult_Pipeline_VITIS_LOOP_94_2_fu_34.mac_muladd_16s_16s_24ns_24_4_1_U1035", "Parent" : "4"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matrix_mult_Pipeline_VITIS_LOOP_94_2_fu_34.mac_muladd_16s_16s_24ns_24_4_1_U1036", "Parent" : "4"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matrix_mult_Pipeline_VITIS_LOOP_94_2_fu_34.mac_muladd_16s_16s_24ns_24_4_1_U1037", "Parent" : "4"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matrix_mult_Pipeline_VITIS_LOOP_94_2_fu_34.mac_muladd_16s_16s_24ns_24_4_1_U1038", "Parent" : "4"},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matrix_mult_Pipeline_VITIS_LOOP_94_2_fu_34.mac_muladd_16s_16s_24ns_24_4_1_U1039", "Parent" : "4"},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matrix_mult_Pipeline_VITIS_LOOP_94_2_fu_34.mac_muladd_16s_16s_24ns_24_4_1_U1040", "Parent" : "4"},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matrix_mult_Pipeline_VITIS_LOOP_94_2_fu_34.mac_muladd_16s_16s_24ns_24_4_1_U1041", "Parent" : "4"},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matrix_mult_Pipeline_VITIS_LOOP_94_2_fu_34.mac_muladd_16s_16s_24ns_24_4_1_U1042", "Parent" : "4"},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matrix_mult_Pipeline_VITIS_LOOP_94_2_fu_34.mac_muladd_16s_16s_24ns_24_4_1_U1043", "Parent" : "4"},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matrix_mult_Pipeline_VITIS_LOOP_94_2_fu_34.mac_muladd_16s_16s_24ns_24_4_1_U1044", "Parent" : "4"},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matrix_mult_Pipeline_VITIS_LOOP_94_2_fu_34.mac_muladd_16s_16s_24ns_24_4_1_U1045", "Parent" : "4"},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matrix_mult_Pipeline_VITIS_LOOP_94_2_fu_34.mac_muladd_16s_16s_24ns_24_4_1_U1046", "Parent" : "4"},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matrix_mult_Pipeline_VITIS_LOOP_94_2_fu_34.mac_muladd_16s_16s_24ns_24_4_1_U1047", "Parent" : "4"},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matrix_mult_Pipeline_VITIS_LOOP_94_2_fu_34.mac_muladd_16s_16s_24ns_24_4_1_U1048", "Parent" : "4"},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matrix_mult_Pipeline_VITIS_LOOP_94_2_fu_34.mac_muladd_16s_16s_24ns_24_4_1_U1049", "Parent" : "4"},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matrix_mult_Pipeline_VITIS_LOOP_94_2_fu_34.mac_muladd_16s_16s_24ns_24_4_1_U1050", "Parent" : "4"},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matrix_mult_Pipeline_VITIS_LOOP_94_2_fu_34.mac_muladd_16s_16s_24ns_24_4_1_U1051", "Parent" : "4"},
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matrix_mult_Pipeline_VITIS_LOOP_94_2_fu_34.mac_muladd_16s_16s_24ns_24_4_1_U1052", "Parent" : "4"},
	{"ID" : "61", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matrix_mult_Pipeline_VITIS_LOOP_94_2_fu_34.mac_muladd_16s_16s_24ns_24_4_1_U1053", "Parent" : "4"},
	{"ID" : "62", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matrix_mult_Pipeline_VITIS_LOOP_94_2_fu_34.mac_muladd_16s_16s_24ns_24_4_1_U1054", "Parent" : "4"},
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matrix_mult_Pipeline_VITIS_LOOP_94_2_fu_34.mac_muladd_16s_16s_24ns_24_4_1_U1055", "Parent" : "4"},
	{"ID" : "64", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matrix_mult_Pipeline_VITIS_LOOP_94_2_fu_34.mac_muladd_16s_16s_24ns_24_4_1_U1056", "Parent" : "4"},
	{"ID" : "65", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matrix_mult_Pipeline_VITIS_LOOP_94_2_fu_34.mac_muladd_16s_16s_24ns_24_4_1_U1057", "Parent" : "4"},
	{"ID" : "66", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matrix_mult_Pipeline_VITIS_LOOP_94_2_fu_34.mac_muladd_16s_16s_24ns_24_4_1_U1058", "Parent" : "4"},
	{"ID" : "67", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matrix_mult_Pipeline_VITIS_LOOP_94_2_fu_34.mac_muladd_16s_16s_24ns_24_4_1_U1059", "Parent" : "4"},
	{"ID" : "68", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matrix_mult_Pipeline_VITIS_LOOP_94_2_fu_34.mac_muladd_16s_16s_24ns_24_4_1_U1060", "Parent" : "4"},
	{"ID" : "69", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matrix_mult_Pipeline_VITIS_LOOP_94_2_fu_34.flow_control_loop_pipe_sequential_init_U", "Parent" : "4"}]}


set ArgLastReadFirstWriteLatency {
	matrix_mult {
		Q {Type I LastRead 1 FirstWrite -1}
		noise_out {Type I LastRead 8 FirstWrite -1}
		MULQ_out {Type O LastRead -1 FirstWrite 13}}
	matrix_mult_Pipeline_VITIS_LOOP_88_1 {
		Q_TEMP_V {Type O LastRead -1 FirstWrite 1}
		Q {Type I LastRead 1 FirstWrite -1}}
	matrix_mult_Pipeline_VITIS_LOOP_94_2 {
		Q_TEMP_V {Type I LastRead 8 FirstWrite -1}
		noise_out {Type I LastRead 8 FirstWrite -1}
		MULQ_out {Type O LastRead -1 FirstWrite 13}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "212", "Max" : "212"}
	, {"Name" : "Interval", "Min" : "212", "Max" : "212"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	Q { ap_fifo {  { Q_dout fifo_data 0 16 }  { Q_empty_n fifo_status 0 1 }  { Q_read fifo_update 1 1 } } }
	noise_out { ap_fifo {  { noise_out_dout fifo_data 0 16 }  { noise_out_empty_n fifo_status 0 1 }  { noise_out_read fifo_update 1 1 } } }
	MULQ_out { ap_fifo {  { MULQ_out_din fifo_data 1 16 }  { MULQ_out_full_n fifo_status 0 1 }  { MULQ_out_write fifo_update 1 1 } } }
}

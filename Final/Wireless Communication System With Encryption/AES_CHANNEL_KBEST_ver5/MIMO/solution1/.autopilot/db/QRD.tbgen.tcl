set moduleName QRD
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
set C_modelName {QRD}
set C_modelType { void 0 }
set C_modelArgList {
	{ H_real_spl1 int 16 regular {fifo 0 volatile } {global 0}  }
	{ H_imag_spl1 int 16 regular {fifo 0 volatile } {global 0}  }
	{ R int 16 regular {fifo 1 volatile } {global 1}  }
	{ Q int 16 regular {fifo 1 volatile } {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "H_real_spl1", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "H_imag_spl1", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "R", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "Q", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 22
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
	{ H_real_spl1_dout sc_in sc_lv 16 signal 0 } 
	{ H_real_spl1_empty_n sc_in sc_logic 1 signal 0 } 
	{ H_real_spl1_read sc_out sc_logic 1 signal 0 } 
	{ H_imag_spl1_dout sc_in sc_lv 16 signal 1 } 
	{ H_imag_spl1_empty_n sc_in sc_logic 1 signal 1 } 
	{ H_imag_spl1_read sc_out sc_logic 1 signal 1 } 
	{ R_din sc_out sc_lv 16 signal 2 } 
	{ R_full_n sc_in sc_logic 1 signal 2 } 
	{ R_write sc_out sc_logic 1 signal 2 } 
	{ Q_din sc_out sc_lv 16 signal 3 } 
	{ Q_full_n sc_in sc_logic 1 signal 3 } 
	{ Q_write sc_out sc_logic 1 signal 3 } 
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
 	{ "name": "H_real_spl1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "H_real_spl1", "role": "dout" }} , 
 	{ "name": "H_real_spl1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "H_real_spl1", "role": "empty_n" }} , 
 	{ "name": "H_real_spl1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "H_real_spl1", "role": "read" }} , 
 	{ "name": "H_imag_spl1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "H_imag_spl1", "role": "dout" }} , 
 	{ "name": "H_imag_spl1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "H_imag_spl1", "role": "empty_n" }} , 
 	{ "name": "H_imag_spl1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "H_imag_spl1", "role": "read" }} , 
 	{ "name": "R_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "R", "role": "din" }} , 
 	{ "name": "R_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "R", "role": "full_n" }} , 
 	{ "name": "R_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "R", "role": "write" }} , 
 	{ "name": "Q_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "Q", "role": "din" }} , 
 	{ "name": "Q_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Q", "role": "full_n" }} , 
 	{ "name": "Q_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Q", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "11", "16", "22", "28", "34", "40", "46", "52", "62", "73", "149", "175", "176", "177", "178", "179", "180", "181", "182", "183", "184", "185", "186", "187", "188"],
		"CDFG" : "QRD",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3350", "EstimateLatencyMax" : "9452",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "H_real_spl1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_QRD_Pipeline_CHANNEL2REAL_fu_2983", "Port" : "H_real_spl1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "H_imag_spl1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_QRD_Pipeline_CHANNEL2REAL_fu_2983", "Port" : "H_imag_spl1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "cordic_phase_V30", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_CORDIC_V_fu_3039", "Port" : "cordic_phase_V30", "Inst_start_state" : "50", "Inst_end_state" : "51"}]},
			{"Name" : "cordic_phase_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "grp_CORDIC_R_fu_3108", "Port" : "cordic_phase_V", "Inst_start_state" : "30", "Inst_end_state" : "31"},
					{"ID" : "34", "SubInstance" : "grp_CORDIC_R_fu_3090", "Port" : "cordic_phase_V", "Inst_start_state" : "41", "Inst_end_state" : "42"},
					{"ID" : "40", "SubInstance" : "grp_CORDIC_R_fu_3099", "Port" : "cordic_phase_V", "Inst_start_state" : "30", "Inst_end_state" : "31"},
					{"ID" : "22", "SubInstance" : "grp_CORDIC_R_fu_3072", "Port" : "cordic_phase_V", "Inst_start_state" : "49", "Inst_end_state" : "50"},
					{"ID" : "28", "SubInstance" : "grp_CORDIC_R_fu_3081", "Port" : "cordic_phase_V", "Inst_start_state" : "41", "Inst_end_state" : "42"},
					{"ID" : "16", "SubInstance" : "grp_CORDIC_R_fu_3054", "Port" : "cordic_phase_V", "Inst_start_state" : "49", "Inst_end_state" : "50"}]},
			{"Name" : "R", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "62", "SubInstance" : "grp_QRD_Pipeline_LOOP_02_VITIS_LOOP_260_6_fu_3215", "Port" : "R", "Inst_start_state" : "53", "Inst_end_state" : "54"}]},
			{"Name" : "Q", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "149", "SubInstance" : "grp_QRD_Pipeline_VITIS_LOOP_325_9_VITIS_LOOP_326_10_fu_3420", "Port" : "Q", "Inst_start_state" : "61", "Inst_end_state" : "62"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_139_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "62", "FirstState" : "ap_ST_fsm_state4", "LastState" : ["ap_ST_fsm_state13"], "QuitState" : ["ap_ST_fsm_state4"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state14"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_152_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "62", "FirstState" : "ap_ST_fsm_state14", "LastState" : ["ap_ST_fsm_state29"], "QuitState" : ["ap_ST_fsm_state14"], "PreState" : ["ap_ST_fsm_state4"], "PostState" : ["ap_ST_fsm_state30"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_187_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "62", "FirstState" : "ap_ST_fsm_state32", "LastState" : ["ap_ST_fsm_state39"], "QuitState" : ["ap_ST_fsm_state32"], "PreState" : ["ap_ST_fsm_state31"], "PostState" : ["ap_ST_fsm_state40"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_221_4", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "62", "FirstState" : "ap_ST_fsm_state43", "LastState" : ["ap_ST_fsm_state48"], "QuitState" : ["ap_ST_fsm_state43"], "PreState" : ["ap_ST_fsm_state42"], "PostState" : ["ap_ST_fsm_state49"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_276_7", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "62", "FirstState" : "ap_ST_fsm_state56", "LastState" : ["ap_ST_fsm_state57"], "QuitState" : ["ap_ST_fsm_state56"], "PreState" : ["ap_ST_fsm_state55"], "PostState" : ["ap_ST_fsm_state58"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Y_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Y_V_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Y_V_2_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Y_V_3_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Y_V_4_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Y_V_5_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Y_V_6_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Y_V_7_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_QRD_Pipeline_CHANNEL2REAL_fu_2983", "Parent" : "0", "Child" : ["10"],
		"CDFG" : "QRD_Pipeline_CHANNEL2REAL",
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
			{"Name" : "Y_V_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Y_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Y_V_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Y_V_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Y_V_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Y_V_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Y_V_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Y_V_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_0_0_036012404_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_036012400_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_036012396_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_036012392_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_036012386_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_036012382_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_036012378_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_036012374_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_036012372_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_036012368_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_036012364_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_036012360_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_036012356_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_036012352_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_036012348_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_036012344_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_036002340_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_036002336_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_036002332_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_036002328_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_036002322_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_036002318_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_036002314_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_036002310_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_036002308_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_036002304_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_036002300_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_036002296_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_036002292_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_036002288_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_036002284_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_036002280_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "H_real_spl1", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "H_real_spl1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "H_imag_spl1", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "H_imag_spl1_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "CHANNEL2REAL", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QRD_Pipeline_CHANNEL2REAL_fu_2983.flow_control_loop_pipe_sequential_init_U", "Parent" : "9"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_CORDIC_V_fu_3039", "Parent" : "0", "Child" : ["12", "13", "15"],
		"CDFG" : "CORDIC_V",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "55", "EstimateLatencyMax" : "145",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_in", "Type" : "None", "Direction" : "I"},
			{"Name" : "y_in", "Type" : "None", "Direction" : "I"},
			{"Name" : "cordic_phase_V30", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_91_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "7", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state4"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state5"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CORDIC_V_fu_3039.cordic_phase_V30_U", "Parent" : "11"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CORDIC_V_fu_3039.grp_CORDIC_V_Pipeline_VITIS_LOOP_94_2_fu_179", "Parent" : "11", "Child" : ["14"],
		"CDFG" : "CORDIC_V_Pipeline_VITIS_LOOP_94_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "11",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "temp_y_V_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_x_V_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "k", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_y_V_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "temp_x_V_2_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_94_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_CORDIC_V_fu_3039.grp_CORDIC_V_Pipeline_VITIS_LOOP_94_2_fu_179.flow_control_loop_pipe_sequential_init_U", "Parent" : "13"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CORDIC_V_fu_3039.mul_mul_16s_8ns_25_4_1_U175", "Parent" : "11"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_CORDIC_R_fu_3054", "Parent" : "0", "Child" : ["17", "18", "20", "21"],
		"CDFG" : "CORDIC_R",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "55", "EstimateLatencyMax" : "145",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_in", "Type" : "None", "Direction" : "I"},
			{"Name" : "y_in", "Type" : "None", "Direction" : "I"},
			{"Name" : "z_in", "Type" : "None", "Direction" : "I"},
			{"Name" : "cordic_phase_V", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_29_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "7", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state4"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state5"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CORDIC_R_fu_3054.cordic_phase_V_U", "Parent" : "16"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CORDIC_R_fu_3054.grp_CORDIC_R_Pipeline_VITIS_LOOP_32_2_fu_163", "Parent" : "16", "Child" : ["19"],
		"CDFG" : "CORDIC_R_Pipeline_VITIS_LOOP_32_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "11",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "temp_y_V_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_x_V_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "k", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_y_V_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "temp_x_V_4_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_32_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_CORDIC_R_fu_3054.grp_CORDIC_R_Pipeline_VITIS_LOOP_32_2_fu_163.flow_control_loop_pipe_sequential_init_U", "Parent" : "18"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CORDIC_R_fu_3054.mul_mul_16s_8ns_25_4_1_U185", "Parent" : "16"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CORDIC_R_fu_3054.mul_mul_16s_8ns_25_4_1_U186", "Parent" : "16"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_CORDIC_R_fu_3072", "Parent" : "0", "Child" : ["23", "24", "26", "27"],
		"CDFG" : "CORDIC_R",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "55", "EstimateLatencyMax" : "145",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_in", "Type" : "None", "Direction" : "I"},
			{"Name" : "y_in", "Type" : "None", "Direction" : "I"},
			{"Name" : "z_in", "Type" : "None", "Direction" : "I"},
			{"Name" : "cordic_phase_V", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_29_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "7", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state4"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state5"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CORDIC_R_fu_3072.cordic_phase_V_U", "Parent" : "22"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CORDIC_R_fu_3072.grp_CORDIC_R_Pipeline_VITIS_LOOP_32_2_fu_163", "Parent" : "22", "Child" : ["25"],
		"CDFG" : "CORDIC_R_Pipeline_VITIS_LOOP_32_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "11",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "temp_y_V_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_x_V_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "k", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_y_V_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "temp_x_V_4_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_32_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_CORDIC_R_fu_3072.grp_CORDIC_R_Pipeline_VITIS_LOOP_32_2_fu_163.flow_control_loop_pipe_sequential_init_U", "Parent" : "24"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CORDIC_R_fu_3072.mul_mul_16s_8ns_25_4_1_U185", "Parent" : "22"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CORDIC_R_fu_3072.mul_mul_16s_8ns_25_4_1_U186", "Parent" : "22"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_CORDIC_R_fu_3081", "Parent" : "0", "Child" : ["29", "30", "32", "33"],
		"CDFG" : "CORDIC_R",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "55", "EstimateLatencyMax" : "145",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_in", "Type" : "None", "Direction" : "I"},
			{"Name" : "y_in", "Type" : "None", "Direction" : "I"},
			{"Name" : "z_in", "Type" : "None", "Direction" : "I"},
			{"Name" : "cordic_phase_V", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_29_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "7", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state4"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state5"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CORDIC_R_fu_3081.cordic_phase_V_U", "Parent" : "28"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CORDIC_R_fu_3081.grp_CORDIC_R_Pipeline_VITIS_LOOP_32_2_fu_163", "Parent" : "28", "Child" : ["31"],
		"CDFG" : "CORDIC_R_Pipeline_VITIS_LOOP_32_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "11",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "temp_y_V_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_x_V_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "k", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_y_V_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "temp_x_V_4_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_32_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "31", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_CORDIC_R_fu_3081.grp_CORDIC_R_Pipeline_VITIS_LOOP_32_2_fu_163.flow_control_loop_pipe_sequential_init_U", "Parent" : "30"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CORDIC_R_fu_3081.mul_mul_16s_8ns_25_4_1_U185", "Parent" : "28"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CORDIC_R_fu_3081.mul_mul_16s_8ns_25_4_1_U186", "Parent" : "28"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_CORDIC_R_fu_3090", "Parent" : "0", "Child" : ["35", "36", "38", "39"],
		"CDFG" : "CORDIC_R",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "55", "EstimateLatencyMax" : "145",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_in", "Type" : "None", "Direction" : "I"},
			{"Name" : "y_in", "Type" : "None", "Direction" : "I"},
			{"Name" : "z_in", "Type" : "None", "Direction" : "I"},
			{"Name" : "cordic_phase_V", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_29_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "7", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state4"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state5"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CORDIC_R_fu_3090.cordic_phase_V_U", "Parent" : "34"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CORDIC_R_fu_3090.grp_CORDIC_R_Pipeline_VITIS_LOOP_32_2_fu_163", "Parent" : "34", "Child" : ["37"],
		"CDFG" : "CORDIC_R_Pipeline_VITIS_LOOP_32_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "11",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "temp_y_V_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_x_V_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "k", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_y_V_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "temp_x_V_4_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_32_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "37", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_CORDIC_R_fu_3090.grp_CORDIC_R_Pipeline_VITIS_LOOP_32_2_fu_163.flow_control_loop_pipe_sequential_init_U", "Parent" : "36"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CORDIC_R_fu_3090.mul_mul_16s_8ns_25_4_1_U185", "Parent" : "34"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CORDIC_R_fu_3090.mul_mul_16s_8ns_25_4_1_U186", "Parent" : "34"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_CORDIC_R_fu_3099", "Parent" : "0", "Child" : ["41", "42", "44", "45"],
		"CDFG" : "CORDIC_R",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "55", "EstimateLatencyMax" : "145",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_in", "Type" : "None", "Direction" : "I"},
			{"Name" : "y_in", "Type" : "None", "Direction" : "I"},
			{"Name" : "z_in", "Type" : "None", "Direction" : "I"},
			{"Name" : "cordic_phase_V", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_29_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "7", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state4"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state5"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CORDIC_R_fu_3099.cordic_phase_V_U", "Parent" : "40"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CORDIC_R_fu_3099.grp_CORDIC_R_Pipeline_VITIS_LOOP_32_2_fu_163", "Parent" : "40", "Child" : ["43"],
		"CDFG" : "CORDIC_R_Pipeline_VITIS_LOOP_32_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "11",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "temp_y_V_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_x_V_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "k", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_y_V_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "temp_x_V_4_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_32_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "43", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_CORDIC_R_fu_3099.grp_CORDIC_R_Pipeline_VITIS_LOOP_32_2_fu_163.flow_control_loop_pipe_sequential_init_U", "Parent" : "42"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CORDIC_R_fu_3099.mul_mul_16s_8ns_25_4_1_U185", "Parent" : "40"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CORDIC_R_fu_3099.mul_mul_16s_8ns_25_4_1_U186", "Parent" : "40"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_CORDIC_R_fu_3108", "Parent" : "0", "Child" : ["47", "48", "50", "51"],
		"CDFG" : "CORDIC_R",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "55", "EstimateLatencyMax" : "145",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_in", "Type" : "None", "Direction" : "I"},
			{"Name" : "y_in", "Type" : "None", "Direction" : "I"},
			{"Name" : "z_in", "Type" : "None", "Direction" : "I"},
			{"Name" : "cordic_phase_V", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_29_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "7", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state4"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state5"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CORDIC_R_fu_3108.cordic_phase_V_U", "Parent" : "46"},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CORDIC_R_fu_3108.grp_CORDIC_R_Pipeline_VITIS_LOOP_32_2_fu_163", "Parent" : "46", "Child" : ["49"],
		"CDFG" : "CORDIC_R_Pipeline_VITIS_LOOP_32_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "11",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "temp_y_V_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_x_V_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "k", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_y_V_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "temp_x_V_4_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_32_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "49", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_CORDIC_R_fu_3108.grp_CORDIC_R_Pipeline_VITIS_LOOP_32_2_fu_163.flow_control_loop_pipe_sequential_init_U", "Parent" : "48"},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CORDIC_R_fu_3108.mul_mul_16s_8ns_25_4_1_U185", "Parent" : "46"},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CORDIC_R_fu_3108.mul_mul_16s_8ns_25_4_1_U186", "Parent" : "46"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_QRD_Pipeline_LOOP_01_fu_3120", "Parent" : "0", "Child" : ["53", "54", "55", "56", "57", "58", "59", "60", "61"],
		"CDFG" : "QRD_Pipeline_LOOP_01",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6", "EstimateLatencyMax" : "6",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "HH_V_46", "Type" : "None", "Direction" : "I"},
			{"Name" : "HH_V_47", "Type" : "None", "Direction" : "I"},
			{"Name" : "HH_V_81", "Type" : "None", "Direction" : "I"},
			{"Name" : "HH_V_83", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_105", "Type" : "None", "Direction" : "I"},
			{"Name" : "HH_V_94", "Type" : "None", "Direction" : "I"},
			{"Name" : "HH_V_95", "Type" : "None", "Direction" : "I"},
			{"Name" : "HH_V_97", "Type" : "None", "Direction" : "I"},
			{"Name" : "HH_V_102", "Type" : "None", "Direction" : "I"},
			{"Name" : "HH_V_103", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_106", "Type" : "None", "Direction" : "I"},
			{"Name" : "HH_V_105", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_107", "Type" : "None", "Direction" : "I"},
			{"Name" : "HH_V_85", "Type" : "None", "Direction" : "I"},
			{"Name" : "HH_V_87", "Type" : "None", "Direction" : "I"},
			{"Name" : "HH_V_89", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_108", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_109", "Type" : "None", "Direction" : "I"},
			{"Name" : "HH_V_99", "Type" : "None", "Direction" : "I"},
			{"Name" : "HH_V_101", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_110", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_111", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_112", "Type" : "None", "Direction" : "I"},
			{"Name" : "HH_V_104", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_113", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_114", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_0_033131932_lcssa2062_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_033131929_lcssa2060_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_033131926_lcssa2058_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_033131923_lcssa2056_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_033131921_lcssa2054_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_033131918_lcssa2052_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_033131915_lcssa2050_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_033131912_lcssa2048_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_033131908_lcssa2046_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_033131905_lcssa2044_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_033131902_lcssa2042_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_033131899_lcssa2040_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_033131896_lcssa2038_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_033131893_lcssa2036_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_033131890_lcssa2034_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_033131887_lcssa2032_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv_i_i_i23841884_lcssa2030_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv_i_i_i23841881_lcssa2028_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv_i_i_i23841878_lcssa2026_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv_i_i_i23841875_lcssa2024_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv_i_i_i23841873_lcssa2022_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv_i_i_i23841870_lcssa2020_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv_i_i_i23841867_lcssa2018_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv_i_i_i23841864_lcssa2016_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv_i_i_i23841860_lcssa2014_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv_i_i_i23841857_lcssa2012_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv_i_i_i23841854_lcssa2010_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv_i_i_i23841851_lcssa2008_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv_i_i_i23841848_lcssa2006_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv_i_i_i23841845_lcssa2004_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv_i_i_i23841842_lcssa2002_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv_i_i_i23841839_lcssa2000_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_033121836_lcssa1998_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_033121833_lcssa1996_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_033121830_lcssa1994_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_033121827_lcssa1992_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_033121825_lcssa1990_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_033121822_lcssa1988_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_033121819_lcssa1986_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_033121816_lcssa1984_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_033121812_lcssa1982_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_033121809_lcssa1980_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_033121806_lcssa1978_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_033121803_lcssa1976_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_033121800_lcssa1974_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_033121797_lcssa1972_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_033121794_lcssa1970_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_033121791_lcssa1968_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_033131788_lcssa1966_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_033131785_lcssa1964_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_033131782_lcssa1962_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_033131779_lcssa1960_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_033131777_lcssa1958_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_033131774_lcssa1956_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_033131771_lcssa1954_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_033131768_lcssa1952_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_033131764_lcssa1950_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_033131761_lcssa1948_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_033131758_lcssa1946_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_033131755_lcssa1944_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_033131752_lcssa1942_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_033131749_lcssa1940_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_033131746_lcssa1938_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_033131743_lcssa1936_i_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "LOOP_01", "PipelineType" : "NotSupport"}]},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QRD_Pipeline_LOOP_01_fu_3120.mux_42_16_1_1_U190", "Parent" : "52"},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QRD_Pipeline_LOOP_01_fu_3120.mux_42_16_1_1_U191", "Parent" : "52"},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QRD_Pipeline_LOOP_01_fu_3120.mux_42_16_1_1_U192", "Parent" : "52"},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QRD_Pipeline_LOOP_01_fu_3120.mux_42_16_1_1_U193", "Parent" : "52"},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QRD_Pipeline_LOOP_01_fu_3120.mux_42_16_1_1_U194", "Parent" : "52"},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QRD_Pipeline_LOOP_01_fu_3120.mux_42_16_1_1_U195", "Parent" : "52"},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QRD_Pipeline_LOOP_01_fu_3120.mux_42_16_1_1_U196", "Parent" : "52"},
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QRD_Pipeline_LOOP_01_fu_3120.mux_42_16_1_1_U197", "Parent" : "52"},
	{"ID" : "61", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QRD_Pipeline_LOOP_01_fu_3120.flow_control_loop_pipe_sequential_init_U", "Parent" : "52"},
	{"ID" : "62", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_QRD_Pipeline_LOOP_02_VITIS_LOOP_260_6_fu_3215", "Parent" : "0", "Child" : ["63", "64", "65", "66", "67", "68", "69", "70", "71", "72"],
		"CDFG" : "QRD_Pipeline_LOOP_02_VITIS_LOOP_260_6",
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
			{"Name" : "p_0_0_033131774_lcssa1956_i_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_i_i_i23841870_lcssa2020_i_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_0_033131771_lcssa1954_i_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_i_i_i23841867_lcssa2018_i_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_0_033131768_lcssa1952_i_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_i_i_i23841864_lcssa2016_i_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_0_033131777_lcssa1958_i_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_i_i_i23841873_lcssa2022_i_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_0_033121822_lcssa1988_i_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_0_033131918_lcssa2052_i_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_0_033121819_lcssa1986_i_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_0_033131915_lcssa2050_i_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_0_033121816_lcssa1984_i_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_0_033131912_lcssa2048_i_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_0_033121825_lcssa1990_i_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_0_033131921_lcssa2054_i_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_0_033131761_lcssa1948_i_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_i_i_i23841857_lcssa2012_i_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_0_033131758_lcssa1946_i_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_i_i_i23841854_lcssa2010_i_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_0_033131755_lcssa1944_i_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_i_i_i23841851_lcssa2008_i_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_0_033131764_lcssa1950_i_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_i_i_i23841860_lcssa2014_i_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_0_033121809_lcssa1980_i_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_0_033131905_lcssa2044_i_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_0_033121806_lcssa1978_i_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_0_033131902_lcssa2042_i_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_0_033121803_lcssa1976_i_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_0_033131899_lcssa2040_i_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_0_033121812_lcssa1982_i_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_0_033131908_lcssa2046_i_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_0_033131749_lcssa1940_i_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_i_i_i23841845_lcssa2004_i_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_0_033131746_lcssa1938_i_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_i_i_i23841842_lcssa2002_i_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_0_033131743_lcssa1936_i_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_i_i_i23841839_lcssa2000_i_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_0_033131752_lcssa1942_i_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_i_i_i23841848_lcssa2006_i_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_0_033121797_lcssa1972_i_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_0_033131893_lcssa2036_i_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_0_033121794_lcssa1970_i_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_0_033131890_lcssa2034_i_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_0_033121791_lcssa1968_i_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_0_033131887_lcssa2032_i_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_0_033121800_lcssa1974_i_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_0_033131896_lcssa2038_i_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_0_033131785_lcssa1964_i_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_i_i_i23841881_lcssa2028_i_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_0_033131782_lcssa1962_i_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_i_i_i23841878_lcssa2026_i_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_0_033131779_lcssa1960_i_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_i_i_i23841875_lcssa2024_i_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_0_033131788_lcssa1966_i_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_i_i_i23841884_lcssa2030_i_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_0_033121833_lcssa1996_i_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_0_033131929_lcssa2060_i_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_0_033121830_lcssa1994_i_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_0_033131926_lcssa2058_i_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_0_033121827_lcssa1992_i_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_0_033131923_lcssa2056_i_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_0_033121836_lcssa1998_i_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_0_033131932_lcssa2062_i_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "R", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "R_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "LOOP_02_VITIS_LOOP_260_6", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QRD_Pipeline_LOOP_02_VITIS_LOOP_260_6_fu_3215.mux_84_16_1_1_U290", "Parent" : "62"},
	{"ID" : "64", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QRD_Pipeline_LOOP_02_VITIS_LOOP_260_6_fu_3215.mux_84_16_1_1_U291", "Parent" : "62"},
	{"ID" : "65", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QRD_Pipeline_LOOP_02_VITIS_LOOP_260_6_fu_3215.mux_84_16_1_1_U292", "Parent" : "62"},
	{"ID" : "66", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QRD_Pipeline_LOOP_02_VITIS_LOOP_260_6_fu_3215.mux_84_16_1_1_U293", "Parent" : "62"},
	{"ID" : "67", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QRD_Pipeline_LOOP_02_VITIS_LOOP_260_6_fu_3215.mux_84_16_1_1_U294", "Parent" : "62"},
	{"ID" : "68", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QRD_Pipeline_LOOP_02_VITIS_LOOP_260_6_fu_3215.mux_84_16_1_1_U295", "Parent" : "62"},
	{"ID" : "69", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QRD_Pipeline_LOOP_02_VITIS_LOOP_260_6_fu_3215.mux_84_16_1_1_U296", "Parent" : "62"},
	{"ID" : "70", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QRD_Pipeline_LOOP_02_VITIS_LOOP_260_6_fu_3215.mux_84_16_1_1_U297", "Parent" : "62"},
	{"ID" : "71", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QRD_Pipeline_LOOP_02_VITIS_LOOP_260_6_fu_3215.mux_84_16_1_1_U298", "Parent" : "62"},
	{"ID" : "72", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QRD_Pipeline_LOOP_02_VITIS_LOOP_260_6_fu_3215.flow_control_loop_pipe_sequential_init_U", "Parent" : "62"},
	{"ID" : "73", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_QRD_Pipeline_VITIS_LOOP_277_8_fu_3285", "Parent" : "0", "Child" : ["74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "120", "121", "122", "123", "124", "125", "126", "127", "128", "129", "130", "131", "132", "133", "134", "135", "136", "137", "138", "139", "140", "141", "142", "143", "144", "145", "146", "147", "148"],
		"CDFG" : "QRD_Pipeline_VITIS_LOOP_277_8",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "29", "EstimateLatencyMax" : "218",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "zext_ln276", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_22", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_23_cast_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_i_i_i13511486_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_i_i_i13511482_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_i_i_i13511478_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_i_i_i13511474_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_i_i_i13511470_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_i_i_i13511466_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_i_i_i13511462_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_i_i_i13511458_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_i_i_i13841454_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_i_i_i13841450_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_i_i_i13841446_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_i_i_i13841442_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_i_i_i13841438_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_i_i_i13841434_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_i_i_i13841430_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_i_i_i13841426_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_i_i_i14171422_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_i_i_i14171418_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_i_i_i14171414_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_i_i_i14171410_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_i_i_i14171406_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_i_i_i14171402_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_i_i_i14171398_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_i_i_i14171394_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_i_i_i14501390_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_i_i_i14501386_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_i_i_i14501382_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_i_i_i14501378_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_i_i_i14501374_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_i_i_i14501370_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_i_i_i14501366_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_i_i_i14501362_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_i_i_i14831358_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_i_i_i14831354_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_i_i_i14831350_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_i_i_i14831346_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_i_i_i14831342_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_i_i_i14831338_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_i_i_i14831334_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_i_i_i14831330_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_i_i_i15161326_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_i_i_i15161322_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_i_i_i15161318_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_i_i_i15161314_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_i_i_i15161310_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_i_i_i15161306_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_i_i_i15161302_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_i_i_i15161298_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_i_i_i15491294_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_i_i_i15491290_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_i_i_i15491286_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_i_i_i15491282_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_i_i_i15491278_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_i_i_i15491274_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_i_i_i15491270_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_i_i_i15491266_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_i_i_i3621262_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_i_i_i11201258_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_i_i_i11531254_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_i_i_i11861250_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_i_i_i12191246_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_i_i_i12521242_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_i_i_i12851238_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_i_i_i13181234_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_i_i_i3621230_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_i_i_i11201226_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_i_i_i11531222_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_i_i_i11861218_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_i_i_i12191214_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_i_i_i12521210_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_i_i_i12851206_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_i_i_i13181202_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_i_i_i3621198_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_i_i_i11201194_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_i_i_i11531190_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_i_i_i11861186_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_i_i_i12191182_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_i_i_i12521178_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_i_i_i12851174_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_i_i_i13181170_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_i_i_i3621166_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_i_i_i11201162_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_i_i_i11531158_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_i_i_i11861154_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_i_i_i12191150_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_i_i_i12521146_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_i_i_i12851142_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_i_i_i13181138_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_i_i_i3621134_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_i_i_i11201130_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_i_i_i11531126_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_i_i_i11861122_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_i_i_i12191118_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_i_i_i12521114_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_i_i_i12851110_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_i_i_i13181106_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_i_i_i3621102_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_i_i_i11201098_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_i_i_i11531094_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_i_i_i11861090_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_i_i_i12191086_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_i_i_i12521082_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_i_i_i12851078_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_i_i_i13181074_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_i_i_i3621070_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_i_i_i11201066_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_i_i_i11531062_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_i_i_i11861058_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_i_i_i12191054_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_i_i_i12521050_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_i_i_i12851046_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_i_i_i13181042_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_i_i_i3621038_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_i_i_i11201034_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_i_i_i11531030_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_i_i_i11861026_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_i_i_i12191022_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_i_i_i12521018_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_i_i_i12851014_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_i_i_i13181010_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_i_i_i15821006_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_i_i_i15821002_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_i_i_i1582998_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_i_i_i1582994_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_i_i_i1582990_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_i_i_i1582986_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_i_i_i1582982_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_i_i_i1582978_i_out", "Type" : "OVld", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_277_8", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "27", "FirstState" : "ap_ST_fsm_pp0_stage1", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage1_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "74", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QRD_Pipeline_VITIS_LOOP_277_8_fu_3285.mux_83_16_1_1_U365", "Parent" : "73"},
	{"ID" : "75", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QRD_Pipeline_VITIS_LOOP_277_8_fu_3285.mux_83_16_1_1_U366", "Parent" : "73"},
	{"ID" : "76", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QRD_Pipeline_VITIS_LOOP_277_8_fu_3285.mux_83_16_1_1_U367", "Parent" : "73"},
	{"ID" : "77", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QRD_Pipeline_VITIS_LOOP_277_8_fu_3285.mux_83_16_1_1_U368", "Parent" : "73"},
	{"ID" : "78", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QRD_Pipeline_VITIS_LOOP_277_8_fu_3285.mux_83_16_1_1_U369", "Parent" : "73"},
	{"ID" : "79", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QRD_Pipeline_VITIS_LOOP_277_8_fu_3285.mux_83_16_1_1_U370", "Parent" : "73"},
	{"ID" : "80", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QRD_Pipeline_VITIS_LOOP_277_8_fu_3285.mux_83_16_1_1_U371", "Parent" : "73"},
	{"ID" : "81", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QRD_Pipeline_VITIS_LOOP_277_8_fu_3285.mux_83_16_1_1_U372", "Parent" : "73"},
	{"ID" : "82", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QRD_Pipeline_VITIS_LOOP_277_8_fu_3285.mux_83_16_1_1_U373", "Parent" : "73"},
	{"ID" : "83", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QRD_Pipeline_VITIS_LOOP_277_8_fu_3285.mux_83_16_1_1_U374", "Parent" : "73"},
	{"ID" : "84", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QRD_Pipeline_VITIS_LOOP_277_8_fu_3285.mux_83_16_1_1_U375", "Parent" : "73"},
	{"ID" : "85", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QRD_Pipeline_VITIS_LOOP_277_8_fu_3285.mux_83_16_1_1_U376", "Parent" : "73"},
	{"ID" : "86", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QRD_Pipeline_VITIS_LOOP_277_8_fu_3285.mux_83_16_1_1_U377", "Parent" : "73"},
	{"ID" : "87", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QRD_Pipeline_VITIS_LOOP_277_8_fu_3285.mux_83_16_1_1_U378", "Parent" : "73"},
	{"ID" : "88", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QRD_Pipeline_VITIS_LOOP_277_8_fu_3285.mux_83_16_1_1_U379", "Parent" : "73"},
	{"ID" : "89", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QRD_Pipeline_VITIS_LOOP_277_8_fu_3285.mux_83_16_1_1_U380", "Parent" : "73"},
	{"ID" : "90", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QRD_Pipeline_VITIS_LOOP_277_8_fu_3285.mux_83_16_1_1_U381", "Parent" : "73"},
	{"ID" : "91", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QRD_Pipeline_VITIS_LOOP_277_8_fu_3285.mux_83_16_1_1_U382", "Parent" : "73"},
	{"ID" : "92", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QRD_Pipeline_VITIS_LOOP_277_8_fu_3285.mux_83_16_1_1_U383", "Parent" : "73"},
	{"ID" : "93", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QRD_Pipeline_VITIS_LOOP_277_8_fu_3285.mux_83_16_1_1_U384", "Parent" : "73"},
	{"ID" : "94", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QRD_Pipeline_VITIS_LOOP_277_8_fu_3285.mux_83_16_1_1_U385", "Parent" : "73"},
	{"ID" : "95", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QRD_Pipeline_VITIS_LOOP_277_8_fu_3285.mux_83_16_1_1_U386", "Parent" : "73"},
	{"ID" : "96", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QRD_Pipeline_VITIS_LOOP_277_8_fu_3285.mux_83_16_1_1_U387", "Parent" : "73"},
	{"ID" : "97", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QRD_Pipeline_VITIS_LOOP_277_8_fu_3285.mux_83_16_1_1_U388", "Parent" : "73"},
	{"ID" : "98", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QRD_Pipeline_VITIS_LOOP_277_8_fu_3285.mux_864_16_1_1_U389", "Parent" : "73"},
	{"ID" : "99", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QRD_Pipeline_VITIS_LOOP_277_8_fu_3285.mux_864_16_1_1_U390", "Parent" : "73"},
	{"ID" : "100", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QRD_Pipeline_VITIS_LOOP_277_8_fu_3285.mux_864_16_1_1_U391", "Parent" : "73"},
	{"ID" : "101", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QRD_Pipeline_VITIS_LOOP_277_8_fu_3285.mux_864_16_1_1_U392", "Parent" : "73"},
	{"ID" : "102", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QRD_Pipeline_VITIS_LOOP_277_8_fu_3285.mux_864_16_1_1_U393", "Parent" : "73"},
	{"ID" : "103", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QRD_Pipeline_VITIS_LOOP_277_8_fu_3285.mux_864_16_1_1_U394", "Parent" : "73"},
	{"ID" : "104", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QRD_Pipeline_VITIS_LOOP_277_8_fu_3285.mux_864_16_1_1_U395", "Parent" : "73"},
	{"ID" : "105", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QRD_Pipeline_VITIS_LOOP_277_8_fu_3285.mux_864_16_1_1_U396", "Parent" : "73"},
	{"ID" : "106", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QRD_Pipeline_VITIS_LOOP_277_8_fu_3285.mux_864_16_1_1_U397", "Parent" : "73"},
	{"ID" : "107", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QRD_Pipeline_VITIS_LOOP_277_8_fu_3285.mux_864_16_1_1_U398", "Parent" : "73"},
	{"ID" : "108", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QRD_Pipeline_VITIS_LOOP_277_8_fu_3285.mux_864_16_1_1_U399", "Parent" : "73"},
	{"ID" : "109", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QRD_Pipeline_VITIS_LOOP_277_8_fu_3285.mux_864_16_1_1_U400", "Parent" : "73"},
	{"ID" : "110", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QRD_Pipeline_VITIS_LOOP_277_8_fu_3285.mux_864_16_1_1_U401", "Parent" : "73"},
	{"ID" : "111", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QRD_Pipeline_VITIS_LOOP_277_8_fu_3285.mux_864_16_1_1_U402", "Parent" : "73"},
	{"ID" : "112", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QRD_Pipeline_VITIS_LOOP_277_8_fu_3285.mux_864_16_1_1_U403", "Parent" : "73"},
	{"ID" : "113", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QRD_Pipeline_VITIS_LOOP_277_8_fu_3285.mux_864_16_1_1_U404", "Parent" : "73"},
	{"ID" : "114", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QRD_Pipeline_VITIS_LOOP_277_8_fu_3285.mux_864_16_1_1_U405", "Parent" : "73"},
	{"ID" : "115", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QRD_Pipeline_VITIS_LOOP_277_8_fu_3285.mux_83_16_1_1_U406", "Parent" : "73"},
	{"ID" : "116", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QRD_Pipeline_VITIS_LOOP_277_8_fu_3285.sdiv_24ns_16s_16_28_1_U407", "Parent" : "73"},
	{"ID" : "117", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QRD_Pipeline_VITIS_LOOP_277_8_fu_3285.sdiv_24ns_16s_16_28_1_U408", "Parent" : "73"},
	{"ID" : "118", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QRD_Pipeline_VITIS_LOOP_277_8_fu_3285.sdiv_24ns_16s_16_28_1_U409", "Parent" : "73"},
	{"ID" : "119", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QRD_Pipeline_VITIS_LOOP_277_8_fu_3285.sdiv_24ns_16s_16_28_1_U410", "Parent" : "73"},
	{"ID" : "120", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QRD_Pipeline_VITIS_LOOP_277_8_fu_3285.sdiv_24ns_16s_16_28_1_U411", "Parent" : "73"},
	{"ID" : "121", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QRD_Pipeline_VITIS_LOOP_277_8_fu_3285.sdiv_24ns_16s_16_28_1_U412", "Parent" : "73"},
	{"ID" : "122", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QRD_Pipeline_VITIS_LOOP_277_8_fu_3285.sdiv_24ns_16s_16_28_1_U413", "Parent" : "73"},
	{"ID" : "123", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QRD_Pipeline_VITIS_LOOP_277_8_fu_3285.sdiv_24ns_16s_16_28_1_U414", "Parent" : "73"},
	{"ID" : "124", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QRD_Pipeline_VITIS_LOOP_277_8_fu_3285.sdiv_24ns_16s_16_28_1_U415", "Parent" : "73"},
	{"ID" : "125", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QRD_Pipeline_VITIS_LOOP_277_8_fu_3285.sdiv_24ns_16s_16_28_1_U416", "Parent" : "73"},
	{"ID" : "126", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QRD_Pipeline_VITIS_LOOP_277_8_fu_3285.sdiv_24ns_16s_16_28_1_U417", "Parent" : "73"},
	{"ID" : "127", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QRD_Pipeline_VITIS_LOOP_277_8_fu_3285.sdiv_24ns_16s_16_28_1_U418", "Parent" : "73"},
	{"ID" : "128", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QRD_Pipeline_VITIS_LOOP_277_8_fu_3285.sdiv_24ns_16s_16_28_1_U419", "Parent" : "73"},
	{"ID" : "129", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QRD_Pipeline_VITIS_LOOP_277_8_fu_3285.sdiv_24ns_16s_16_28_1_U420", "Parent" : "73"},
	{"ID" : "130", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QRD_Pipeline_VITIS_LOOP_277_8_fu_3285.sdiv_24ns_16s_16_28_1_U421", "Parent" : "73"},
	{"ID" : "131", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QRD_Pipeline_VITIS_LOOP_277_8_fu_3285.sdiv_24ns_16s_16_28_1_U422", "Parent" : "73"},
	{"ID" : "132", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QRD_Pipeline_VITIS_LOOP_277_8_fu_3285.mac_mulsub_16s_16s_24ns_24_4_1_U423", "Parent" : "73"},
	{"ID" : "133", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QRD_Pipeline_VITIS_LOOP_277_8_fu_3285.mac_mulsub_16s_16s_24ns_24_4_1_U424", "Parent" : "73"},
	{"ID" : "134", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QRD_Pipeline_VITIS_LOOP_277_8_fu_3285.mac_mulsub_16s_16s_24ns_24_4_1_U425", "Parent" : "73"},
	{"ID" : "135", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QRD_Pipeline_VITIS_LOOP_277_8_fu_3285.mac_mulsub_16s_16s_24ns_24_4_1_U426", "Parent" : "73"},
	{"ID" : "136", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QRD_Pipeline_VITIS_LOOP_277_8_fu_3285.mac_mulsub_16s_16s_24ns_24_4_1_U427", "Parent" : "73"},
	{"ID" : "137", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QRD_Pipeline_VITIS_LOOP_277_8_fu_3285.mac_mulsub_16s_16s_24ns_24_4_1_U428", "Parent" : "73"},
	{"ID" : "138", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QRD_Pipeline_VITIS_LOOP_277_8_fu_3285.mac_mulsub_16s_16s_24ns_24_4_1_U429", "Parent" : "73"},
	{"ID" : "139", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QRD_Pipeline_VITIS_LOOP_277_8_fu_3285.mac_mulsub_16s_16s_24ns_24_4_1_U430", "Parent" : "73"},
	{"ID" : "140", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QRD_Pipeline_VITIS_LOOP_277_8_fu_3285.mac_mulsub_16s_16s_24ns_24_4_1_U431", "Parent" : "73"},
	{"ID" : "141", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QRD_Pipeline_VITIS_LOOP_277_8_fu_3285.mac_mulsub_16s_16s_24ns_24_4_1_U432", "Parent" : "73"},
	{"ID" : "142", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QRD_Pipeline_VITIS_LOOP_277_8_fu_3285.mac_mulsub_16s_16s_24ns_24_4_1_U433", "Parent" : "73"},
	{"ID" : "143", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QRD_Pipeline_VITIS_LOOP_277_8_fu_3285.mac_mulsub_16s_16s_24ns_24_4_1_U434", "Parent" : "73"},
	{"ID" : "144", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QRD_Pipeline_VITIS_LOOP_277_8_fu_3285.mac_mulsub_16s_16s_24ns_24_4_1_U435", "Parent" : "73"},
	{"ID" : "145", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QRD_Pipeline_VITIS_LOOP_277_8_fu_3285.mac_mulsub_16s_16s_24ns_24_4_1_U436", "Parent" : "73"},
	{"ID" : "146", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QRD_Pipeline_VITIS_LOOP_277_8_fu_3285.mac_mulsub_16s_16s_24ns_24_4_1_U437", "Parent" : "73"},
	{"ID" : "147", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QRD_Pipeline_VITIS_LOOP_277_8_fu_3285.mac_mulsub_16s_16s_24ns_24_4_1_U438", "Parent" : "73"},
	{"ID" : "148", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QRD_Pipeline_VITIS_LOOP_277_8_fu_3285.flow_control_loop_pipe_sequential_init_U", "Parent" : "73"},
	{"ID" : "149", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_QRD_Pipeline_VITIS_LOOP_325_9_VITIS_LOOP_326_10_fu_3420", "Parent" : "0", "Child" : ["150", "151", "152", "153", "154", "155", "156", "157", "158", "159", "160", "161", "162", "163", "164", "165", "166", "167", "168", "169", "170", "171", "172", "173", "174"],
		"CDFG" : "QRD_Pipeline_VITIS_LOOP_325_9_VITIS_LOOP_326_10",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "75", "EstimateLatencyMax" : "75",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "conv_i_i_i1582975_lcssa1488_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_i_i_i15491263_lcssa1632_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_i_i_i15161295_lcssa1648_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_i_i_i14831327_lcssa1664_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_i_i_i14501359_lcssa1680_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_i_i_i14171391_lcssa1696_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_i_i_i13841423_lcssa1712_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_i_i_i13511455_lcssa1728_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_i_i_i1582979_lcssa1490_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_i_i_i15491267_lcssa1634_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_i_i_i15161299_lcssa1650_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_i_i_i14831331_lcssa1666_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_i_i_i14501363_lcssa1682_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_i_i_i14171395_lcssa1698_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_i_i_i13841427_lcssa1714_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_i_i_i13511459_lcssa1730_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_i_i_i1582983_lcssa1492_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_i_i_i15491271_lcssa1636_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_i_i_i15161303_lcssa1652_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_i_i_i14831335_lcssa1668_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_i_i_i14501367_lcssa1684_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_i_i_i14171399_lcssa1700_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_i_i_i13841431_lcssa1716_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_i_i_i13511463_lcssa1732_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_i_i_i1582987_lcssa1494_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_i_i_i15491275_lcssa1638_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_i_i_i15161307_lcssa1654_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_i_i_i14831339_lcssa1670_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_i_i_i14501371_lcssa1686_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_i_i_i14171403_lcssa1702_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_i_i_i13841435_lcssa1718_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_i_i_i13511467_lcssa1734_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_i_i_i1582991_lcssa1496_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_i_i_i15491279_lcssa1640_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_i_i_i15161311_lcssa1656_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_i_i_i14831343_lcssa1672_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_i_i_i14501375_lcssa1688_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_i_i_i14171407_lcssa1704_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_i_i_i13841439_lcssa1720_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_i_i_i13511471_lcssa1736_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_i_i_i1582995_lcssa1498_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_i_i_i15491283_lcssa1642_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_i_i_i15161315_lcssa1658_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_i_i_i14831347_lcssa1674_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_i_i_i14501379_lcssa1690_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_i_i_i14171411_lcssa1706_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_i_i_i13841443_lcssa1722_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_i_i_i13511475_lcssa1738_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_i_i_i1582999_lcssa1500_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_i_i_i15491287_lcssa1644_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_i_i_i15161319_lcssa1660_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_i_i_i14831351_lcssa1676_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_i_i_i14501383_lcssa1692_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_i_i_i14171415_lcssa1708_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_i_i_i13841447_lcssa1724_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_i_i_i13511479_lcssa1740_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_i_i_i15821003_lcssa1502_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_i_i_i15491291_lcssa1646_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_i_i_i15161323_lcssa1662_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_i_i_i14831355_lcssa1678_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_i_i_i14501387_lcssa1694_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_i_i_i14171419_lcssa1710_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_i_i_i13841451_lcssa1726_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_i_i_i13511483_lcssa1742_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "Y_V_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "Y_V_1_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "Y_V_2_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "Y_V_3_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "Y_V_4_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "Y_V_5_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "Y_V_6_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "Y_V_7_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "Y_V_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "Y_V_1_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "Y_V_2_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "Y_V_3_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "Y_V_4_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "Y_V_5_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "Y_V_6_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "Y_V_7_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "Y_V_load_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "Y_V_1_load_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "Y_V_2_load_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "Y_V_3_load_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "Y_V_4_load_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "Y_V_5_load_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "Y_V_6_load_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "Y_V_7_load_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "Y_V_load_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "Y_V_1_load_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "Y_V_2_load_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "Y_V_3_load_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "Y_V_4_load_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "Y_V_5_load_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "Y_V_6_load_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "Y_V_7_load_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "Y_V_load_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "Y_V_1_load_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "Y_V_2_load_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "Y_V_3_load_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "Y_V_4_load_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "Y_V_5_load_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "Y_V_6_load_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "Y_V_7_load_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "Y_V_load_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "Y_V_1_load_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "Y_V_2_load_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "Y_V_3_load_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "Y_V_4_load_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "Y_V_5_load_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "Y_V_6_load_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "Y_V_7_load_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "Y_V_load_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "Y_V_1_load_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "Y_V_2_load_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "Y_V_3_load_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "Y_V_4_load_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "Y_V_5_load_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "Y_V_6_load_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "Y_V_7_load_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "Y_V_load_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "Y_V_1_load_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "Y_V_2_load_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "Y_V_3_load_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "Y_V_4_load_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "Y_V_5_load_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "Y_V_6_load_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "Y_V_7_load_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "Q", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "Q_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_325_9_VITIS_LOOP_326_10", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter10", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter10", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "150", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QRD_Pipeline_VITIS_LOOP_325_9_VITIS_LOOP_326_10_fu_3420.mux_84_16_1_1_U574", "Parent" : "149"},
	{"ID" : "151", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QRD_Pipeline_VITIS_LOOP_325_9_VITIS_LOOP_326_10_fu_3420.mux_84_16_1_1_U575", "Parent" : "149"},
	{"ID" : "152", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QRD_Pipeline_VITIS_LOOP_325_9_VITIS_LOOP_326_10_fu_3420.mux_84_16_1_1_U576", "Parent" : "149"},
	{"ID" : "153", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QRD_Pipeline_VITIS_LOOP_325_9_VITIS_LOOP_326_10_fu_3420.mux_84_16_1_1_U577", "Parent" : "149"},
	{"ID" : "154", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QRD_Pipeline_VITIS_LOOP_325_9_VITIS_LOOP_326_10_fu_3420.mux_84_16_1_1_U578", "Parent" : "149"},
	{"ID" : "155", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QRD_Pipeline_VITIS_LOOP_325_9_VITIS_LOOP_326_10_fu_3420.mux_84_16_1_1_U579", "Parent" : "149"},
	{"ID" : "156", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QRD_Pipeline_VITIS_LOOP_325_9_VITIS_LOOP_326_10_fu_3420.mux_84_16_1_1_U580", "Parent" : "149"},
	{"ID" : "157", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QRD_Pipeline_VITIS_LOOP_325_9_VITIS_LOOP_326_10_fu_3420.mux_84_16_1_1_U581", "Parent" : "149"},
	{"ID" : "158", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QRD_Pipeline_VITIS_LOOP_325_9_VITIS_LOOP_326_10_fu_3420.mux_84_16_1_1_U582", "Parent" : "149"},
	{"ID" : "159", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QRD_Pipeline_VITIS_LOOP_325_9_VITIS_LOOP_326_10_fu_3420.mux_84_16_1_1_U583", "Parent" : "149"},
	{"ID" : "160", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QRD_Pipeline_VITIS_LOOP_325_9_VITIS_LOOP_326_10_fu_3420.mux_84_16_1_1_U584", "Parent" : "149"},
	{"ID" : "161", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QRD_Pipeline_VITIS_LOOP_325_9_VITIS_LOOP_326_10_fu_3420.mux_84_16_1_1_U585", "Parent" : "149"},
	{"ID" : "162", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QRD_Pipeline_VITIS_LOOP_325_9_VITIS_LOOP_326_10_fu_3420.mux_84_16_1_1_U586", "Parent" : "149"},
	{"ID" : "163", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QRD_Pipeline_VITIS_LOOP_325_9_VITIS_LOOP_326_10_fu_3420.mux_84_16_1_1_U587", "Parent" : "149"},
	{"ID" : "164", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QRD_Pipeline_VITIS_LOOP_325_9_VITIS_LOOP_326_10_fu_3420.mux_84_16_1_1_U588", "Parent" : "149"},
	{"ID" : "165", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QRD_Pipeline_VITIS_LOOP_325_9_VITIS_LOOP_326_10_fu_3420.mux_84_16_1_1_U589", "Parent" : "149"},
	{"ID" : "166", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QRD_Pipeline_VITIS_LOOP_325_9_VITIS_LOOP_326_10_fu_3420.mul_mul_16s_16s_24_4_1_U590", "Parent" : "149"},
	{"ID" : "167", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QRD_Pipeline_VITIS_LOOP_325_9_VITIS_LOOP_326_10_fu_3420.mac_muladd_16s_16s_24ns_24_4_1_U591", "Parent" : "149"},
	{"ID" : "168", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QRD_Pipeline_VITIS_LOOP_325_9_VITIS_LOOP_326_10_fu_3420.mac_muladd_16s_16s_24ns_24_4_1_U592", "Parent" : "149"},
	{"ID" : "169", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QRD_Pipeline_VITIS_LOOP_325_9_VITIS_LOOP_326_10_fu_3420.mac_muladd_16s_16s_24ns_24_4_1_U593", "Parent" : "149"},
	{"ID" : "170", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QRD_Pipeline_VITIS_LOOP_325_9_VITIS_LOOP_326_10_fu_3420.mac_muladd_16s_16s_24ns_24_4_1_U594", "Parent" : "149"},
	{"ID" : "171", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QRD_Pipeline_VITIS_LOOP_325_9_VITIS_LOOP_326_10_fu_3420.mac_muladd_16s_16s_24ns_24_4_1_U595", "Parent" : "149"},
	{"ID" : "172", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QRD_Pipeline_VITIS_LOOP_325_9_VITIS_LOOP_326_10_fu_3420.mac_muladd_16s_16s_24ns_24_4_1_U596", "Parent" : "149"},
	{"ID" : "173", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QRD_Pipeline_VITIS_LOOP_325_9_VITIS_LOOP_326_10_fu_3420.mac_muladd_16s_16s_24ns_24_4_1_U597", "Parent" : "149"},
	{"ID" : "174", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QRD_Pipeline_VITIS_LOOP_325_9_VITIS_LOOP_326_10_fu_3420.flow_control_loop_pipe_sequential_init_U", "Parent" : "149"},
	{"ID" : "175", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_74_16_1_1_U729", "Parent" : "0"},
	{"ID" : "176", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_74_16_1_1_U730", "Parent" : "0"},
	{"ID" : "177", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_74_16_1_1_U731", "Parent" : "0"},
	{"ID" : "178", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_74_16_1_1_U732", "Parent" : "0"},
	{"ID" : "179", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_74_16_1_1_U733", "Parent" : "0"},
	{"ID" : "180", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_74_16_1_1_U734", "Parent" : "0"},
	{"ID" : "181", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_74_16_1_1_U735", "Parent" : "0"},
	{"ID" : "182", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_74_16_1_1_U736", "Parent" : "0"},
	{"ID" : "183", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_74_16_1_1_U737", "Parent" : "0"},
	{"ID" : "184", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_74_16_1_1_U738", "Parent" : "0"},
	{"ID" : "185", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_74_16_1_1_U739", "Parent" : "0"},
	{"ID" : "186", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_74_16_1_1_U740", "Parent" : "0"},
	{"ID" : "187", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_74_16_1_1_U741", "Parent" : "0"},
	{"ID" : "188", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_74_16_1_1_U742", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	QRD {
		H_real_spl1 {Type I LastRead 1 FirstWrite -1}
		H_imag_spl1 {Type I LastRead 1 FirstWrite -1}
		cordic_phase_V30 {Type I LastRead -1 FirstWrite -1}
		cordic_phase_V {Type I LastRead -1 FirstWrite -1}
		R {Type O LastRead -1 FirstWrite 1}
		Q {Type O LastRead -1 FirstWrite 10}}
	QRD_Pipeline_CHANNEL2REAL {
		Y_V_1 {Type O LastRead -1 FirstWrite 1}
		Y_V {Type O LastRead -1 FirstWrite 1}
		Y_V_2 {Type O LastRead -1 FirstWrite 1}
		Y_V_4 {Type O LastRead -1 FirstWrite 1}
		Y_V_6 {Type O LastRead -1 FirstWrite 1}
		Y_V_3 {Type O LastRead -1 FirstWrite 1}
		Y_V_5 {Type O LastRead -1 FirstWrite 1}
		Y_V_7 {Type O LastRead -1 FirstWrite 1}
		p_0_0_036012404_i_out {Type O LastRead -1 FirstWrite 0}
		p_0_0_036012400_i_out {Type O LastRead -1 FirstWrite 0}
		p_0_0_036012396_i_out {Type O LastRead -1 FirstWrite 0}
		p_0_0_036012392_i_out {Type O LastRead -1 FirstWrite 0}
		p_0_0_036012386_i_out {Type O LastRead -1 FirstWrite 0}
		p_0_0_036012382_i_out {Type O LastRead -1 FirstWrite 0}
		p_0_0_036012378_i_out {Type O LastRead -1 FirstWrite 0}
		p_0_0_036012374_i_out {Type O LastRead -1 FirstWrite 0}
		p_0_0_036012372_i_out {Type O LastRead -1 FirstWrite 0}
		p_0_0_036012368_i_out {Type O LastRead -1 FirstWrite 0}
		p_0_0_036012364_i_out {Type O LastRead -1 FirstWrite 0}
		p_0_0_036012360_i_out {Type O LastRead -1 FirstWrite 0}
		p_0_0_036012356_i_out {Type O LastRead -1 FirstWrite 0}
		p_0_0_036012352_i_out {Type O LastRead -1 FirstWrite 0}
		p_0_0_036012348_i_out {Type O LastRead -1 FirstWrite 0}
		p_0_0_036012344_i_out {Type O LastRead -1 FirstWrite 0}
		p_0_0_036002340_i_out {Type O LastRead -1 FirstWrite 0}
		p_0_0_036002336_i_out {Type O LastRead -1 FirstWrite 0}
		p_0_0_036002332_i_out {Type O LastRead -1 FirstWrite 0}
		p_0_0_036002328_i_out {Type O LastRead -1 FirstWrite 0}
		p_0_0_036002322_i_out {Type O LastRead -1 FirstWrite 0}
		p_0_0_036002318_i_out {Type O LastRead -1 FirstWrite 0}
		p_0_0_036002314_i_out {Type O LastRead -1 FirstWrite 0}
		p_0_0_036002310_i_out {Type O LastRead -1 FirstWrite 0}
		p_0_0_036002308_i_out {Type O LastRead -1 FirstWrite 0}
		p_0_0_036002304_i_out {Type O LastRead -1 FirstWrite 0}
		p_0_0_036002300_i_out {Type O LastRead -1 FirstWrite 0}
		p_0_0_036002296_i_out {Type O LastRead -1 FirstWrite 0}
		p_0_0_036002292_i_out {Type O LastRead -1 FirstWrite 0}
		p_0_0_036002288_i_out {Type O LastRead -1 FirstWrite 0}
		p_0_0_036002284_i_out {Type O LastRead -1 FirstWrite 0}
		p_0_0_036002280_i_out {Type O LastRead -1 FirstWrite 0}
		H_real_spl1 {Type I LastRead 1 FirstWrite -1}
		H_imag_spl1 {Type I LastRead 1 FirstWrite -1}}
	CORDIC_V {
		x_in {Type I LastRead 0 FirstWrite -1}
		y_in {Type I LastRead 0 FirstWrite -1}
		cordic_phase_V30 {Type I LastRead -1 FirstWrite -1}}
	CORDIC_V_Pipeline_VITIS_LOOP_94_2 {
		temp_y_V_1 {Type I LastRead 0 FirstWrite -1}
		temp_x_V_1 {Type I LastRead 0 FirstWrite -1}
		k {Type I LastRead 0 FirstWrite -1}
		temp_y_V_2_out {Type O LastRead -1 FirstWrite 1}
		temp_x_V_2_out {Type O LastRead -1 FirstWrite 1}}
	CORDIC_R {
		x_in {Type I LastRead 0 FirstWrite -1}
		y_in {Type I LastRead 0 FirstWrite -1}
		z_in {Type I LastRead 0 FirstWrite -1}
		cordic_phase_V {Type I LastRead -1 FirstWrite -1}}
	CORDIC_R_Pipeline_VITIS_LOOP_32_2 {
		temp_y_V_3 {Type I LastRead 0 FirstWrite -1}
		temp_x_V_3 {Type I LastRead 0 FirstWrite -1}
		k {Type I LastRead 0 FirstWrite -1}
		temp_y_V_4_out {Type O LastRead -1 FirstWrite 1}
		temp_x_V_4_out {Type O LastRead -1 FirstWrite 1}}
	CORDIC_R {
		x_in {Type I LastRead 0 FirstWrite -1}
		y_in {Type I LastRead 0 FirstWrite -1}
		z_in {Type I LastRead 0 FirstWrite -1}
		cordic_phase_V {Type I LastRead -1 FirstWrite -1}}
	CORDIC_R_Pipeline_VITIS_LOOP_32_2 {
		temp_y_V_3 {Type I LastRead 0 FirstWrite -1}
		temp_x_V_3 {Type I LastRead 0 FirstWrite -1}
		k {Type I LastRead 0 FirstWrite -1}
		temp_y_V_4_out {Type O LastRead -1 FirstWrite 1}
		temp_x_V_4_out {Type O LastRead -1 FirstWrite 1}}
	CORDIC_R {
		x_in {Type I LastRead 0 FirstWrite -1}
		y_in {Type I LastRead 0 FirstWrite -1}
		z_in {Type I LastRead 0 FirstWrite -1}
		cordic_phase_V {Type I LastRead -1 FirstWrite -1}}
	CORDIC_R_Pipeline_VITIS_LOOP_32_2 {
		temp_y_V_3 {Type I LastRead 0 FirstWrite -1}
		temp_x_V_3 {Type I LastRead 0 FirstWrite -1}
		k {Type I LastRead 0 FirstWrite -1}
		temp_y_V_4_out {Type O LastRead -1 FirstWrite 1}
		temp_x_V_4_out {Type O LastRead -1 FirstWrite 1}}
	CORDIC_R {
		x_in {Type I LastRead 0 FirstWrite -1}
		y_in {Type I LastRead 0 FirstWrite -1}
		z_in {Type I LastRead 0 FirstWrite -1}
		cordic_phase_V {Type I LastRead -1 FirstWrite -1}}
	CORDIC_R_Pipeline_VITIS_LOOP_32_2 {
		temp_y_V_3 {Type I LastRead 0 FirstWrite -1}
		temp_x_V_3 {Type I LastRead 0 FirstWrite -1}
		k {Type I LastRead 0 FirstWrite -1}
		temp_y_V_4_out {Type O LastRead -1 FirstWrite 1}
		temp_x_V_4_out {Type O LastRead -1 FirstWrite 1}}
	CORDIC_R {
		x_in {Type I LastRead 0 FirstWrite -1}
		y_in {Type I LastRead 0 FirstWrite -1}
		z_in {Type I LastRead 0 FirstWrite -1}
		cordic_phase_V {Type I LastRead -1 FirstWrite -1}}
	CORDIC_R_Pipeline_VITIS_LOOP_32_2 {
		temp_y_V_3 {Type I LastRead 0 FirstWrite -1}
		temp_x_V_3 {Type I LastRead 0 FirstWrite -1}
		k {Type I LastRead 0 FirstWrite -1}
		temp_y_V_4_out {Type O LastRead -1 FirstWrite 1}
		temp_x_V_4_out {Type O LastRead -1 FirstWrite 1}}
	CORDIC_R {
		x_in {Type I LastRead 0 FirstWrite -1}
		y_in {Type I LastRead 0 FirstWrite -1}
		z_in {Type I LastRead 0 FirstWrite -1}
		cordic_phase_V {Type I LastRead -1 FirstWrite -1}}
	CORDIC_R_Pipeline_VITIS_LOOP_32_2 {
		temp_y_V_3 {Type I LastRead 0 FirstWrite -1}
		temp_x_V_3 {Type I LastRead 0 FirstWrite -1}
		k {Type I LastRead 0 FirstWrite -1}
		temp_y_V_4_out {Type O LastRead -1 FirstWrite 1}
		temp_x_V_4_out {Type O LastRead -1 FirstWrite 1}}
	QRD_Pipeline_LOOP_01 {
		HH_V_46 {Type I LastRead 0 FirstWrite -1}
		HH_V_47 {Type I LastRead 0 FirstWrite -1}
		HH_V_81 {Type I LastRead 0 FirstWrite -1}
		HH_V_83 {Type I LastRead 0 FirstWrite -1}
		empty_105 {Type I LastRead 0 FirstWrite -1}
		HH_V_94 {Type I LastRead 0 FirstWrite -1}
		HH_V_95 {Type I LastRead 0 FirstWrite -1}
		HH_V_97 {Type I LastRead 0 FirstWrite -1}
		HH_V_102 {Type I LastRead 0 FirstWrite -1}
		HH_V_103 {Type I LastRead 0 FirstWrite -1}
		empty_106 {Type I LastRead 0 FirstWrite -1}
		HH_V_105 {Type I LastRead 0 FirstWrite -1}
		empty_107 {Type I LastRead 0 FirstWrite -1}
		HH_V_85 {Type I LastRead 0 FirstWrite -1}
		HH_V_87 {Type I LastRead 0 FirstWrite -1}
		HH_V_89 {Type I LastRead 0 FirstWrite -1}
		empty_108 {Type I LastRead 0 FirstWrite -1}
		empty_109 {Type I LastRead 0 FirstWrite -1}
		HH_V_99 {Type I LastRead 0 FirstWrite -1}
		HH_V_101 {Type I LastRead 0 FirstWrite -1}
		empty_110 {Type I LastRead 0 FirstWrite -1}
		empty_111 {Type I LastRead 0 FirstWrite -1}
		empty_112 {Type I LastRead 0 FirstWrite -1}
		HH_V_104 {Type I LastRead 0 FirstWrite -1}
		empty_113 {Type I LastRead 0 FirstWrite -1}
		empty_114 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		p_0_0_033131932_lcssa2062_i_out {Type O LastRead -1 FirstWrite 0}
		p_0_0_033131929_lcssa2060_i_out {Type O LastRead -1 FirstWrite 0}
		p_0_0_033131926_lcssa2058_i_out {Type O LastRead -1 FirstWrite 0}
		p_0_0_033131923_lcssa2056_i_out {Type O LastRead -1 FirstWrite 0}
		p_0_0_033131921_lcssa2054_i_out {Type O LastRead -1 FirstWrite 0}
		p_0_0_033131918_lcssa2052_i_out {Type O LastRead -1 FirstWrite 0}
		p_0_0_033131915_lcssa2050_i_out {Type O LastRead -1 FirstWrite 0}
		p_0_0_033131912_lcssa2048_i_out {Type O LastRead -1 FirstWrite 0}
		p_0_0_033131908_lcssa2046_i_out {Type O LastRead -1 FirstWrite 0}
		p_0_0_033131905_lcssa2044_i_out {Type O LastRead -1 FirstWrite 0}
		p_0_0_033131902_lcssa2042_i_out {Type O LastRead -1 FirstWrite 0}
		p_0_0_033131899_lcssa2040_i_out {Type O LastRead -1 FirstWrite 0}
		p_0_0_033131896_lcssa2038_i_out {Type O LastRead -1 FirstWrite 0}
		p_0_0_033131893_lcssa2036_i_out {Type O LastRead -1 FirstWrite 0}
		p_0_0_033131890_lcssa2034_i_out {Type O LastRead -1 FirstWrite 0}
		p_0_0_033131887_lcssa2032_i_out {Type O LastRead -1 FirstWrite 0}
		conv_i_i_i23841884_lcssa2030_i_out {Type O LastRead -1 FirstWrite 0}
		conv_i_i_i23841881_lcssa2028_i_out {Type O LastRead -1 FirstWrite 0}
		conv_i_i_i23841878_lcssa2026_i_out {Type O LastRead -1 FirstWrite 0}
		conv_i_i_i23841875_lcssa2024_i_out {Type O LastRead -1 FirstWrite 0}
		conv_i_i_i23841873_lcssa2022_i_out {Type O LastRead -1 FirstWrite 0}
		conv_i_i_i23841870_lcssa2020_i_out {Type O LastRead -1 FirstWrite 0}
		conv_i_i_i23841867_lcssa2018_i_out {Type O LastRead -1 FirstWrite 0}
		conv_i_i_i23841864_lcssa2016_i_out {Type O LastRead -1 FirstWrite 0}
		conv_i_i_i23841860_lcssa2014_i_out {Type O LastRead -1 FirstWrite 0}
		conv_i_i_i23841857_lcssa2012_i_out {Type O LastRead -1 FirstWrite 0}
		conv_i_i_i23841854_lcssa2010_i_out {Type O LastRead -1 FirstWrite 0}
		conv_i_i_i23841851_lcssa2008_i_out {Type O LastRead -1 FirstWrite 0}
		conv_i_i_i23841848_lcssa2006_i_out {Type O LastRead -1 FirstWrite 0}
		conv_i_i_i23841845_lcssa2004_i_out {Type O LastRead -1 FirstWrite 0}
		conv_i_i_i23841842_lcssa2002_i_out {Type O LastRead -1 FirstWrite 0}
		conv_i_i_i23841839_lcssa2000_i_out {Type O LastRead -1 FirstWrite 0}
		p_0_0_033121836_lcssa1998_i_out {Type O LastRead -1 FirstWrite 0}
		p_0_0_033121833_lcssa1996_i_out {Type O LastRead -1 FirstWrite 0}
		p_0_0_033121830_lcssa1994_i_out {Type O LastRead -1 FirstWrite 0}
		p_0_0_033121827_lcssa1992_i_out {Type O LastRead -1 FirstWrite 0}
		p_0_0_033121825_lcssa1990_i_out {Type O LastRead -1 FirstWrite 0}
		p_0_0_033121822_lcssa1988_i_out {Type O LastRead -1 FirstWrite 0}
		p_0_0_033121819_lcssa1986_i_out {Type O LastRead -1 FirstWrite 0}
		p_0_0_033121816_lcssa1984_i_out {Type O LastRead -1 FirstWrite 0}
		p_0_0_033121812_lcssa1982_i_out {Type O LastRead -1 FirstWrite 0}
		p_0_0_033121809_lcssa1980_i_out {Type O LastRead -1 FirstWrite 0}
		p_0_0_033121806_lcssa1978_i_out {Type O LastRead -1 FirstWrite 0}
		p_0_0_033121803_lcssa1976_i_out {Type O LastRead -1 FirstWrite 0}
		p_0_0_033121800_lcssa1974_i_out {Type O LastRead -1 FirstWrite 0}
		p_0_0_033121797_lcssa1972_i_out {Type O LastRead -1 FirstWrite 0}
		p_0_0_033121794_lcssa1970_i_out {Type O LastRead -1 FirstWrite 0}
		p_0_0_033121791_lcssa1968_i_out {Type O LastRead -1 FirstWrite 0}
		p_0_0_033131788_lcssa1966_i_out {Type O LastRead -1 FirstWrite 0}
		p_0_0_033131785_lcssa1964_i_out {Type O LastRead -1 FirstWrite 0}
		p_0_0_033131782_lcssa1962_i_out {Type O LastRead -1 FirstWrite 0}
		p_0_0_033131779_lcssa1960_i_out {Type O LastRead -1 FirstWrite 0}
		p_0_0_033131777_lcssa1958_i_out {Type O LastRead -1 FirstWrite 0}
		p_0_0_033131774_lcssa1956_i_out {Type O LastRead -1 FirstWrite 0}
		p_0_0_033131771_lcssa1954_i_out {Type O LastRead -1 FirstWrite 0}
		p_0_0_033131768_lcssa1952_i_out {Type O LastRead -1 FirstWrite 0}
		p_0_0_033131764_lcssa1950_i_out {Type O LastRead -1 FirstWrite 0}
		p_0_0_033131761_lcssa1948_i_out {Type O LastRead -1 FirstWrite 0}
		p_0_0_033131758_lcssa1946_i_out {Type O LastRead -1 FirstWrite 0}
		p_0_0_033131755_lcssa1944_i_out {Type O LastRead -1 FirstWrite 0}
		p_0_0_033131752_lcssa1942_i_out {Type O LastRead -1 FirstWrite 0}
		p_0_0_033131749_lcssa1940_i_out {Type O LastRead -1 FirstWrite 0}
		p_0_0_033131746_lcssa1938_i_out {Type O LastRead -1 FirstWrite 0}
		p_0_0_033131743_lcssa1936_i_out {Type O LastRead -1 FirstWrite 0}}
	QRD_Pipeline_LOOP_02_VITIS_LOOP_260_6 {
		p_0_0_033131774_lcssa1956_i_reload {Type I LastRead 0 FirstWrite -1}
		conv_i_i_i23841870_lcssa2020_i_reload {Type I LastRead 0 FirstWrite -1}
		p_0_0_033131771_lcssa1954_i_reload {Type I LastRead 0 FirstWrite -1}
		conv_i_i_i23841867_lcssa2018_i_reload {Type I LastRead 0 FirstWrite -1}
		p_0_0_033131768_lcssa1952_i_reload {Type I LastRead 0 FirstWrite -1}
		conv_i_i_i23841864_lcssa2016_i_reload {Type I LastRead 0 FirstWrite -1}
		p_0_0_033131777_lcssa1958_i_reload {Type I LastRead 0 FirstWrite -1}
		conv_i_i_i23841873_lcssa2022_i_reload {Type I LastRead 0 FirstWrite -1}
		p_0_0_033121822_lcssa1988_i_reload {Type I LastRead 0 FirstWrite -1}
		p_0_0_033131918_lcssa2052_i_reload {Type I LastRead 0 FirstWrite -1}
		p_0_0_033121819_lcssa1986_i_reload {Type I LastRead 0 FirstWrite -1}
		p_0_0_033131915_lcssa2050_i_reload {Type I LastRead 0 FirstWrite -1}
		p_0_0_033121816_lcssa1984_i_reload {Type I LastRead 0 FirstWrite -1}
		p_0_0_033131912_lcssa2048_i_reload {Type I LastRead 0 FirstWrite -1}
		p_0_0_033121825_lcssa1990_i_reload {Type I LastRead 0 FirstWrite -1}
		p_0_0_033131921_lcssa2054_i_reload {Type I LastRead 0 FirstWrite -1}
		p_0_0_033131761_lcssa1948_i_reload {Type I LastRead 0 FirstWrite -1}
		conv_i_i_i23841857_lcssa2012_i_reload {Type I LastRead 0 FirstWrite -1}
		p_0_0_033131758_lcssa1946_i_reload {Type I LastRead 0 FirstWrite -1}
		conv_i_i_i23841854_lcssa2010_i_reload {Type I LastRead 0 FirstWrite -1}
		p_0_0_033131755_lcssa1944_i_reload {Type I LastRead 0 FirstWrite -1}
		conv_i_i_i23841851_lcssa2008_i_reload {Type I LastRead 0 FirstWrite -1}
		p_0_0_033131764_lcssa1950_i_reload {Type I LastRead 0 FirstWrite -1}
		conv_i_i_i23841860_lcssa2014_i_reload {Type I LastRead 0 FirstWrite -1}
		p_0_0_033121809_lcssa1980_i_reload {Type I LastRead 0 FirstWrite -1}
		p_0_0_033131905_lcssa2044_i_reload {Type I LastRead 0 FirstWrite -1}
		p_0_0_033121806_lcssa1978_i_reload {Type I LastRead 0 FirstWrite -1}
		p_0_0_033131902_lcssa2042_i_reload {Type I LastRead 0 FirstWrite -1}
		p_0_0_033121803_lcssa1976_i_reload {Type I LastRead 0 FirstWrite -1}
		p_0_0_033131899_lcssa2040_i_reload {Type I LastRead 0 FirstWrite -1}
		p_0_0_033121812_lcssa1982_i_reload {Type I LastRead 0 FirstWrite -1}
		p_0_0_033131908_lcssa2046_i_reload {Type I LastRead 0 FirstWrite -1}
		p_0_0_033131749_lcssa1940_i_reload {Type I LastRead 0 FirstWrite -1}
		conv_i_i_i23841845_lcssa2004_i_reload {Type I LastRead 0 FirstWrite -1}
		p_0_0_033131746_lcssa1938_i_reload {Type I LastRead 0 FirstWrite -1}
		conv_i_i_i23841842_lcssa2002_i_reload {Type I LastRead 0 FirstWrite -1}
		p_0_0_033131743_lcssa1936_i_reload {Type I LastRead 0 FirstWrite -1}
		conv_i_i_i23841839_lcssa2000_i_reload {Type I LastRead 0 FirstWrite -1}
		p_0_0_033131752_lcssa1942_i_reload {Type I LastRead 0 FirstWrite -1}
		conv_i_i_i23841848_lcssa2006_i_reload {Type I LastRead 0 FirstWrite -1}
		p_0_0_033121797_lcssa1972_i_reload {Type I LastRead 0 FirstWrite -1}
		p_0_0_033131893_lcssa2036_i_reload {Type I LastRead 0 FirstWrite -1}
		p_0_0_033121794_lcssa1970_i_reload {Type I LastRead 0 FirstWrite -1}
		p_0_0_033131890_lcssa2034_i_reload {Type I LastRead 0 FirstWrite -1}
		p_0_0_033121791_lcssa1968_i_reload {Type I LastRead 0 FirstWrite -1}
		p_0_0_033131887_lcssa2032_i_reload {Type I LastRead 0 FirstWrite -1}
		p_0_0_033121800_lcssa1974_i_reload {Type I LastRead 0 FirstWrite -1}
		p_0_0_033131896_lcssa2038_i_reload {Type I LastRead 0 FirstWrite -1}
		p_0_0_033131785_lcssa1964_i_reload {Type I LastRead 0 FirstWrite -1}
		conv_i_i_i23841881_lcssa2028_i_reload {Type I LastRead 0 FirstWrite -1}
		p_0_0_033131782_lcssa1962_i_reload {Type I LastRead 0 FirstWrite -1}
		conv_i_i_i23841878_lcssa2026_i_reload {Type I LastRead 0 FirstWrite -1}
		p_0_0_033131779_lcssa1960_i_reload {Type I LastRead 0 FirstWrite -1}
		conv_i_i_i23841875_lcssa2024_i_reload {Type I LastRead 0 FirstWrite -1}
		p_0_0_033131788_lcssa1966_i_reload {Type I LastRead 0 FirstWrite -1}
		conv_i_i_i23841884_lcssa2030_i_reload {Type I LastRead 0 FirstWrite -1}
		p_0_0_033121833_lcssa1996_i_reload {Type I LastRead 0 FirstWrite -1}
		p_0_0_033131929_lcssa2060_i_reload {Type I LastRead 0 FirstWrite -1}
		p_0_0_033121830_lcssa1994_i_reload {Type I LastRead 0 FirstWrite -1}
		p_0_0_033131926_lcssa2058_i_reload {Type I LastRead 0 FirstWrite -1}
		p_0_0_033121827_lcssa1992_i_reload {Type I LastRead 0 FirstWrite -1}
		p_0_0_033131923_lcssa2056_i_reload {Type I LastRead 0 FirstWrite -1}
		p_0_0_033121836_lcssa1998_i_reload {Type I LastRead 0 FirstWrite -1}
		p_0_0_033131932_lcssa2062_i_reload {Type I LastRead 0 FirstWrite -1}
		R {Type O LastRead -1 FirstWrite 1}}
	QRD_Pipeline_VITIS_LOOP_277_8 {
		zext_ln276 {Type I LastRead 0 FirstWrite -1}
		i_22 {Type I LastRead 0 FirstWrite -1}
		i_23_cast_i {Type I LastRead 0 FirstWrite -1}
		conv_i_i_i13511486_i_out {Type IO LastRead 1 FirstWrite 11}
		conv_i_i_i13511482_i_out {Type IO LastRead 1 FirstWrite 11}
		conv_i_i_i13511478_i_out {Type IO LastRead 1 FirstWrite 11}
		conv_i_i_i13511474_i_out {Type IO LastRead 1 FirstWrite 11}
		conv_i_i_i13511470_i_out {Type IO LastRead 1 FirstWrite 11}
		conv_i_i_i13511466_i_out {Type IO LastRead 1 FirstWrite 11}
		conv_i_i_i13511462_i_out {Type IO LastRead 1 FirstWrite 11}
		conv_i_i_i13511458_i_out {Type IO LastRead 1 FirstWrite 11}
		conv_i_i_i13841454_i_out {Type IO LastRead 1 FirstWrite 10}
		conv_i_i_i13841450_i_out {Type IO LastRead 1 FirstWrite 10}
		conv_i_i_i13841446_i_out {Type IO LastRead 1 FirstWrite 10}
		conv_i_i_i13841442_i_out {Type IO LastRead 1 FirstWrite 10}
		conv_i_i_i13841438_i_out {Type IO LastRead 1 FirstWrite 10}
		conv_i_i_i13841434_i_out {Type IO LastRead 1 FirstWrite 10}
		conv_i_i_i13841430_i_out {Type IO LastRead 1 FirstWrite 10}
		conv_i_i_i13841426_i_out {Type IO LastRead 1 FirstWrite 10}
		conv_i_i_i14171422_i_out {Type IO LastRead 1 FirstWrite 9}
		conv_i_i_i14171418_i_out {Type IO LastRead 1 FirstWrite 9}
		conv_i_i_i14171414_i_out {Type IO LastRead 1 FirstWrite 9}
		conv_i_i_i14171410_i_out {Type IO LastRead 1 FirstWrite 9}
		conv_i_i_i14171406_i_out {Type IO LastRead 1 FirstWrite 9}
		conv_i_i_i14171402_i_out {Type IO LastRead 1 FirstWrite 9}
		conv_i_i_i14171398_i_out {Type IO LastRead 1 FirstWrite 9}
		conv_i_i_i14171394_i_out {Type IO LastRead 1 FirstWrite 9}
		conv_i_i_i14501390_i_out {Type IO LastRead 1 FirstWrite 8}
		conv_i_i_i14501386_i_out {Type IO LastRead 1 FirstWrite 8}
		conv_i_i_i14501382_i_out {Type IO LastRead 1 FirstWrite 8}
		conv_i_i_i14501378_i_out {Type IO LastRead 1 FirstWrite 8}
		conv_i_i_i14501374_i_out {Type IO LastRead 1 FirstWrite 8}
		conv_i_i_i14501370_i_out {Type IO LastRead 1 FirstWrite 8}
		conv_i_i_i14501366_i_out {Type IO LastRead 1 FirstWrite 8}
		conv_i_i_i14501362_i_out {Type IO LastRead 1 FirstWrite 8}
		conv_i_i_i14831358_i_out {Type IO LastRead 1 FirstWrite 7}
		conv_i_i_i14831354_i_out {Type IO LastRead 1 FirstWrite 7}
		conv_i_i_i14831350_i_out {Type IO LastRead 1 FirstWrite 7}
		conv_i_i_i14831346_i_out {Type IO LastRead 1 FirstWrite 7}
		conv_i_i_i14831342_i_out {Type IO LastRead 1 FirstWrite 7}
		conv_i_i_i14831338_i_out {Type IO LastRead 1 FirstWrite 7}
		conv_i_i_i14831334_i_out {Type IO LastRead 1 FirstWrite 7}
		conv_i_i_i14831330_i_out {Type IO LastRead 1 FirstWrite 7}
		conv_i_i_i15161326_i_out {Type IO LastRead 1 FirstWrite 6}
		conv_i_i_i15161322_i_out {Type IO LastRead 1 FirstWrite 6}
		conv_i_i_i15161318_i_out {Type IO LastRead 1 FirstWrite 6}
		conv_i_i_i15161314_i_out {Type IO LastRead 1 FirstWrite 6}
		conv_i_i_i15161310_i_out {Type IO LastRead 1 FirstWrite 6}
		conv_i_i_i15161306_i_out {Type IO LastRead 1 FirstWrite 6}
		conv_i_i_i15161302_i_out {Type IO LastRead 1 FirstWrite 6}
		conv_i_i_i15161298_i_out {Type IO LastRead 1 FirstWrite 6}
		conv_i_i_i15491294_i_out {Type IO LastRead 1 FirstWrite 5}
		conv_i_i_i15491290_i_out {Type IO LastRead 1 FirstWrite 5}
		conv_i_i_i15491286_i_out {Type IO LastRead 1 FirstWrite 5}
		conv_i_i_i15491282_i_out {Type IO LastRead 1 FirstWrite 5}
		conv_i_i_i15491278_i_out {Type IO LastRead 1 FirstWrite 5}
		conv_i_i_i15491274_i_out {Type IO LastRead 1 FirstWrite 5}
		conv_i_i_i15491270_i_out {Type IO LastRead 1 FirstWrite 5}
		conv_i_i_i15491266_i_out {Type IO LastRead 1 FirstWrite 5}
		conv_i_i_i3621262_i_out {Type IO LastRead 1 FirstWrite 19}
		conv_i_i_i11201258_i_out {Type IO LastRead 1 FirstWrite 18}
		conv_i_i_i11531254_i_out {Type IO LastRead 1 FirstWrite 17}
		conv_i_i_i11861250_i_out {Type IO LastRead 1 FirstWrite 16}
		conv_i_i_i12191246_i_out {Type IO LastRead 1 FirstWrite 15}
		conv_i_i_i12521242_i_out {Type IO LastRead 1 FirstWrite 14}
		conv_i_i_i12851238_i_out {Type IO LastRead 1 FirstWrite 13}
		conv_i_i_i13181234_i_out {Type IO LastRead 1 FirstWrite 12}
		conv_i_i_i3621230_i_out {Type IO LastRead 1 FirstWrite 19}
		conv_i_i_i11201226_i_out {Type IO LastRead 1 FirstWrite 18}
		conv_i_i_i11531222_i_out {Type IO LastRead 1 FirstWrite 17}
		conv_i_i_i11861218_i_out {Type IO LastRead 1 FirstWrite 16}
		conv_i_i_i12191214_i_out {Type IO LastRead 1 FirstWrite 15}
		conv_i_i_i12521210_i_out {Type IO LastRead 1 FirstWrite 14}
		conv_i_i_i12851206_i_out {Type IO LastRead 1 FirstWrite 13}
		conv_i_i_i13181202_i_out {Type IO LastRead 1 FirstWrite 12}
		conv_i_i_i3621198_i_out {Type IO LastRead 1 FirstWrite 19}
		conv_i_i_i11201194_i_out {Type IO LastRead 1 FirstWrite 18}
		conv_i_i_i11531190_i_out {Type IO LastRead 1 FirstWrite 17}
		conv_i_i_i11861186_i_out {Type IO LastRead 1 FirstWrite 16}
		conv_i_i_i12191182_i_out {Type IO LastRead 1 FirstWrite 15}
		conv_i_i_i12521178_i_out {Type IO LastRead 1 FirstWrite 14}
		conv_i_i_i12851174_i_out {Type IO LastRead 1 FirstWrite 13}
		conv_i_i_i13181170_i_out {Type IO LastRead 1 FirstWrite 12}
		conv_i_i_i3621166_i_out {Type IO LastRead 1 FirstWrite 19}
		conv_i_i_i11201162_i_out {Type IO LastRead 1 FirstWrite 18}
		conv_i_i_i11531158_i_out {Type IO LastRead 1 FirstWrite 17}
		conv_i_i_i11861154_i_out {Type IO LastRead 1 FirstWrite 16}
		conv_i_i_i12191150_i_out {Type IO LastRead 1 FirstWrite 15}
		conv_i_i_i12521146_i_out {Type IO LastRead 1 FirstWrite 14}
		conv_i_i_i12851142_i_out {Type IO LastRead 1 FirstWrite 13}
		conv_i_i_i13181138_i_out {Type IO LastRead 1 FirstWrite 12}
		conv_i_i_i3621134_i_out {Type IO LastRead 1 FirstWrite 19}
		conv_i_i_i11201130_i_out {Type IO LastRead 1 FirstWrite 18}
		conv_i_i_i11531126_i_out {Type IO LastRead 1 FirstWrite 17}
		conv_i_i_i11861122_i_out {Type IO LastRead 1 FirstWrite 16}
		conv_i_i_i12191118_i_out {Type IO LastRead 1 FirstWrite 15}
		conv_i_i_i12521114_i_out {Type IO LastRead 1 FirstWrite 14}
		conv_i_i_i12851110_i_out {Type IO LastRead 1 FirstWrite 13}
		conv_i_i_i13181106_i_out {Type IO LastRead 1 FirstWrite 12}
		conv_i_i_i3621102_i_out {Type IO LastRead 1 FirstWrite 19}
		conv_i_i_i11201098_i_out {Type IO LastRead 1 FirstWrite 18}
		conv_i_i_i11531094_i_out {Type IO LastRead 1 FirstWrite 17}
		conv_i_i_i11861090_i_out {Type IO LastRead 1 FirstWrite 16}
		conv_i_i_i12191086_i_out {Type IO LastRead 1 FirstWrite 15}
		conv_i_i_i12521082_i_out {Type IO LastRead 1 FirstWrite 14}
		conv_i_i_i12851078_i_out {Type IO LastRead 1 FirstWrite 13}
		conv_i_i_i13181074_i_out {Type IO LastRead 1 FirstWrite 12}
		conv_i_i_i3621070_i_out {Type IO LastRead 1 FirstWrite 19}
		conv_i_i_i11201066_i_out {Type IO LastRead 1 FirstWrite 18}
		conv_i_i_i11531062_i_out {Type IO LastRead 1 FirstWrite 17}
		conv_i_i_i11861058_i_out {Type IO LastRead 1 FirstWrite 16}
		conv_i_i_i12191054_i_out {Type IO LastRead 1 FirstWrite 15}
		conv_i_i_i12521050_i_out {Type IO LastRead 1 FirstWrite 14}
		conv_i_i_i12851046_i_out {Type IO LastRead 1 FirstWrite 13}
		conv_i_i_i13181042_i_out {Type IO LastRead 1 FirstWrite 12}
		conv_i_i_i3621038_i_out {Type IO LastRead 1 FirstWrite 19}
		conv_i_i_i11201034_i_out {Type IO LastRead 1 FirstWrite 18}
		conv_i_i_i11531030_i_out {Type IO LastRead 1 FirstWrite 17}
		conv_i_i_i11861026_i_out {Type IO LastRead 1 FirstWrite 16}
		conv_i_i_i12191022_i_out {Type IO LastRead 1 FirstWrite 15}
		conv_i_i_i12521018_i_out {Type IO LastRead 1 FirstWrite 14}
		conv_i_i_i12851014_i_out {Type IO LastRead 1 FirstWrite 13}
		conv_i_i_i13181010_i_out {Type IO LastRead 1 FirstWrite 12}
		conv_i_i_i15821006_i_out {Type IO LastRead 1 FirstWrite 4}
		conv_i_i_i15821002_i_out {Type IO LastRead 1 FirstWrite 4}
		conv_i_i_i1582998_i_out {Type IO LastRead 1 FirstWrite 4}
		conv_i_i_i1582994_i_out {Type IO LastRead 1 FirstWrite 4}
		conv_i_i_i1582990_i_out {Type IO LastRead 1 FirstWrite 4}
		conv_i_i_i1582986_i_out {Type IO LastRead 1 FirstWrite 4}
		conv_i_i_i1582982_i_out {Type IO LastRead 1 FirstWrite 4}
		conv_i_i_i1582978_i_out {Type IO LastRead 1 FirstWrite 4}}
	QRD_Pipeline_VITIS_LOOP_325_9_VITIS_LOOP_326_10 {
		conv_i_i_i1582975_lcssa1488_i {Type I LastRead 0 FirstWrite -1}
		conv_i_i_i15491263_lcssa1632_i {Type I LastRead 0 FirstWrite -1}
		conv_i_i_i15161295_lcssa1648_i {Type I LastRead 0 FirstWrite -1}
		conv_i_i_i14831327_lcssa1664_i {Type I LastRead 0 FirstWrite -1}
		conv_i_i_i14501359_lcssa1680_i {Type I LastRead 0 FirstWrite -1}
		conv_i_i_i14171391_lcssa1696_i {Type I LastRead 0 FirstWrite -1}
		conv_i_i_i13841423_lcssa1712_i {Type I LastRead 0 FirstWrite -1}
		conv_i_i_i13511455_lcssa1728_i {Type I LastRead 0 FirstWrite -1}
		conv_i_i_i1582979_lcssa1490_i {Type I LastRead 0 FirstWrite -1}
		conv_i_i_i15491267_lcssa1634_i {Type I LastRead 0 FirstWrite -1}
		conv_i_i_i15161299_lcssa1650_i {Type I LastRead 0 FirstWrite -1}
		conv_i_i_i14831331_lcssa1666_i {Type I LastRead 0 FirstWrite -1}
		conv_i_i_i14501363_lcssa1682_i {Type I LastRead 0 FirstWrite -1}
		conv_i_i_i14171395_lcssa1698_i {Type I LastRead 0 FirstWrite -1}
		conv_i_i_i13841427_lcssa1714_i {Type I LastRead 0 FirstWrite -1}
		conv_i_i_i13511459_lcssa1730_i {Type I LastRead 0 FirstWrite -1}
		conv_i_i_i1582983_lcssa1492_i {Type I LastRead 0 FirstWrite -1}
		conv_i_i_i15491271_lcssa1636_i {Type I LastRead 0 FirstWrite -1}
		conv_i_i_i15161303_lcssa1652_i {Type I LastRead 0 FirstWrite -1}
		conv_i_i_i14831335_lcssa1668_i {Type I LastRead 0 FirstWrite -1}
		conv_i_i_i14501367_lcssa1684_i {Type I LastRead 0 FirstWrite -1}
		conv_i_i_i14171399_lcssa1700_i {Type I LastRead 0 FirstWrite -1}
		conv_i_i_i13841431_lcssa1716_i {Type I LastRead 0 FirstWrite -1}
		conv_i_i_i13511463_lcssa1732_i {Type I LastRead 0 FirstWrite -1}
		conv_i_i_i1582987_lcssa1494_i {Type I LastRead 0 FirstWrite -1}
		conv_i_i_i15491275_lcssa1638_i {Type I LastRead 0 FirstWrite -1}
		conv_i_i_i15161307_lcssa1654_i {Type I LastRead 0 FirstWrite -1}
		conv_i_i_i14831339_lcssa1670_i {Type I LastRead 0 FirstWrite -1}
		conv_i_i_i14501371_lcssa1686_i {Type I LastRead 0 FirstWrite -1}
		conv_i_i_i14171403_lcssa1702_i {Type I LastRead 0 FirstWrite -1}
		conv_i_i_i13841435_lcssa1718_i {Type I LastRead 0 FirstWrite -1}
		conv_i_i_i13511467_lcssa1734_i {Type I LastRead 0 FirstWrite -1}
		conv_i_i_i1582991_lcssa1496_i {Type I LastRead 0 FirstWrite -1}
		conv_i_i_i15491279_lcssa1640_i {Type I LastRead 0 FirstWrite -1}
		conv_i_i_i15161311_lcssa1656_i {Type I LastRead 0 FirstWrite -1}
		conv_i_i_i14831343_lcssa1672_i {Type I LastRead 0 FirstWrite -1}
		conv_i_i_i14501375_lcssa1688_i {Type I LastRead 0 FirstWrite -1}
		conv_i_i_i14171407_lcssa1704_i {Type I LastRead 0 FirstWrite -1}
		conv_i_i_i13841439_lcssa1720_i {Type I LastRead 0 FirstWrite -1}
		conv_i_i_i13511471_lcssa1736_i {Type I LastRead 0 FirstWrite -1}
		conv_i_i_i1582995_lcssa1498_i {Type I LastRead 0 FirstWrite -1}
		conv_i_i_i15491283_lcssa1642_i {Type I LastRead 0 FirstWrite -1}
		conv_i_i_i15161315_lcssa1658_i {Type I LastRead 0 FirstWrite -1}
		conv_i_i_i14831347_lcssa1674_i {Type I LastRead 0 FirstWrite -1}
		conv_i_i_i14501379_lcssa1690_i {Type I LastRead 0 FirstWrite -1}
		conv_i_i_i14171411_lcssa1706_i {Type I LastRead 0 FirstWrite -1}
		conv_i_i_i13841443_lcssa1722_i {Type I LastRead 0 FirstWrite -1}
		conv_i_i_i13511475_lcssa1738_i {Type I LastRead 0 FirstWrite -1}
		conv_i_i_i1582999_lcssa1500_i {Type I LastRead 0 FirstWrite -1}
		conv_i_i_i15491287_lcssa1644_i {Type I LastRead 0 FirstWrite -1}
		conv_i_i_i15161319_lcssa1660_i {Type I LastRead 0 FirstWrite -1}
		conv_i_i_i14831351_lcssa1676_i {Type I LastRead 0 FirstWrite -1}
		conv_i_i_i14501383_lcssa1692_i {Type I LastRead 0 FirstWrite -1}
		conv_i_i_i14171415_lcssa1708_i {Type I LastRead 0 FirstWrite -1}
		conv_i_i_i13841447_lcssa1724_i {Type I LastRead 0 FirstWrite -1}
		conv_i_i_i13511479_lcssa1740_i {Type I LastRead 0 FirstWrite -1}
		conv_i_i_i15821003_lcssa1502_i {Type I LastRead 0 FirstWrite -1}
		conv_i_i_i15491291_lcssa1646_i {Type I LastRead 0 FirstWrite -1}
		conv_i_i_i15161323_lcssa1662_i {Type I LastRead 0 FirstWrite -1}
		conv_i_i_i14831355_lcssa1678_i {Type I LastRead 0 FirstWrite -1}
		conv_i_i_i14501387_lcssa1694_i {Type I LastRead 0 FirstWrite -1}
		conv_i_i_i14171419_lcssa1710_i {Type I LastRead 0 FirstWrite -1}
		conv_i_i_i13841451_lcssa1726_i {Type I LastRead 0 FirstWrite -1}
		conv_i_i_i13511483_lcssa1742_i {Type I LastRead 0 FirstWrite -1}
		Y_V_load {Type I LastRead 0 FirstWrite -1}
		Y_V_1_load {Type I LastRead 0 FirstWrite -1}
		Y_V_2_load {Type I LastRead 0 FirstWrite -1}
		Y_V_3_load {Type I LastRead 0 FirstWrite -1}
		Y_V_4_load {Type I LastRead 0 FirstWrite -1}
		Y_V_5_load {Type I LastRead 0 FirstWrite -1}
		Y_V_6_load {Type I LastRead 0 FirstWrite -1}
		Y_V_7_load {Type I LastRead 0 FirstWrite -1}
		Y_V_load_1 {Type I LastRead 0 FirstWrite -1}
		Y_V_1_load_1 {Type I LastRead 0 FirstWrite -1}
		Y_V_2_load_1 {Type I LastRead 0 FirstWrite -1}
		Y_V_3_load_1 {Type I LastRead 0 FirstWrite -1}
		Y_V_4_load_1 {Type I LastRead 0 FirstWrite -1}
		Y_V_5_load_1 {Type I LastRead 0 FirstWrite -1}
		Y_V_6_load_1 {Type I LastRead 0 FirstWrite -1}
		Y_V_7_load_1 {Type I LastRead 0 FirstWrite -1}
		Y_V_load_2 {Type I LastRead 0 FirstWrite -1}
		Y_V_1_load_2 {Type I LastRead 0 FirstWrite -1}
		Y_V_2_load_2 {Type I LastRead 0 FirstWrite -1}
		Y_V_3_load_2 {Type I LastRead 0 FirstWrite -1}
		Y_V_4_load_2 {Type I LastRead 0 FirstWrite -1}
		Y_V_5_load_2 {Type I LastRead 0 FirstWrite -1}
		Y_V_6_load_2 {Type I LastRead 0 FirstWrite -1}
		Y_V_7_load_2 {Type I LastRead 0 FirstWrite -1}
		Y_V_load_3 {Type I LastRead 0 FirstWrite -1}
		Y_V_1_load_3 {Type I LastRead 0 FirstWrite -1}
		Y_V_2_load_3 {Type I LastRead 0 FirstWrite -1}
		Y_V_3_load_3 {Type I LastRead 0 FirstWrite -1}
		Y_V_4_load_3 {Type I LastRead 0 FirstWrite -1}
		Y_V_5_load_3 {Type I LastRead 0 FirstWrite -1}
		Y_V_6_load_3 {Type I LastRead 0 FirstWrite -1}
		Y_V_7_load_3 {Type I LastRead 0 FirstWrite -1}
		Y_V_load_4 {Type I LastRead 0 FirstWrite -1}
		Y_V_1_load_4 {Type I LastRead 0 FirstWrite -1}
		Y_V_2_load_4 {Type I LastRead 0 FirstWrite -1}
		Y_V_3_load_4 {Type I LastRead 0 FirstWrite -1}
		Y_V_4_load_4 {Type I LastRead 0 FirstWrite -1}
		Y_V_5_load_4 {Type I LastRead 0 FirstWrite -1}
		Y_V_6_load_4 {Type I LastRead 0 FirstWrite -1}
		Y_V_7_load_4 {Type I LastRead 0 FirstWrite -1}
		Y_V_load_5 {Type I LastRead 0 FirstWrite -1}
		Y_V_1_load_5 {Type I LastRead 0 FirstWrite -1}
		Y_V_2_load_5 {Type I LastRead 0 FirstWrite -1}
		Y_V_3_load_5 {Type I LastRead 0 FirstWrite -1}
		Y_V_4_load_5 {Type I LastRead 0 FirstWrite -1}
		Y_V_5_load_5 {Type I LastRead 0 FirstWrite -1}
		Y_V_6_load_5 {Type I LastRead 0 FirstWrite -1}
		Y_V_7_load_5 {Type I LastRead 0 FirstWrite -1}
		Y_V_load_6 {Type I LastRead 0 FirstWrite -1}
		Y_V_1_load_6 {Type I LastRead 0 FirstWrite -1}
		Y_V_2_load_6 {Type I LastRead 0 FirstWrite -1}
		Y_V_3_load_6 {Type I LastRead 0 FirstWrite -1}
		Y_V_4_load_6 {Type I LastRead 0 FirstWrite -1}
		Y_V_5_load_6 {Type I LastRead 0 FirstWrite -1}
		Y_V_6_load_6 {Type I LastRead 0 FirstWrite -1}
		Y_V_7_load_6 {Type I LastRead 0 FirstWrite -1}
		Y_V_load_7 {Type I LastRead 0 FirstWrite -1}
		Y_V_1_load_7 {Type I LastRead 0 FirstWrite -1}
		Y_V_2_load_7 {Type I LastRead 0 FirstWrite -1}
		Y_V_3_load_7 {Type I LastRead 0 FirstWrite -1}
		Y_V_4_load_7 {Type I LastRead 0 FirstWrite -1}
		Y_V_5_load_7 {Type I LastRead 0 FirstWrite -1}
		Y_V_6_load_7 {Type I LastRead 0 FirstWrite -1}
		Y_V_7_load_7 {Type I LastRead 0 FirstWrite -1}
		Q {Type O LastRead -1 FirstWrite 10}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3350", "Max" : "9452"}
	, {"Name" : "Interval", "Min" : "3350", "Max" : "9452"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	H_real_spl1 { ap_fifo {  { H_real_spl1_dout fifo_data 0 16 }  { H_real_spl1_empty_n fifo_status 0 1 }  { H_real_spl1_read fifo_update 1 1 } } }
	H_imag_spl1 { ap_fifo {  { H_imag_spl1_dout fifo_data 0 16 }  { H_imag_spl1_empty_n fifo_status 0 1 }  { H_imag_spl1_read fifo_update 1 1 } } }
	R { ap_fifo {  { R_din fifo_data 1 16 }  { R_full_n fifo_status 0 1 }  { R_write fifo_update 1 1 } } }
	Q { ap_fifo {  { Q_din fifo_data 1 16 }  { Q_full_n fifo_status 0 1 }  { Q_write fifo_update 1 1 } } }
}

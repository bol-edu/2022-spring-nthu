set moduleName KBEST
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
set C_modelName {KBEST}
set C_modelType { void 0 }
set C_modelArgList {
	{ R int 16 regular {fifo 0 volatile } {global 0}  }
	{ MULQ_out int 16 regular {fifo 0 volatile } {global 0}  }
	{ KB_out int 16 regular {fifo 1 volatile } {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "R", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "MULQ_out", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "KB_out", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY", "extern" : 0} ]}
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
	{ R_dout sc_in sc_lv 16 signal 0 } 
	{ R_empty_n sc_in sc_logic 1 signal 0 } 
	{ R_read sc_out sc_logic 1 signal 0 } 
	{ MULQ_out_dout sc_in sc_lv 16 signal 1 } 
	{ MULQ_out_empty_n sc_in sc_logic 1 signal 1 } 
	{ MULQ_out_read sc_out sc_logic 1 signal 1 } 
	{ KB_out_din sc_out sc_lv 16 signal 2 } 
	{ KB_out_full_n sc_in sc_logic 1 signal 2 } 
	{ KB_out_write sc_out sc_logic 1 signal 2 } 
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
 	{ "name": "R_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "R", "role": "dout" }} , 
 	{ "name": "R_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "R", "role": "empty_n" }} , 
 	{ "name": "R_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "R", "role": "read" }} , 
 	{ "name": "MULQ_out_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "MULQ_out", "role": "dout" }} , 
 	{ "name": "MULQ_out_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "MULQ_out", "role": "empty_n" }} , 
 	{ "name": "MULQ_out_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "MULQ_out", "role": "read" }} , 
 	{ "name": "KB_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "KB_out", "role": "din" }} , 
 	{ "name": "KB_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "KB_out", "role": "full_n" }} , 
 	{ "name": "KB_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "KB_out", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "7", "9", "12", "14", "16", "23", "41", "45"],
		"CDFG" : "KBEST",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "7557", "EstimateLatencyMax" : "13957",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "R", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_KBEST_Pipeline_VITIS_LOOP_21_1_fu_876", "Port" : "R", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "MULQ_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_KBEST_Pipeline_VITIS_LOOP_31_3_fu_884", "Port" : "MULQ_out", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "KB_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_KBEST_Pipeline_VITIS_LOOP_104_12_fu_953", "Port" : "KB_out", "Inst_start_state" : "7", "Inst_end_state" : "20"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_55_6", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "20", "FirstState" : "ap_ST_fsm_state10", "LastState" : ["ap_ST_fsm_state15"], "QuitState" : ["ap_ST_fsm_state10"], "PreState" : ["ap_ST_fsm_state9"], "PostState" : ["ap_ST_fsm_state16", "ap_ST_fsm_state17"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_36_4", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "20", "FirstState" : "ap_ST_fsm_state7", "LastState" : ["ap_ST_fsm_state19"], "QuitState" : ["ap_ST_fsm_state7"], "PreState" : ["ap_ST_fsm_state6"], "PostState" : ["ap_ST_fsm_state20"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_27_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "20", "FirstState" : "ap_ST_fsm_state4", "LastState" : ["ap_ST_fsm_state20"], "QuitState" : ["ap_ST_fsm_state4"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.yy_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PED_V_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.survival_path_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.R_V_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_KBEST_Pipeline_1_fu_840", "Parent" : "0", "Child" : ["6"],
		"CDFG" : "KBEST_Pipeline_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "34", "EstimateLatencyMax" : "34",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "p_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out1", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out2", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out3", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out4", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out5", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out6", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out7", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out8", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out9", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out10", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out11", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out12", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out13", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out14", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out15", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out16", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out17", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out18", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out19", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out20", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out21", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out22", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out23", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out24", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out25", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out26", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out27", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out28", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out29", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out30", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out31", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "NotSupport"}]},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KBEST_Pipeline_1_fu_840.flow_control_loop_pipe_sequential_init_U", "Parent" : "5"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_KBEST_Pipeline_VITIS_LOOP_21_1_fu_876", "Parent" : "0", "Child" : ["8"],
		"CDFG" : "KBEST_Pipeline_VITIS_LOOP_21_1",
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
			{"Name" : "R_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "R", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "R_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_21_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KBEST_Pipeline_VITIS_LOOP_21_1_fu_876.flow_control_loop_pipe_sequential_init_U", "Parent" : "7"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_KBEST_Pipeline_VITIS_LOOP_31_3_fu_884", "Parent" : "0", "Child" : ["10", "11"],
		"CDFG" : "KBEST_Pipeline_VITIS_LOOP_31_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "13", "EstimateLatencyMax" : "13",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "yy_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "MULQ_out", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "MULQ_out_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_31_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KBEST_Pipeline_VITIS_LOOP_31_3_fu_884.mul_mul_16s_9ns_24_4_1_U1102", "Parent" : "9"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KBEST_Pipeline_VITIS_LOOP_31_3_fu_884.flow_control_loop_pipe_sequential_init_U", "Parent" : "9"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_KBEST_Pipeline_VITIS_LOOP_48_5_fu_891", "Parent" : "0", "Child" : ["13"],
		"CDFG" : "KBEST_Pipeline_VITIS_LOOP_48_5",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "9",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "select_ln42_61", "Type" : "None", "Direction" : "I"},
			{"Name" : "select_ln42_62", "Type" : "None", "Direction" : "I"},
			{"Name" : "select_ln42_64", "Type" : "None", "Direction" : "I"},
			{"Name" : "select_ln42_67", "Type" : "None", "Direction" : "I"},
			{"Name" : "select_ln42_69", "Type" : "None", "Direction" : "I"},
			{"Name" : "select_ln42_72", "Type" : "None", "Direction" : "I"},
			{"Name" : "select_ln42_75", "Type" : "None", "Direction" : "I"},
			{"Name" : "select_ln42_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "select_ln42_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "select_ln42_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "select_ln42_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "select_ln42_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "select_ln42_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "select_ln42_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "select_ln42_42", "Type" : "None", "Direction" : "I"},
			{"Name" : "select_ln42_43", "Type" : "None", "Direction" : "I"},
			{"Name" : "select_ln42_45", "Type" : "None", "Direction" : "I"},
			{"Name" : "select_ln42_48", "Type" : "None", "Direction" : "I"},
			{"Name" : "select_ln42_50", "Type" : "None", "Direction" : "I"},
			{"Name" : "select_ln42_53", "Type" : "None", "Direction" : "I"},
			{"Name" : "select_ln42_56", "Type" : "None", "Direction" : "I"},
			{"Name" : "select_ln42_35", "Type" : "None", "Direction" : "I"},
			{"Name" : "select_ln42_32", "Type" : "None", "Direction" : "I"},
			{"Name" : "select_ln42_31", "Type" : "None", "Direction" : "I"},
			{"Name" : "select_ln42_29", "Type" : "None", "Direction" : "I"},
			{"Name" : "select_ln42_26", "Type" : "None", "Direction" : "I"},
			{"Name" : "select_ln42_24", "Type" : "None", "Direction" : "I"},
			{"Name" : "select_ln42_21", "Type" : "None", "Direction" : "I"},
			{"Name" : "survival_path", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "zext_ln36", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out1", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out2", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out3", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out4", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out5", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out6", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out7", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out8", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out9", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out10", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out11", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out12", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out13", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out14", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out15", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out16", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out17", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out18", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out19", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out20", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out21", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out22", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out23", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out24", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out25", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out26", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out27", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_48_5", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KBEST_Pipeline_VITIS_LOOP_48_5_fu_891.flow_control_loop_pipe_sequential_init_U", "Parent" : "12"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_KBEST_Pipeline_VITIS_LOOP_104_12_fu_953", "Parent" : "0", "Child" : ["15"],
		"CDFG" : "KBEST_Pipeline_VITIS_LOOP_104_12",
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
			{"Name" : "survival_path", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KB_out", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "KB_out_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_104_12", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KBEST_Pipeline_VITIS_LOOP_104_12_fu_953.flow_control_loop_pipe_sequential_init_U", "Parent" : "14"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_KBEST_Pipeline_VITIS_LOOP_57_7_fu_960", "Parent" : "0", "Child" : ["17", "18", "19", "20", "21", "22"],
		"CDFG" : "KBEST_Pipeline_VITIS_LOOP_57_7",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "zext_ln36", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln712", "Type" : "None", "Direction" : "I"},
			{"Name" : "R_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "select_ln42_37", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload269", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload270", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload271", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload272", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload273", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload274", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload268", "Type" : "None", "Direction" : "I"},
			{"Name" : "select_ln42_39", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload262", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload263", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload264", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload265", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload266", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload267", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload261", "Type" : "None", "Direction" : "I"},
			{"Name" : "select_ln42_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload255", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload256", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload257", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload258", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload259", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload260", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload254", "Type" : "None", "Direction" : "I"},
			{"Name" : "select_ln42_58", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload248", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload249", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload250", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload251", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload252", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload253", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload247", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_27", "Type" : "None", "Direction" : "I"},
			{"Name" : "dist_V_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_57_7", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KBEST_Pipeline_VITIS_LOOP_57_7_fu_960.mux_864_32_1_1_U1164", "Parent" : "16"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KBEST_Pipeline_VITIS_LOOP_57_7_fu_960.mux_864_32_1_1_U1165", "Parent" : "16"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KBEST_Pipeline_VITIS_LOOP_57_7_fu_960.mux_864_32_1_1_U1166", "Parent" : "16"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KBEST_Pipeline_VITIS_LOOP_57_7_fu_960.mux_864_32_1_1_U1167", "Parent" : "16"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KBEST_Pipeline_VITIS_LOOP_57_7_fu_960.mux_42_32_1_1_U1168", "Parent" : "16"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KBEST_Pipeline_VITIS_LOOP_57_7_fu_960.flow_control_loop_pipe_sequential_init_U", "Parent" : "16"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_KBEST_Pipeline_VITIS_LOOP_75_8_VITIS_LOOP_76_9_fu_1001", "Parent" : "0", "Child" : ["24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40"],
		"CDFG" : "KBEST_Pipeline_VITIS_LOOP_75_8_VITIS_LOOP_76_9",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "14", "EstimateLatencyMax" : "14",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "p_reload247", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload253", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload252", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload251", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload250", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload249", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload248", "Type" : "None", "Direction" : "I"},
			{"Name" : "select_ln42_58", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload254", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload260", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload259", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload258", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload257", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload256", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload255", "Type" : "None", "Direction" : "I"},
			{"Name" : "select_ln42_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload261", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload267", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload266", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload265", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload264", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload263", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload262", "Type" : "None", "Direction" : "I"},
			{"Name" : "select_ln42_39", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload268", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload274", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload273", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload272", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload271", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload270", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload269", "Type" : "None", "Direction" : "I"},
			{"Name" : "select_ln42_37", "Type" : "None", "Direction" : "I"},
			{"Name" : "PED_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "conv_i2_i_i349_lcssa447_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv_i2_i_i345_lcssa444_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv_i2_i_i341_lcssa441_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv_i2_i_i337_lcssa438_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv_i2_i_i333_lcssa435_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv_i2_i_i329_lcssa432_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv_i2_i_i325_lcssa429_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv_i2_i_i321_lcssa426_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_i2_i_i316_lcssa423_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv_i2_i_i310_lcssa420_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv_i2_i_i304_lcssa417_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv_i2_i_i298_lcssa414_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv_i2_i_i292_lcssa411_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv_i2_i_i286_lcssa408_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv_i2_i_i280_lcssa405_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv_i2_i_i274_lcssa402_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_i2_i_i269_lcssa399_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv_i2_i_i263_lcssa396_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv_i2_i_i257_lcssa393_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv_i2_i_i251_lcssa390_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv_i2_i_i245_lcssa387_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv_i2_i_i239_lcssa384_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv_i2_i_i233_lcssa381_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv_i2_i_i227_lcssa378_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_lcssa226375_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_lcssa224372_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_lcssa222369_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_lcssa220366_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_lcssa218363_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_lcssa216360_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_lcssa214357_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_lcssa212354_i_out", "Type" : "OVld", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_75_8_VITIS_LOOP_76_9", "PipelineType" : "NotSupport"}]},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KBEST_Pipeline_VITIS_LOOP_75_8_VITIS_LOOP_76_9_fu_1001.mux_32_32_1_1_U1208", "Parent" : "23"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KBEST_Pipeline_VITIS_LOOP_75_8_VITIS_LOOP_76_9_fu_1001.mux_32_32_1_1_U1209", "Parent" : "23"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KBEST_Pipeline_VITIS_LOOP_75_8_VITIS_LOOP_76_9_fu_1001.mux_32_32_1_1_U1210", "Parent" : "23"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KBEST_Pipeline_VITIS_LOOP_75_8_VITIS_LOOP_76_9_fu_1001.mux_32_32_1_1_U1211", "Parent" : "23"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KBEST_Pipeline_VITIS_LOOP_75_8_VITIS_LOOP_76_9_fu_1001.mux_32_32_1_1_U1212", "Parent" : "23"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KBEST_Pipeline_VITIS_LOOP_75_8_VITIS_LOOP_76_9_fu_1001.mux_32_32_1_1_U1213", "Parent" : "23"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KBEST_Pipeline_VITIS_LOOP_75_8_VITIS_LOOP_76_9_fu_1001.mux_32_32_1_1_U1214", "Parent" : "23"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KBEST_Pipeline_VITIS_LOOP_75_8_VITIS_LOOP_76_9_fu_1001.mux_32_32_1_1_U1215", "Parent" : "23"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KBEST_Pipeline_VITIS_LOOP_75_8_VITIS_LOOP_76_9_fu_1001.mux_32_32_1_1_U1216", "Parent" : "23"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KBEST_Pipeline_VITIS_LOOP_75_8_VITIS_LOOP_76_9_fu_1001.mux_32_32_1_1_U1217", "Parent" : "23"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KBEST_Pipeline_VITIS_LOOP_75_8_VITIS_LOOP_76_9_fu_1001.mux_32_32_1_1_U1218", "Parent" : "23"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KBEST_Pipeline_VITIS_LOOP_75_8_VITIS_LOOP_76_9_fu_1001.mux_32_32_1_1_U1219", "Parent" : "23"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KBEST_Pipeline_VITIS_LOOP_75_8_VITIS_LOOP_76_9_fu_1001.mux_32_32_1_1_U1220", "Parent" : "23"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KBEST_Pipeline_VITIS_LOOP_75_8_VITIS_LOOP_76_9_fu_1001.mux_32_32_1_1_U1221", "Parent" : "23"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KBEST_Pipeline_VITIS_LOOP_75_8_VITIS_LOOP_76_9_fu_1001.mux_32_32_1_1_U1222", "Parent" : "23"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KBEST_Pipeline_VITIS_LOOP_75_8_VITIS_LOOP_76_9_fu_1001.mux_32_32_1_1_U1223", "Parent" : "23"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KBEST_Pipeline_VITIS_LOOP_75_8_VITIS_LOOP_76_9_fu_1001.flow_control_loop_pipe_sequential_init_U", "Parent" : "23"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_KBEST_Pipeline_VITIS_LOOP_94_11_fu_1070", "Parent" : "0", "Child" : ["42", "43", "44"],
		"CDFG" : "KBEST_Pipeline_VITIS_LOOP_94_11",
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
			{"Name" : "survival_path", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "x_guess_62", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_guess_51", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_guess_50", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_guess_49", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_guess_48", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_guess_47", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_guess_46", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_guess_52", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_guess_63", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_guess_58", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_guess_57", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_guess_56", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_guess_55", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_guess_54", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_guess_53", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_guess_59", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_94_11", "PipelineType" : "NotSupport"}]},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KBEST_Pipeline_VITIS_LOOP_94_11_fu_1070.mux_84_32_1_1_U1290", "Parent" : "41"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KBEST_Pipeline_VITIS_LOOP_94_11_fu_1070.mux_84_32_1_1_U1291", "Parent" : "41"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KBEST_Pipeline_VITIS_LOOP_94_11_fu_1070.flow_control_loop_pipe_sequential_init_U", "Parent" : "41"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.am_submul_16s_16s_24_4_1_U1312", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	KBEST {
		R {Type I LastRead 1 FirstWrite -1}
		MULQ_out {Type I LastRead 1 FirstWrite -1}
		KB_out {Type O LastRead -1 FirstWrite 1}}
	KBEST_Pipeline_1 {
		p_out {Type O LastRead -1 FirstWrite 0}
		p_out1 {Type O LastRead -1 FirstWrite 0}
		p_out2 {Type O LastRead -1 FirstWrite 0}
		p_out3 {Type O LastRead -1 FirstWrite 0}
		p_out4 {Type O LastRead -1 FirstWrite 0}
		p_out5 {Type O LastRead -1 FirstWrite 0}
		p_out6 {Type O LastRead -1 FirstWrite 0}
		p_out7 {Type O LastRead -1 FirstWrite 0}
		p_out8 {Type O LastRead -1 FirstWrite 0}
		p_out9 {Type O LastRead -1 FirstWrite 0}
		p_out10 {Type O LastRead -1 FirstWrite 0}
		p_out11 {Type O LastRead -1 FirstWrite 0}
		p_out12 {Type O LastRead -1 FirstWrite 0}
		p_out13 {Type O LastRead -1 FirstWrite 0}
		p_out14 {Type O LastRead -1 FirstWrite 0}
		p_out15 {Type O LastRead -1 FirstWrite 0}
		p_out16 {Type O LastRead -1 FirstWrite 0}
		p_out17 {Type O LastRead -1 FirstWrite 0}
		p_out18 {Type O LastRead -1 FirstWrite 0}
		p_out19 {Type O LastRead -1 FirstWrite 0}
		p_out20 {Type O LastRead -1 FirstWrite 0}
		p_out21 {Type O LastRead -1 FirstWrite 0}
		p_out22 {Type O LastRead -1 FirstWrite 0}
		p_out23 {Type O LastRead -1 FirstWrite 0}
		p_out24 {Type O LastRead -1 FirstWrite 0}
		p_out25 {Type O LastRead -1 FirstWrite 0}
		p_out26 {Type O LastRead -1 FirstWrite 0}
		p_out27 {Type O LastRead -1 FirstWrite 0}
		p_out28 {Type O LastRead -1 FirstWrite 0}
		p_out29 {Type O LastRead -1 FirstWrite 0}
		p_out30 {Type O LastRead -1 FirstWrite 0}
		p_out31 {Type O LastRead -1 FirstWrite 0}}
	KBEST_Pipeline_VITIS_LOOP_21_1 {
		R_V {Type O LastRead -1 FirstWrite 1}
		R {Type I LastRead 1 FirstWrite -1}}
	KBEST_Pipeline_VITIS_LOOP_31_3 {
		yy_V {Type O LastRead -1 FirstWrite 4}
		MULQ_out {Type I LastRead 1 FirstWrite -1}}
	KBEST_Pipeline_VITIS_LOOP_48_5 {
		select_ln42_61 {Type I LastRead 0 FirstWrite -1}
		select_ln42_62 {Type I LastRead 0 FirstWrite -1}
		select_ln42_64 {Type I LastRead 0 FirstWrite -1}
		select_ln42_67 {Type I LastRead 0 FirstWrite -1}
		select_ln42_69 {Type I LastRead 0 FirstWrite -1}
		select_ln42_72 {Type I LastRead 0 FirstWrite -1}
		select_ln42_75 {Type I LastRead 0 FirstWrite -1}
		select_ln42_16 {Type I LastRead 0 FirstWrite -1}
		select_ln42_13 {Type I LastRead 0 FirstWrite -1}
		select_ln42_12 {Type I LastRead 0 FirstWrite -1}
		select_ln42_10 {Type I LastRead 0 FirstWrite -1}
		select_ln42_7 {Type I LastRead 0 FirstWrite -1}
		select_ln42_5 {Type I LastRead 0 FirstWrite -1}
		select_ln42_2 {Type I LastRead 0 FirstWrite -1}
		select_ln42_42 {Type I LastRead 0 FirstWrite -1}
		select_ln42_43 {Type I LastRead 0 FirstWrite -1}
		select_ln42_45 {Type I LastRead 0 FirstWrite -1}
		select_ln42_48 {Type I LastRead 0 FirstWrite -1}
		select_ln42_50 {Type I LastRead 0 FirstWrite -1}
		select_ln42_53 {Type I LastRead 0 FirstWrite -1}
		select_ln42_56 {Type I LastRead 0 FirstWrite -1}
		select_ln42_35 {Type I LastRead 0 FirstWrite -1}
		select_ln42_32 {Type I LastRead 0 FirstWrite -1}
		select_ln42_31 {Type I LastRead 0 FirstWrite -1}
		select_ln42_29 {Type I LastRead 0 FirstWrite -1}
		select_ln42_26 {Type I LastRead 0 FirstWrite -1}
		select_ln42_24 {Type I LastRead 0 FirstWrite -1}
		select_ln42_21 {Type I LastRead 0 FirstWrite -1}
		survival_path {Type I LastRead 2 FirstWrite -1}
		zext_ln36 {Type I LastRead 0 FirstWrite -1}
		p_out {Type O LastRead -1 FirstWrite 1}
		p_out1 {Type O LastRead -1 FirstWrite 1}
		p_out2 {Type O LastRead -1 FirstWrite 1}
		p_out3 {Type O LastRead -1 FirstWrite 1}
		p_out4 {Type O LastRead -1 FirstWrite 1}
		p_out5 {Type O LastRead -1 FirstWrite 1}
		p_out6 {Type O LastRead -1 FirstWrite 1}
		p_out7 {Type O LastRead -1 FirstWrite 1}
		p_out8 {Type O LastRead -1 FirstWrite 1}
		p_out9 {Type O LastRead -1 FirstWrite 1}
		p_out10 {Type O LastRead -1 FirstWrite 1}
		p_out11 {Type O LastRead -1 FirstWrite 1}
		p_out12 {Type O LastRead -1 FirstWrite 1}
		p_out13 {Type O LastRead -1 FirstWrite 1}
		p_out14 {Type O LastRead -1 FirstWrite 1}
		p_out15 {Type O LastRead -1 FirstWrite 1}
		p_out16 {Type O LastRead -1 FirstWrite 1}
		p_out17 {Type O LastRead -1 FirstWrite 1}
		p_out18 {Type O LastRead -1 FirstWrite 1}
		p_out19 {Type O LastRead -1 FirstWrite 1}
		p_out20 {Type O LastRead -1 FirstWrite 1}
		p_out21 {Type O LastRead -1 FirstWrite 1}
		p_out22 {Type O LastRead -1 FirstWrite 1}
		p_out23 {Type O LastRead -1 FirstWrite 1}
		p_out24 {Type O LastRead -1 FirstWrite 1}
		p_out25 {Type O LastRead -1 FirstWrite 1}
		p_out26 {Type O LastRead -1 FirstWrite 1}
		p_out27 {Type O LastRead -1 FirstWrite 1}}
	KBEST_Pipeline_VITIS_LOOP_104_12 {
		survival_path {Type I LastRead 0 FirstWrite -1}
		KB_out {Type O LastRead -1 FirstWrite 1}}
	KBEST_Pipeline_VITIS_LOOP_57_7 {
		zext_ln36 {Type I LastRead 0 FirstWrite -1}
		zext_ln712 {Type I LastRead 0 FirstWrite -1}
		R_V {Type I LastRead 1 FirstWrite -1}
		select_ln42_37 {Type I LastRead 0 FirstWrite -1}
		p_reload269 {Type I LastRead 0 FirstWrite -1}
		p_reload270 {Type I LastRead 0 FirstWrite -1}
		p_reload271 {Type I LastRead 0 FirstWrite -1}
		p_reload272 {Type I LastRead 0 FirstWrite -1}
		p_reload273 {Type I LastRead 0 FirstWrite -1}
		p_reload274 {Type I LastRead 0 FirstWrite -1}
		p_reload268 {Type I LastRead 0 FirstWrite -1}
		select_ln42_39 {Type I LastRead 0 FirstWrite -1}
		p_reload262 {Type I LastRead 0 FirstWrite -1}
		p_reload263 {Type I LastRead 0 FirstWrite -1}
		p_reload264 {Type I LastRead 0 FirstWrite -1}
		p_reload265 {Type I LastRead 0 FirstWrite -1}
		p_reload266 {Type I LastRead 0 FirstWrite -1}
		p_reload267 {Type I LastRead 0 FirstWrite -1}
		p_reload261 {Type I LastRead 0 FirstWrite -1}
		select_ln42_18 {Type I LastRead 0 FirstWrite -1}
		p_reload255 {Type I LastRead 0 FirstWrite -1}
		p_reload256 {Type I LastRead 0 FirstWrite -1}
		p_reload257 {Type I LastRead 0 FirstWrite -1}
		p_reload258 {Type I LastRead 0 FirstWrite -1}
		p_reload259 {Type I LastRead 0 FirstWrite -1}
		p_reload260 {Type I LastRead 0 FirstWrite -1}
		p_reload254 {Type I LastRead 0 FirstWrite -1}
		select_ln42_58 {Type I LastRead 0 FirstWrite -1}
		p_reload248 {Type I LastRead 0 FirstWrite -1}
		p_reload249 {Type I LastRead 0 FirstWrite -1}
		p_reload250 {Type I LastRead 0 FirstWrite -1}
		p_reload251 {Type I LastRead 0 FirstWrite -1}
		p_reload252 {Type I LastRead 0 FirstWrite -1}
		p_reload253 {Type I LastRead 0 FirstWrite -1}
		p_reload247 {Type I LastRead 0 FirstWrite -1}
		i_27 {Type I LastRead 0 FirstWrite -1}
		dist_V_out {Type O LastRead -1 FirstWrite 1}}
	KBEST_Pipeline_VITIS_LOOP_75_8_VITIS_LOOP_76_9 {
		p_reload247 {Type I LastRead 0 FirstWrite -1}
		p_reload253 {Type I LastRead 0 FirstWrite -1}
		p_reload252 {Type I LastRead 0 FirstWrite -1}
		p_reload251 {Type I LastRead 0 FirstWrite -1}
		p_reload250 {Type I LastRead 0 FirstWrite -1}
		p_reload249 {Type I LastRead 0 FirstWrite -1}
		p_reload248 {Type I LastRead 0 FirstWrite -1}
		select_ln42_58 {Type I LastRead 0 FirstWrite -1}
		p_reload254 {Type I LastRead 0 FirstWrite -1}
		p_reload260 {Type I LastRead 0 FirstWrite -1}
		p_reload259 {Type I LastRead 0 FirstWrite -1}
		p_reload258 {Type I LastRead 0 FirstWrite -1}
		p_reload257 {Type I LastRead 0 FirstWrite -1}
		p_reload256 {Type I LastRead 0 FirstWrite -1}
		p_reload255 {Type I LastRead 0 FirstWrite -1}
		select_ln42_18 {Type I LastRead 0 FirstWrite -1}
		p_reload261 {Type I LastRead 0 FirstWrite -1}
		p_reload267 {Type I LastRead 0 FirstWrite -1}
		p_reload266 {Type I LastRead 0 FirstWrite -1}
		p_reload265 {Type I LastRead 0 FirstWrite -1}
		p_reload264 {Type I LastRead 0 FirstWrite -1}
		p_reload263 {Type I LastRead 0 FirstWrite -1}
		p_reload262 {Type I LastRead 0 FirstWrite -1}
		select_ln42_39 {Type I LastRead 0 FirstWrite -1}
		p_reload268 {Type I LastRead 0 FirstWrite -1}
		p_reload274 {Type I LastRead 0 FirstWrite -1}
		p_reload273 {Type I LastRead 0 FirstWrite -1}
		p_reload272 {Type I LastRead 0 FirstWrite -1}
		p_reload271 {Type I LastRead 0 FirstWrite -1}
		p_reload270 {Type I LastRead 0 FirstWrite -1}
		p_reload269 {Type I LastRead 0 FirstWrite -1}
		select_ln42_37 {Type I LastRead 0 FirstWrite -1}
		PED_V {Type IO LastRead 1 FirstWrite 1}
		conv_i2_i_i349_lcssa447_i_out {Type O LastRead -1 FirstWrite 0}
		conv_i2_i_i345_lcssa444_i_out {Type O LastRead -1 FirstWrite 0}
		conv_i2_i_i341_lcssa441_i_out {Type O LastRead -1 FirstWrite 0}
		conv_i2_i_i337_lcssa438_i_out {Type O LastRead -1 FirstWrite 0}
		conv_i2_i_i333_lcssa435_i_out {Type O LastRead -1 FirstWrite 0}
		conv_i2_i_i329_lcssa432_i_out {Type O LastRead -1 FirstWrite 0}
		conv_i2_i_i325_lcssa429_i_out {Type O LastRead -1 FirstWrite 0}
		conv_i2_i_i321_lcssa426_i_out {Type IO LastRead 1 FirstWrite 0}
		conv_i2_i_i316_lcssa423_i_out {Type O LastRead -1 FirstWrite 0}
		conv_i2_i_i310_lcssa420_i_out {Type O LastRead -1 FirstWrite 0}
		conv_i2_i_i304_lcssa417_i_out {Type O LastRead -1 FirstWrite 0}
		conv_i2_i_i298_lcssa414_i_out {Type O LastRead -1 FirstWrite 0}
		conv_i2_i_i292_lcssa411_i_out {Type O LastRead -1 FirstWrite 0}
		conv_i2_i_i286_lcssa408_i_out {Type O LastRead -1 FirstWrite 0}
		conv_i2_i_i280_lcssa405_i_out {Type O LastRead -1 FirstWrite 0}
		conv_i2_i_i274_lcssa402_i_out {Type IO LastRead 1 FirstWrite 0}
		conv_i2_i_i269_lcssa399_i_out {Type O LastRead -1 FirstWrite 0}
		conv_i2_i_i263_lcssa396_i_out {Type O LastRead -1 FirstWrite 0}
		conv_i2_i_i257_lcssa393_i_out {Type O LastRead -1 FirstWrite 0}
		conv_i2_i_i251_lcssa390_i_out {Type O LastRead -1 FirstWrite 0}
		conv_i2_i_i245_lcssa387_i_out {Type O LastRead -1 FirstWrite 0}
		conv_i2_i_i239_lcssa384_i_out {Type O LastRead -1 FirstWrite 0}
		conv_i2_i_i233_lcssa381_i_out {Type O LastRead -1 FirstWrite 0}
		conv_i2_i_i227_lcssa378_i_out {Type IO LastRead 1 FirstWrite 0}
		p_lcssa226375_i_out {Type O LastRead -1 FirstWrite 0}
		p_lcssa224372_i_out {Type O LastRead -1 FirstWrite 0}
		p_lcssa222369_i_out {Type O LastRead -1 FirstWrite 0}
		p_lcssa220366_i_out {Type O LastRead -1 FirstWrite 0}
		p_lcssa218363_i_out {Type O LastRead -1 FirstWrite 0}
		p_lcssa216360_i_out {Type O LastRead -1 FirstWrite 0}
		p_lcssa214357_i_out {Type O LastRead -1 FirstWrite 0}
		p_lcssa212354_i_out {Type IO LastRead 1 FirstWrite 0}}
	KBEST_Pipeline_VITIS_LOOP_94_11 {
		survival_path {Type O LastRead -1 FirstWrite 0}
		x_guess_62 {Type I LastRead 0 FirstWrite -1}
		x_guess_51 {Type I LastRead 0 FirstWrite -1}
		x_guess_50 {Type I LastRead 0 FirstWrite -1}
		x_guess_49 {Type I LastRead 0 FirstWrite -1}
		x_guess_48 {Type I LastRead 0 FirstWrite -1}
		x_guess_47 {Type I LastRead 0 FirstWrite -1}
		x_guess_46 {Type I LastRead 0 FirstWrite -1}
		x_guess_52 {Type I LastRead 0 FirstWrite -1}
		x_guess_63 {Type I LastRead 0 FirstWrite -1}
		x_guess_58 {Type I LastRead 0 FirstWrite -1}
		x_guess_57 {Type I LastRead 0 FirstWrite -1}
		x_guess_56 {Type I LastRead 0 FirstWrite -1}
		x_guess_55 {Type I LastRead 0 FirstWrite -1}
		x_guess_54 {Type I LastRead 0 FirstWrite -1}
		x_guess_53 {Type I LastRead 0 FirstWrite -1}
		x_guess_59 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "7557", "Max" : "13957"}
	, {"Name" : "Interval", "Min" : "7557", "Max" : "13957"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	R { ap_fifo {  { R_dout fifo_data 0 16 }  { R_empty_n fifo_status 0 1 }  { R_read fifo_update 1 1 } } }
	MULQ_out { ap_fifo {  { MULQ_out_dout fifo_data 0 16 }  { MULQ_out_empty_n fifo_status 0 1 }  { MULQ_out_read fifo_update 1 1 } } }
	KB_out { ap_fifo {  { KB_out_din fifo_data 1 16 }  { KB_out_full_n fifo_status 0 1 }  { KB_out_write fifo_update 1 1 } } }
}

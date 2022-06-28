set moduleName TOP
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {TOP}
set C_modelType { void 0 }
set C_modelArgList {
	{ in_data int 8 regular {fifo 0 volatile }  }
	{ out_data int 8 regular {fifo 1 volatile }  }
	{ SNR int 16 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "in_data", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "out_data", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "SNR", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 15
set portList { 
	{ ap_local_block sc_out sc_logic 1 signal -1 } 
	{ ap_local_deadlock sc_out sc_logic 1 signal -1 } 
	{ in_data_dout sc_in sc_lv 8 signal 0 } 
	{ in_data_empty_n sc_in sc_logic 1 signal 0 } 
	{ in_data_read sc_out sc_logic 1 signal 0 } 
	{ out_data_din sc_out sc_lv 8 signal 1 } 
	{ out_data_full_n sc_in sc_logic 1 signal 1 } 
	{ out_data_write sc_out sc_logic 1 signal 1 } 
	{ SNR sc_in sc_lv 16 signal 2 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
}
set NewPortList {[ 
	{ "name": "ap_local_block", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_local_block", "role": "default" }} , 
 	{ "name": "ap_local_deadlock", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_local_deadlock", "role": "default" }} , 
 	{ "name": "in_data_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in_data", "role": "dout" }} , 
 	{ "name": "in_data_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_data", "role": "empty_n" }} , 
 	{ "name": "in_data_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_data", "role": "read" }} , 
 	{ "name": "out_data_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "out_data", "role": "din" }} , 
 	{ "name": "out_data_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_data", "role": "full_n" }} , 
 	{ "name": "out_data_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_data", "role": "write" }} , 
 	{ "name": "SNR", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SNR", "role": "default" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "29", "31", "72", "74", "76", "265", "334", "376", "446", "492", "494", "533", "534", "535", "536", "537", "538", "539", "540", "541", "542", "543", "544", "545", "546", "547", "548", "549", "550", "551", "552", "553", "554", "555", "556", "557", "558", "559"],
		"CDFG" : "TOP",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "13134", "EstimateLatencyMax" : "14054",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"InputProcess" : [
			{"ID" : "1", "Name" : "entry_proc_U0"},
			{"ID" : "2", "Name" : "AES_En_De27_U0"},
			{"ID" : "31", "Name" : "Rayleigh_1_U0"}],
		"OutputProcess" : [
			{"ID" : "494", "Name" : "AES_En_De_128_U0"}],
		"Port" : [
			{"Name" : "in_data", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "AES_En_De27_U0", "Port" : "in_data"}]},
			{"Name" : "out_data", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "494", "SubInstance" : "AES_En_De_128_U0", "Port" : "out_data"}]},
			{"Name" : "SNR", "Type" : "None", "Direction" : "I"},
			{"Name" : "key_V31", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "AES_En_De27_U0", "Port" : "key_V31"}]},
			{"Name" : "S29", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "AES_En_De27_U0", "Port" : "S29"},
					{"ID" : "494", "SubInstance" : "AES_En_De_128_U0", "Port" : "S29"}]},
			{"Name" : "Rcon", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "AES_En_De27_U0", "Port" : "Rcon"},
					{"ID" : "494", "SubInstance" : "AES_En_De_128_U0", "Port" : "Rcon"}]},
			{"Name" : "S", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "AES_En_De27_U0", "Port" : "S"}]},
			{"Name" : "AES_EN_out", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "AES_En_De27_U0", "Port" : "AES_EN_out"},
					{"ID" : "29", "SubInstance" : "Modulation_U0", "Port" : "AES_EN_out"}]},
			{"Name" : "xi", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "265", "SubInstance" : "channel_mult_U0", "Port" : "xi"},
					{"ID" : "29", "SubInstance" : "Modulation_U0", "Port" : "xi"}]},
			{"Name" : "xr", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "265", "SubInstance" : "channel_mult_U0", "Port" : "xr"},
					{"ID" : "29", "SubInstance" : "Modulation_U0", "Port" : "xr"}]},
			{"Name" : "H_real", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "Rayleigh_1_U0", "Port" : "H_real"},
					{"ID" : "72", "SubInstance" : "split_U0", "Port" : "H_real"}]},
			{"Name" : "H_imag", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "74", "SubInstance" : "split_1_U0", "Port" : "H_imag"},
					{"ID" : "31", "SubInstance" : "Rayleigh_1_U0", "Port" : "H_imag"}]},
			{"Name" : "H_real_spl0", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "265", "SubInstance" : "channel_mult_U0", "Port" : "H_real_spl0"},
					{"ID" : "72", "SubInstance" : "split_U0", "Port" : "H_real_spl0"}]},
			{"Name" : "H_real_spl1", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "76", "SubInstance" : "QRD_U0", "Port" : "H_real_spl1"},
					{"ID" : "72", "SubInstance" : "split_U0", "Port" : "H_real_spl1"}]},
			{"Name" : "H_imag_spl0", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "265", "SubInstance" : "channel_mult_U0", "Port" : "H_imag_spl0"},
					{"ID" : "74", "SubInstance" : "split_1_U0", "Port" : "H_imag_spl0"}]},
			{"Name" : "H_imag_spl1", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "74", "SubInstance" : "split_1_U0", "Port" : "H_imag_spl1"},
					{"ID" : "76", "SubInstance" : "QRD_U0", "Port" : "H_imag_spl1"}]},
			{"Name" : "cordic_phase_V30", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "76", "SubInstance" : "QRD_U0", "Port" : "cordic_phase_V30"}]},
			{"Name" : "cordic_phase_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "76", "SubInstance" : "QRD_U0", "Port" : "cordic_phase_V"}]},
			{"Name" : "R", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "446", "SubInstance" : "KBEST_U0", "Port" : "R"},
					{"ID" : "76", "SubInstance" : "QRD_U0", "Port" : "R"}]},
			{"Name" : "Q", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "76", "SubInstance" : "QRD_U0", "Port" : "Q"},
					{"ID" : "376", "SubInstance" : "matrix_mult_U0", "Port" : "Q"}]},
			{"Name" : "channel_out", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "265", "SubInstance" : "channel_mult_U0", "Port" : "channel_out"},
					{"ID" : "334", "SubInstance" : "AWGN_1_U0", "Port" : "channel_out"}]},
			{"Name" : "noise_out", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "376", "SubInstance" : "matrix_mult_U0", "Port" : "noise_out"},
					{"ID" : "334", "SubInstance" : "AWGN_1_U0", "Port" : "noise_out"}]},
			{"Name" : "MULQ_out", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "446", "SubInstance" : "KBEST_U0", "Port" : "MULQ_out"},
					{"ID" : "376", "SubInstance" : "matrix_mult_U0", "Port" : "MULQ_out"}]},
			{"Name" : "KB_out", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "446", "SubInstance" : "KBEST_U0", "Port" : "KB_out"},
					{"ID" : "492", "SubInstance" : "DeModulation_U0", "Port" : "KB_out"}]},
			{"Name" : "demod_out", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "492", "SubInstance" : "DeModulation_U0", "Port" : "demod_out"},
					{"ID" : "494", "SubInstance" : "AES_En_De_128_U0", "Port" : "demod_out"}]},
			{"Name" : "key_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "494", "SubInstance" : "AES_En_De_128_U0", "Port" : "key_V"}]},
			{"Name" : "S2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "494", "SubInstance" : "AES_En_De_128_U0", "Port" : "S2"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.entry_proc_U0", "Parent" : "0",
		"CDFG" : "entry_proc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "SNR", "Type" : "None", "Direction" : "I"},
			{"Name" : "SNR_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["334"], "DependentChan" : "533", "DependentChanDepth" : "5", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "SNR_c_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.AES_En_De27_U0", "Parent" : "0", "Child" : ["3", "4", "5", "6", "7", "14"],
		"CDFG" : "AES_En_De27",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "93", "EstimateLatencyMax" : "10369",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "in_data", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "in_data_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "key_V31", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "S29", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_extendKey_fu_633", "Port" : "S29", "Inst_start_state" : "19", "Inst_end_state" : "20"}]},
			{"Name" : "Rcon", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_extendKey_fu_633", "Port" : "Rcon", "Inst_start_state" : "19", "Inst_end_state" : "20"}]},
			{"Name" : "S", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_aes_return_fu_643", "Port" : "S", "Inst_start_state" : "21", "Inst_end_state" : "22"}]},
			{"Name" : "AES_EN_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["29"], "DependentChan" : "534", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "AES_EN_out_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_508_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "35", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state19", "ap_ST_fsm_state35"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.AES_En_De27_U0.key_V31_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.AES_En_De27_U0.temp_key_U", "Parent" : "2"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.AES_En_De27_U0.w_U", "Parent" : "2"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.AES_En_De27_U0.key_char_U", "Parent" : "2"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.AES_En_De27_U0.grp_extendKey_fu_633", "Parent" : "2", "Child" : ["8", "10"],
		"CDFG" : "extendKey",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "255", "EstimateLatencyMax" : "255",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "key", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_extendKey_Pipeline_extendKey_label5_fu_12", "Port" : "key", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "w", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_extendKey_Pipeline_extendKey_label5_fu_12", "Port" : "w", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "10", "SubInstance" : "grp_extendKey_Pipeline_extendKey_label0_fu_20", "Port" : "w", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "S29", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_extendKey_Pipeline_extendKey_label0_fu_20", "Port" : "S29", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "Rcon", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_extendKey_Pipeline_extendKey_label0_fu_20", "Port" : "Rcon", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.AES_En_De27_U0.grp_extendKey_fu_633.grp_extendKey_Pipeline_extendKey_label5_fu_12", "Parent" : "7", "Child" : ["9"],
		"CDFG" : "extendKey_Pipeline_extendKey_label5",
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
			{"Name" : "key", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "extendKey_label5", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "9", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.AES_En_De27_U0.grp_extendKey_fu_633.grp_extendKey_Pipeline_extendKey_label5_fu_12.flow_control_loop_pipe_sequential_init_U", "Parent" : "8"},
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.AES_En_De27_U0.grp_extendKey_fu_633.grp_extendKey_Pipeline_extendKey_label0_fu_20", "Parent" : "7", "Child" : ["11", "12", "13"],
		"CDFG" : "extendKey_Pipeline_extendKey_label0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "242", "EstimateLatencyMax" : "242",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "w", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "S29", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Rcon", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "extendKey_label0", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_pp0_stage1", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage1_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "11", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.AES_En_De27_U0.grp_extendKey_fu_633.grp_extendKey_Pipeline_extendKey_label0_fu_20.S29_U", "Parent" : "10"},
	{"ID" : "12", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.AES_En_De27_U0.grp_extendKey_fu_633.grp_extendKey_Pipeline_extendKey_label0_fu_20.Rcon_U", "Parent" : "10"},
	{"ID" : "13", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.AES_En_De27_U0.grp_extendKey_fu_633.grp_extendKey_Pipeline_extendKey_label0_fu_20.flow_control_loop_pipe_sequential_init_U", "Parent" : "10"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.AES_En_De27_U0.grp_aes_return_fu_643", "Parent" : "2", "Child" : ["15", "16", "17", "20", "21", "27"],
		"CDFG" : "aes_return",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "400", "EstimateLatencyMax" : "400",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read8", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read9", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read10", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read11", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read12", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read13", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read14", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read15", "Type" : "None", "Direction" : "I"},
			{"Name" : "w", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_addRoundKey_fu_322", "Port" : "w", "Inst_start_state" : "32", "Inst_end_state" : "47"},
					{"ID" : "21", "SubInstance" : "grp_aes_return_Pipeline_aes_return_label12_fu_332", "Port" : "w", "Inst_start_state" : "19", "Inst_end_state" : "20"}]},
			{"Name" : "S", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "grp_aes_return_Pipeline_aes_return_label12_fu_332", "Port" : "S", "Inst_start_state" : "19", "Inst_end_state" : "20"},
					{"ID" : "27", "SubInstance" : "grp_aes_return_Pipeline_subBytes_label0_subBytes_label7_fu_341", "Port" : "S", "Inst_start_state" : "21", "Inst_end_state" : "22"}]}]},
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.AES_En_De27_U0.grp_aes_return_fu_643.S_U", "Parent" : "14"},
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.AES_En_De27_U0.grp_aes_return_fu_643.pArray_U", "Parent" : "14"},
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.AES_En_De27_U0.grp_aes_return_fu_643.grp_aes_return_Pipeline_convertToIntArray_label0_convertToIntArray_label1_fu_284", "Parent" : "14", "Child" : ["18", "19"],
		"CDFG" : "aes_return_Pipeline_convertToIntArray_label0_convertToIntArray_label1",
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
			{"Name" : "pArray", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read8", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read9", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read10", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read11", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read12", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read13", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read14", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read15", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "convertToIntArray_label0_convertToIntArray_label1", "PipelineType" : "NotSupport"}]},
	{"ID" : "18", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.AES_En_De27_U0.grp_aes_return_fu_643.grp_aes_return_Pipeline_convertToIntArray_label0_convertToIntArray_label1_fu_284.mux_165_8_1_1_U10", "Parent" : "17"},
	{"ID" : "19", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.AES_En_De27_U0.grp_aes_return_fu_643.grp_aes_return_Pipeline_convertToIntArray_label0_convertToIntArray_label1_fu_284.flow_control_loop_pipe_sequential_init_U", "Parent" : "17"},
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.AES_En_De27_U0.grp_aes_return_fu_643.grp_addRoundKey_fu_322", "Parent" : "14",
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
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.AES_En_De27_U0.grp_aes_return_fu_643.grp_aes_return_Pipeline_aes_return_label12_fu_332", "Parent" : "14", "Child" : ["22", "23", "24", "25", "26"],
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
					{"ID" : "25", "SubInstance" : "grp_addRoundKey_fu_369", "Port" : "array_r", "Inst_start_state" : "20", "Inst_end_state" : "35"}]},
			{"Name" : "w", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "grp_addRoundKey_fu_369", "Port" : "w", "Inst_start_state" : "20", "Inst_end_state" : "35"}]},
			{"Name" : "S", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "aes_return_label12", "PipelineType" : "NotSupport"}]},
	{"ID" : "22", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.AES_En_De27_U0.grp_aes_return_fu_643.grp_aes_return_Pipeline_aes_return_label12_fu_332.grp_GFMul_fu_342", "Parent" : "21",
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
	{"ID" : "23", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.AES_En_De27_U0.grp_aes_return_fu_643.grp_aes_return_Pipeline_aes_return_label12_fu_332.grp_GFMul_fu_349", "Parent" : "21",
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
	{"ID" : "24", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.AES_En_De27_U0.grp_aes_return_fu_643.grp_aes_return_Pipeline_aes_return_label12_fu_332.grp_GFMul_fu_356", "Parent" : "21",
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
	{"ID" : "25", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.AES_En_De27_U0.grp_aes_return_fu_643.grp_aes_return_Pipeline_aes_return_label12_fu_332.grp_addRoundKey_fu_369", "Parent" : "21",
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
	{"ID" : "26", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.AES_En_De27_U0.grp_aes_return_fu_643.grp_aes_return_Pipeline_aes_return_label12_fu_332.flow_control_loop_pipe_sequential_init_U", "Parent" : "21"},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.AES_En_De27_U0.grp_aes_return_fu_643.grp_aes_return_Pipeline_subBytes_label0_subBytes_label7_fu_341", "Parent" : "14", "Child" : ["28"],
		"CDFG" : "aes_return_Pipeline_subBytes_label0_subBytes_label7",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "19", "EstimateLatencyMax" : "19",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "pArray", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "S", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "subBytes_label0_subBytes_label7", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "28", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.AES_En_De27_U0.grp_aes_return_fu_643.grp_aes_return_Pipeline_subBytes_label0_subBytes_label7_fu_341.flow_control_loop_pipe_sequential_init_U", "Parent" : "27"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Modulation_U0", "Parent" : "0", "Child" : ["30"],
		"CDFG" : "Modulation",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "67", "EstimateLatencyMax" : "67",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "2",
		"StartFifo" : "start_for_Modulation_U0_U",
		"Port" : [
			{"Name" : "AES_EN_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "534", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "AES_EN_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "xi", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["265"], "DependentChan" : "535", "DependentChanDepth" : "128", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "xi_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "xr", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["265"], "DependentChan" : "536", "DependentChanDepth" : "128", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "xr_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_18_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Modulation_U0.flow_control_loop_pipe_U", "Parent" : "29"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Rayleigh_1_U0", "Parent" : "0", "Child" : ["32", "33", "34", "35", "36", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71"],
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
			{"Name" : "H_real", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["72"], "DependentChan" : "537", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "H_real_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "H_imag", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["74"], "DependentChan" : "538", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "H_imag_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_21_1", "PipelineType" : "pipeline",
				"LoopDec" : {"FSMBitwidth" : "5", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter24", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "PreState" : ["ap_ST_fsm_state2"], "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter24", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "PostState" : ["ap_ST_fsm_state53"]}}]},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Rayleigh_1_U0.rngMT19937ICN_uniformRNG_mt_odd_0_V_U", "Parent" : "31"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Rayleigh_1_U0.rngMT19937ICN_1_i_U", "Parent" : "31"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Rayleigh_1_U0.rngMT19937ICN_uniformRNG_mt_even_0_V_U", "Parent" : "31"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Rayleigh_1_U0.rngMT19937ICN_3_i_U", "Parent" : "31"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Rayleigh_1_U0.grp_seedInitialization_fu_452", "Parent" : "31", "Child" : ["37"],
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
					{"ID" : "37", "SubInstance" : "grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_94", "Port" : "this_mt_odd_0", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "this_mt_odd_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_94", "Port" : "this_mt_odd_1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "this_mt_even_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_94", "Port" : "this_mt_even_0", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "this_mt_even_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_94", "Port" : "this_mt_even_1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "seed", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "37", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Rayleigh_1_U0.grp_seedInitialization_fu_452.grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_94", "Parent" : "36", "Child" : ["38", "39"],
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
	{"ID" : "38", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.Rayleigh_1_U0.grp_seedInitialization_fu_452.grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_94.mul_32s_32ns_32_1_1_U66", "Parent" : "37"},
	{"ID" : "39", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.Rayleigh_1_U0.grp_seedInitialization_fu_452.grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_94.flow_control_loop_pipe_sequential_init_U", "Parent" : "37"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Rayleigh_1_U0.dadd_64ns_64ns_64_2_no_dsp_1_U78", "Parent" : "31"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Rayleigh_1_U0.dsub_64ns_64ns_64_2_no_dsp_1_U79", "Parent" : "31"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Rayleigh_1_U0.dadd_64ns_64ns_64_2_no_dsp_1_U80", "Parent" : "31"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Rayleigh_1_U0.dadd_64ns_64ns_64_2_no_dsp_1_U81", "Parent" : "31"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Rayleigh_1_U0.dadd_64ns_64ns_64_2_no_dsp_1_U82", "Parent" : "31"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Rayleigh_1_U0.dadd_64ns_64ns_64_2_no_dsp_1_U83", "Parent" : "31"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Rayleigh_1_U0.dadd_64ns_64ns_64_2_no_dsp_1_U84", "Parent" : "31"},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Rayleigh_1_U0.dadd_64ns_64ns_64_2_no_dsp_1_U85", "Parent" : "31"},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Rayleigh_1_U0.dadd_64ns_64ns_64_2_no_dsp_1_U86", "Parent" : "31"},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Rayleigh_1_U0.dadd_64ns_64ns_64_2_no_dsp_1_U87", "Parent" : "31"},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Rayleigh_1_U0.dadd_64ns_64ns_64_2_no_dsp_1_U88", "Parent" : "31"},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Rayleigh_1_U0.dadd_64ns_64ns_64_2_no_dsp_1_U89", "Parent" : "31"},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Rayleigh_1_U0.dmul_64ns_64ns_64_2_med_dsp_1_U90", "Parent" : "31"},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Rayleigh_1_U0.dmul_64ns_64ns_64_2_med_dsp_1_U91", "Parent" : "31"},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Rayleigh_1_U0.dmul_64ns_64ns_64_2_med_dsp_1_U92", "Parent" : "31"},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Rayleigh_1_U0.dmul_64ns_64ns_64_2_med_dsp_1_U93", "Parent" : "31"},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Rayleigh_1_U0.dmul_64ns_64ns_64_2_med_dsp_1_U94", "Parent" : "31"},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Rayleigh_1_U0.dmul_64ns_64ns_64_2_med_dsp_1_U95", "Parent" : "31"},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Rayleigh_1_U0.dmul_64ns_64ns_64_2_med_dsp_1_U96", "Parent" : "31"},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Rayleigh_1_U0.dmul_64ns_64ns_64_2_med_dsp_1_U97", "Parent" : "31"},
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Rayleigh_1_U0.dmul_64ns_64ns_64_2_med_dsp_1_U98", "Parent" : "31"},
	{"ID" : "61", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Rayleigh_1_U0.dmul_64ns_64ns_64_2_med_dsp_1_U99", "Parent" : "31"},
	{"ID" : "62", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Rayleigh_1_U0.dmul_64ns_64ns_64_2_med_dsp_1_U100", "Parent" : "31"},
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Rayleigh_1_U0.dmul_64ns_64ns_64_2_med_dsp_1_U101", "Parent" : "31"},
	{"ID" : "64", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Rayleigh_1_U0.dmul_64ns_64ns_64_2_med_dsp_1_U102", "Parent" : "31"},
	{"ID" : "65", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Rayleigh_1_U0.ddiv_64ns_64ns_64_7_no_dsp_1_U103", "Parent" : "31"},
	{"ID" : "66", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Rayleigh_1_U0.dcmp_64ns_64ns_1_1_no_dsp_1_U104", "Parent" : "31"},
	{"ID" : "67", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Rayleigh_1_U0.dcmp_64ns_64ns_1_1_no_dsp_1_U105", "Parent" : "31"},
	{"ID" : "68", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Rayleigh_1_U0.dsqrt_64ns_64ns_64_7_no_dsp_1_U106", "Parent" : "31"},
	{"ID" : "69", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Rayleigh_1_U0.dlog_64ns_64ns_64_5_med_dsp_1_U107", "Parent" : "31"},
	{"ID" : "70", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Rayleigh_1_U0.mul_mul_16s_8ns_24_4_1_U108", "Parent" : "31"},
	{"ID" : "71", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Rayleigh_1_U0.mul_mul_16s_8ns_24_4_1_U109", "Parent" : "31"},
	{"ID" : "72", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.split_U0", "Parent" : "0", "Child" : ["73"],
		"CDFG" : "split",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "31",
		"StartFifo" : "start_for_split_U0_U",
		"Port" : [
			{"Name" : "H_real", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["31"], "DependentChan" : "537", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "H_real_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "H_real_spl0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["265"], "DependentChan" : "539", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "H_real_spl0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "H_real_spl1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["76"], "DependentChan" : "540", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "H_real_spl1_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "SPL", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "73", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.split_U0.flow_control_loop_pipe_U", "Parent" : "72"},
	{"ID" : "74", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.split_1_U0", "Parent" : "0", "Child" : ["75"],
		"CDFG" : "split_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "31",
		"StartFifo" : "start_for_split_1_U0_U",
		"Port" : [
			{"Name" : "H_imag", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["31"], "DependentChan" : "538", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "H_imag_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "H_imag_spl0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["265"], "DependentChan" : "541", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "H_imag_spl0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "H_imag_spl1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["76"], "DependentChan" : "542", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "H_imag_spl1_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "SPL", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "75", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.split_1_U0.flow_control_loop_pipe_U", "Parent" : "74"},
	{"ID" : "76", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.QRD_U0", "Parent" : "0", "Child" : ["77", "78", "79", "80", "81", "82", "83", "84", "85", "87", "92", "98", "104", "110", "116", "122", "128", "138", "149", "225", "251", "252", "253", "254", "255", "256", "257", "258", "259", "260", "261", "262", "263", "264"],
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
		"StartSource" : "72",
		"StartFifo" : "start_for_QRD_U0_U",
		"Port" : [
			{"Name" : "H_real_spl1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["72"], "DependentChan" : "540", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "85", "SubInstance" : "grp_QRD_Pipeline_CHANNEL2REAL_fu_2983", "Port" : "H_real_spl1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "H_imag_spl1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["74"], "DependentChan" : "542", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "85", "SubInstance" : "grp_QRD_Pipeline_CHANNEL2REAL_fu_2983", "Port" : "H_imag_spl1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "cordic_phase_V30", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "87", "SubInstance" : "grp_CORDIC_V_fu_3039", "Port" : "cordic_phase_V30", "Inst_start_state" : "50", "Inst_end_state" : "51"}]},
			{"Name" : "cordic_phase_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "122", "SubInstance" : "grp_CORDIC_R_fu_3108", "Port" : "cordic_phase_V", "Inst_start_state" : "30", "Inst_end_state" : "31"},
					{"ID" : "110", "SubInstance" : "grp_CORDIC_R_fu_3090", "Port" : "cordic_phase_V", "Inst_start_state" : "41", "Inst_end_state" : "42"},
					{"ID" : "116", "SubInstance" : "grp_CORDIC_R_fu_3099", "Port" : "cordic_phase_V", "Inst_start_state" : "30", "Inst_end_state" : "31"},
					{"ID" : "98", "SubInstance" : "grp_CORDIC_R_fu_3072", "Port" : "cordic_phase_V", "Inst_start_state" : "49", "Inst_end_state" : "50"},
					{"ID" : "104", "SubInstance" : "grp_CORDIC_R_fu_3081", "Port" : "cordic_phase_V", "Inst_start_state" : "41", "Inst_end_state" : "42"},
					{"ID" : "92", "SubInstance" : "grp_CORDIC_R_fu_3054", "Port" : "cordic_phase_V", "Inst_start_state" : "49", "Inst_end_state" : "50"}]},
			{"Name" : "R", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["446"], "DependentChan" : "543", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "138", "SubInstance" : "grp_QRD_Pipeline_LOOP_02_VITIS_LOOP_260_6_fu_3215", "Port" : "R", "Inst_start_state" : "53", "Inst_end_state" : "54"}]},
			{"Name" : "Q", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["376"], "DependentChan" : "544", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "225", "SubInstance" : "grp_QRD_Pipeline_VITIS_LOOP_325_9_VITIS_LOOP_326_10_fu_3420", "Port" : "Q", "Inst_start_state" : "61", "Inst_end_state" : "62"}]}],
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
	{"ID" : "77", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.QRD_U0.Y_V_U", "Parent" : "76"},
	{"ID" : "78", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.QRD_U0.Y_V_1_U", "Parent" : "76"},
	{"ID" : "79", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.QRD_U0.Y_V_2_U", "Parent" : "76"},
	{"ID" : "80", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.QRD_U0.Y_V_3_U", "Parent" : "76"},
	{"ID" : "81", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.QRD_U0.Y_V_4_U", "Parent" : "76"},
	{"ID" : "82", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.QRD_U0.Y_V_5_U", "Parent" : "76"},
	{"ID" : "83", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.QRD_U0.Y_V_6_U", "Parent" : "76"},
	{"ID" : "84", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.QRD_U0.Y_V_7_U", "Parent" : "76"},
	{"ID" : "85", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_QRD_Pipeline_CHANNEL2REAL_fu_2983", "Parent" : "76", "Child" : ["86"],
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
	{"ID" : "86", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_QRD_Pipeline_CHANNEL2REAL_fu_2983.flow_control_loop_pipe_sequential_init_U", "Parent" : "85"},
	{"ID" : "87", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_CORDIC_V_fu_3039", "Parent" : "76", "Child" : ["88", "89", "91"],
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
	{"ID" : "88", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_CORDIC_V_fu_3039.cordic_phase_V30_U", "Parent" : "87"},
	{"ID" : "89", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_CORDIC_V_fu_3039.grp_CORDIC_V_Pipeline_VITIS_LOOP_94_2_fu_179", "Parent" : "87", "Child" : ["90"],
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
	{"ID" : "90", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_CORDIC_V_fu_3039.grp_CORDIC_V_Pipeline_VITIS_LOOP_94_2_fu_179.flow_control_loop_pipe_sequential_init_U", "Parent" : "89"},
	{"ID" : "91", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_CORDIC_V_fu_3039.mul_mul_16s_8ns_25_4_1_U175", "Parent" : "87"},
	{"ID" : "92", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_CORDIC_R_fu_3054", "Parent" : "76", "Child" : ["93", "94", "96", "97"],
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
	{"ID" : "93", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_CORDIC_R_fu_3054.cordic_phase_V_U", "Parent" : "92"},
	{"ID" : "94", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_CORDIC_R_fu_3054.grp_CORDIC_R_Pipeline_VITIS_LOOP_32_2_fu_163", "Parent" : "92", "Child" : ["95"],
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
	{"ID" : "95", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_CORDIC_R_fu_3054.grp_CORDIC_R_Pipeline_VITIS_LOOP_32_2_fu_163.flow_control_loop_pipe_sequential_init_U", "Parent" : "94"},
	{"ID" : "96", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_CORDIC_R_fu_3054.mul_mul_16s_8ns_25_4_1_U185", "Parent" : "92"},
	{"ID" : "97", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_CORDIC_R_fu_3054.mul_mul_16s_8ns_25_4_1_U186", "Parent" : "92"},
	{"ID" : "98", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_CORDIC_R_fu_3072", "Parent" : "76", "Child" : ["99", "100", "102", "103"],
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
	{"ID" : "99", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_CORDIC_R_fu_3072.cordic_phase_V_U", "Parent" : "98"},
	{"ID" : "100", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_CORDIC_R_fu_3072.grp_CORDIC_R_Pipeline_VITIS_LOOP_32_2_fu_163", "Parent" : "98", "Child" : ["101"],
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
	{"ID" : "101", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_CORDIC_R_fu_3072.grp_CORDIC_R_Pipeline_VITIS_LOOP_32_2_fu_163.flow_control_loop_pipe_sequential_init_U", "Parent" : "100"},
	{"ID" : "102", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_CORDIC_R_fu_3072.mul_mul_16s_8ns_25_4_1_U185", "Parent" : "98"},
	{"ID" : "103", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_CORDIC_R_fu_3072.mul_mul_16s_8ns_25_4_1_U186", "Parent" : "98"},
	{"ID" : "104", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_CORDIC_R_fu_3081", "Parent" : "76", "Child" : ["105", "106", "108", "109"],
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
	{"ID" : "105", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_CORDIC_R_fu_3081.cordic_phase_V_U", "Parent" : "104"},
	{"ID" : "106", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_CORDIC_R_fu_3081.grp_CORDIC_R_Pipeline_VITIS_LOOP_32_2_fu_163", "Parent" : "104", "Child" : ["107"],
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
	{"ID" : "107", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_CORDIC_R_fu_3081.grp_CORDIC_R_Pipeline_VITIS_LOOP_32_2_fu_163.flow_control_loop_pipe_sequential_init_U", "Parent" : "106"},
	{"ID" : "108", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_CORDIC_R_fu_3081.mul_mul_16s_8ns_25_4_1_U185", "Parent" : "104"},
	{"ID" : "109", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_CORDIC_R_fu_3081.mul_mul_16s_8ns_25_4_1_U186", "Parent" : "104"},
	{"ID" : "110", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_CORDIC_R_fu_3090", "Parent" : "76", "Child" : ["111", "112", "114", "115"],
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
	{"ID" : "111", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_CORDIC_R_fu_3090.cordic_phase_V_U", "Parent" : "110"},
	{"ID" : "112", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_CORDIC_R_fu_3090.grp_CORDIC_R_Pipeline_VITIS_LOOP_32_2_fu_163", "Parent" : "110", "Child" : ["113"],
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
	{"ID" : "113", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_CORDIC_R_fu_3090.grp_CORDIC_R_Pipeline_VITIS_LOOP_32_2_fu_163.flow_control_loop_pipe_sequential_init_U", "Parent" : "112"},
	{"ID" : "114", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_CORDIC_R_fu_3090.mul_mul_16s_8ns_25_4_1_U185", "Parent" : "110"},
	{"ID" : "115", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_CORDIC_R_fu_3090.mul_mul_16s_8ns_25_4_1_U186", "Parent" : "110"},
	{"ID" : "116", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_CORDIC_R_fu_3099", "Parent" : "76", "Child" : ["117", "118", "120", "121"],
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
	{"ID" : "117", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_CORDIC_R_fu_3099.cordic_phase_V_U", "Parent" : "116"},
	{"ID" : "118", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_CORDIC_R_fu_3099.grp_CORDIC_R_Pipeline_VITIS_LOOP_32_2_fu_163", "Parent" : "116", "Child" : ["119"],
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
	{"ID" : "119", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_CORDIC_R_fu_3099.grp_CORDIC_R_Pipeline_VITIS_LOOP_32_2_fu_163.flow_control_loop_pipe_sequential_init_U", "Parent" : "118"},
	{"ID" : "120", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_CORDIC_R_fu_3099.mul_mul_16s_8ns_25_4_1_U185", "Parent" : "116"},
	{"ID" : "121", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_CORDIC_R_fu_3099.mul_mul_16s_8ns_25_4_1_U186", "Parent" : "116"},
	{"ID" : "122", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_CORDIC_R_fu_3108", "Parent" : "76", "Child" : ["123", "124", "126", "127"],
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
	{"ID" : "123", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_CORDIC_R_fu_3108.cordic_phase_V_U", "Parent" : "122"},
	{"ID" : "124", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_CORDIC_R_fu_3108.grp_CORDIC_R_Pipeline_VITIS_LOOP_32_2_fu_163", "Parent" : "122", "Child" : ["125"],
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
	{"ID" : "125", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_CORDIC_R_fu_3108.grp_CORDIC_R_Pipeline_VITIS_LOOP_32_2_fu_163.flow_control_loop_pipe_sequential_init_U", "Parent" : "124"},
	{"ID" : "126", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_CORDIC_R_fu_3108.mul_mul_16s_8ns_25_4_1_U185", "Parent" : "122"},
	{"ID" : "127", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_CORDIC_R_fu_3108.mul_mul_16s_8ns_25_4_1_U186", "Parent" : "122"},
	{"ID" : "128", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_QRD_Pipeline_LOOP_01_fu_3120", "Parent" : "76", "Child" : ["129", "130", "131", "132", "133", "134", "135", "136", "137"],
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
	{"ID" : "129", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_QRD_Pipeline_LOOP_01_fu_3120.mux_42_16_1_1_U190", "Parent" : "128"},
	{"ID" : "130", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_QRD_Pipeline_LOOP_01_fu_3120.mux_42_16_1_1_U191", "Parent" : "128"},
	{"ID" : "131", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_QRD_Pipeline_LOOP_01_fu_3120.mux_42_16_1_1_U192", "Parent" : "128"},
	{"ID" : "132", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_QRD_Pipeline_LOOP_01_fu_3120.mux_42_16_1_1_U193", "Parent" : "128"},
	{"ID" : "133", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_QRD_Pipeline_LOOP_01_fu_3120.mux_42_16_1_1_U194", "Parent" : "128"},
	{"ID" : "134", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_QRD_Pipeline_LOOP_01_fu_3120.mux_42_16_1_1_U195", "Parent" : "128"},
	{"ID" : "135", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_QRD_Pipeline_LOOP_01_fu_3120.mux_42_16_1_1_U196", "Parent" : "128"},
	{"ID" : "136", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_QRD_Pipeline_LOOP_01_fu_3120.mux_42_16_1_1_U197", "Parent" : "128"},
	{"ID" : "137", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_QRD_Pipeline_LOOP_01_fu_3120.flow_control_loop_pipe_sequential_init_U", "Parent" : "128"},
	{"ID" : "138", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_QRD_Pipeline_LOOP_02_VITIS_LOOP_260_6_fu_3215", "Parent" : "76", "Child" : ["139", "140", "141", "142", "143", "144", "145", "146", "147", "148"],
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
	{"ID" : "139", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_QRD_Pipeline_LOOP_02_VITIS_LOOP_260_6_fu_3215.mux_84_16_1_1_U290", "Parent" : "138"},
	{"ID" : "140", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_QRD_Pipeline_LOOP_02_VITIS_LOOP_260_6_fu_3215.mux_84_16_1_1_U291", "Parent" : "138"},
	{"ID" : "141", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_QRD_Pipeline_LOOP_02_VITIS_LOOP_260_6_fu_3215.mux_84_16_1_1_U292", "Parent" : "138"},
	{"ID" : "142", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_QRD_Pipeline_LOOP_02_VITIS_LOOP_260_6_fu_3215.mux_84_16_1_1_U293", "Parent" : "138"},
	{"ID" : "143", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_QRD_Pipeline_LOOP_02_VITIS_LOOP_260_6_fu_3215.mux_84_16_1_1_U294", "Parent" : "138"},
	{"ID" : "144", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_QRD_Pipeline_LOOP_02_VITIS_LOOP_260_6_fu_3215.mux_84_16_1_1_U295", "Parent" : "138"},
	{"ID" : "145", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_QRD_Pipeline_LOOP_02_VITIS_LOOP_260_6_fu_3215.mux_84_16_1_1_U296", "Parent" : "138"},
	{"ID" : "146", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_QRD_Pipeline_LOOP_02_VITIS_LOOP_260_6_fu_3215.mux_84_16_1_1_U297", "Parent" : "138"},
	{"ID" : "147", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_QRD_Pipeline_LOOP_02_VITIS_LOOP_260_6_fu_3215.mux_84_16_1_1_U298", "Parent" : "138"},
	{"ID" : "148", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_QRD_Pipeline_LOOP_02_VITIS_LOOP_260_6_fu_3215.flow_control_loop_pipe_sequential_init_U", "Parent" : "138"},
	{"ID" : "149", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_QRD_Pipeline_VITIS_LOOP_277_8_fu_3285", "Parent" : "76", "Child" : ["150", "151", "152", "153", "154", "155", "156", "157", "158", "159", "160", "161", "162", "163", "164", "165", "166", "167", "168", "169", "170", "171", "172", "173", "174", "175", "176", "177", "178", "179", "180", "181", "182", "183", "184", "185", "186", "187", "188", "189", "190", "191", "192", "193", "194", "195", "196", "197", "198", "199", "200", "201", "202", "203", "204", "205", "206", "207", "208", "209", "210", "211", "212", "213", "214", "215", "216", "217", "218", "219", "220", "221", "222", "223", "224"],
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
	{"ID" : "150", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_QRD_Pipeline_VITIS_LOOP_277_8_fu_3285.mux_83_16_1_1_U365", "Parent" : "149"},
	{"ID" : "151", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_QRD_Pipeline_VITIS_LOOP_277_8_fu_3285.mux_83_16_1_1_U366", "Parent" : "149"},
	{"ID" : "152", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_QRD_Pipeline_VITIS_LOOP_277_8_fu_3285.mux_83_16_1_1_U367", "Parent" : "149"},
	{"ID" : "153", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_QRD_Pipeline_VITIS_LOOP_277_8_fu_3285.mux_83_16_1_1_U368", "Parent" : "149"},
	{"ID" : "154", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_QRD_Pipeline_VITIS_LOOP_277_8_fu_3285.mux_83_16_1_1_U369", "Parent" : "149"},
	{"ID" : "155", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_QRD_Pipeline_VITIS_LOOP_277_8_fu_3285.mux_83_16_1_1_U370", "Parent" : "149"},
	{"ID" : "156", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_QRD_Pipeline_VITIS_LOOP_277_8_fu_3285.mux_83_16_1_1_U371", "Parent" : "149"},
	{"ID" : "157", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_QRD_Pipeline_VITIS_LOOP_277_8_fu_3285.mux_83_16_1_1_U372", "Parent" : "149"},
	{"ID" : "158", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_QRD_Pipeline_VITIS_LOOP_277_8_fu_3285.mux_83_16_1_1_U373", "Parent" : "149"},
	{"ID" : "159", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_QRD_Pipeline_VITIS_LOOP_277_8_fu_3285.mux_83_16_1_1_U374", "Parent" : "149"},
	{"ID" : "160", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_QRD_Pipeline_VITIS_LOOP_277_8_fu_3285.mux_83_16_1_1_U375", "Parent" : "149"},
	{"ID" : "161", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_QRD_Pipeline_VITIS_LOOP_277_8_fu_3285.mux_83_16_1_1_U376", "Parent" : "149"},
	{"ID" : "162", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_QRD_Pipeline_VITIS_LOOP_277_8_fu_3285.mux_83_16_1_1_U377", "Parent" : "149"},
	{"ID" : "163", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_QRD_Pipeline_VITIS_LOOP_277_8_fu_3285.mux_83_16_1_1_U378", "Parent" : "149"},
	{"ID" : "164", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_QRD_Pipeline_VITIS_LOOP_277_8_fu_3285.mux_83_16_1_1_U379", "Parent" : "149"},
	{"ID" : "165", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_QRD_Pipeline_VITIS_LOOP_277_8_fu_3285.mux_83_16_1_1_U380", "Parent" : "149"},
	{"ID" : "166", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_QRD_Pipeline_VITIS_LOOP_277_8_fu_3285.mux_83_16_1_1_U381", "Parent" : "149"},
	{"ID" : "167", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_QRD_Pipeline_VITIS_LOOP_277_8_fu_3285.mux_83_16_1_1_U382", "Parent" : "149"},
	{"ID" : "168", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_QRD_Pipeline_VITIS_LOOP_277_8_fu_3285.mux_83_16_1_1_U383", "Parent" : "149"},
	{"ID" : "169", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_QRD_Pipeline_VITIS_LOOP_277_8_fu_3285.mux_83_16_1_1_U384", "Parent" : "149"},
	{"ID" : "170", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_QRD_Pipeline_VITIS_LOOP_277_8_fu_3285.mux_83_16_1_1_U385", "Parent" : "149"},
	{"ID" : "171", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_QRD_Pipeline_VITIS_LOOP_277_8_fu_3285.mux_83_16_1_1_U386", "Parent" : "149"},
	{"ID" : "172", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_QRD_Pipeline_VITIS_LOOP_277_8_fu_3285.mux_83_16_1_1_U387", "Parent" : "149"},
	{"ID" : "173", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_QRD_Pipeline_VITIS_LOOP_277_8_fu_3285.mux_83_16_1_1_U388", "Parent" : "149"},
	{"ID" : "174", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_QRD_Pipeline_VITIS_LOOP_277_8_fu_3285.mux_864_16_1_1_U389", "Parent" : "149"},
	{"ID" : "175", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_QRD_Pipeline_VITIS_LOOP_277_8_fu_3285.mux_864_16_1_1_U390", "Parent" : "149"},
	{"ID" : "176", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_QRD_Pipeline_VITIS_LOOP_277_8_fu_3285.mux_864_16_1_1_U391", "Parent" : "149"},
	{"ID" : "177", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_QRD_Pipeline_VITIS_LOOP_277_8_fu_3285.mux_864_16_1_1_U392", "Parent" : "149"},
	{"ID" : "178", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_QRD_Pipeline_VITIS_LOOP_277_8_fu_3285.mux_864_16_1_1_U393", "Parent" : "149"},
	{"ID" : "179", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_QRD_Pipeline_VITIS_LOOP_277_8_fu_3285.mux_864_16_1_1_U394", "Parent" : "149"},
	{"ID" : "180", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_QRD_Pipeline_VITIS_LOOP_277_8_fu_3285.mux_864_16_1_1_U395", "Parent" : "149"},
	{"ID" : "181", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_QRD_Pipeline_VITIS_LOOP_277_8_fu_3285.mux_864_16_1_1_U396", "Parent" : "149"},
	{"ID" : "182", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_QRD_Pipeline_VITIS_LOOP_277_8_fu_3285.mux_864_16_1_1_U397", "Parent" : "149"},
	{"ID" : "183", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_QRD_Pipeline_VITIS_LOOP_277_8_fu_3285.mux_864_16_1_1_U398", "Parent" : "149"},
	{"ID" : "184", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_QRD_Pipeline_VITIS_LOOP_277_8_fu_3285.mux_864_16_1_1_U399", "Parent" : "149"},
	{"ID" : "185", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_QRD_Pipeline_VITIS_LOOP_277_8_fu_3285.mux_864_16_1_1_U400", "Parent" : "149"},
	{"ID" : "186", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_QRD_Pipeline_VITIS_LOOP_277_8_fu_3285.mux_864_16_1_1_U401", "Parent" : "149"},
	{"ID" : "187", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_QRD_Pipeline_VITIS_LOOP_277_8_fu_3285.mux_864_16_1_1_U402", "Parent" : "149"},
	{"ID" : "188", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_QRD_Pipeline_VITIS_LOOP_277_8_fu_3285.mux_864_16_1_1_U403", "Parent" : "149"},
	{"ID" : "189", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_QRD_Pipeline_VITIS_LOOP_277_8_fu_3285.mux_864_16_1_1_U404", "Parent" : "149"},
	{"ID" : "190", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_QRD_Pipeline_VITIS_LOOP_277_8_fu_3285.mux_864_16_1_1_U405", "Parent" : "149"},
	{"ID" : "191", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_QRD_Pipeline_VITIS_LOOP_277_8_fu_3285.mux_83_16_1_1_U406", "Parent" : "149"},
	{"ID" : "192", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_QRD_Pipeline_VITIS_LOOP_277_8_fu_3285.sdiv_24ns_16s_16_28_1_U407", "Parent" : "149"},
	{"ID" : "193", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_QRD_Pipeline_VITIS_LOOP_277_8_fu_3285.sdiv_24ns_16s_16_28_1_U408", "Parent" : "149"},
	{"ID" : "194", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_QRD_Pipeline_VITIS_LOOP_277_8_fu_3285.sdiv_24ns_16s_16_28_1_U409", "Parent" : "149"},
	{"ID" : "195", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_QRD_Pipeline_VITIS_LOOP_277_8_fu_3285.sdiv_24ns_16s_16_28_1_U410", "Parent" : "149"},
	{"ID" : "196", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_QRD_Pipeline_VITIS_LOOP_277_8_fu_3285.sdiv_24ns_16s_16_28_1_U411", "Parent" : "149"},
	{"ID" : "197", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_QRD_Pipeline_VITIS_LOOP_277_8_fu_3285.sdiv_24ns_16s_16_28_1_U412", "Parent" : "149"},
	{"ID" : "198", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_QRD_Pipeline_VITIS_LOOP_277_8_fu_3285.sdiv_24ns_16s_16_28_1_U413", "Parent" : "149"},
	{"ID" : "199", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_QRD_Pipeline_VITIS_LOOP_277_8_fu_3285.sdiv_24ns_16s_16_28_1_U414", "Parent" : "149"},
	{"ID" : "200", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_QRD_Pipeline_VITIS_LOOP_277_8_fu_3285.sdiv_24ns_16s_16_28_1_U415", "Parent" : "149"},
	{"ID" : "201", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_QRD_Pipeline_VITIS_LOOP_277_8_fu_3285.sdiv_24ns_16s_16_28_1_U416", "Parent" : "149"},
	{"ID" : "202", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_QRD_Pipeline_VITIS_LOOP_277_8_fu_3285.sdiv_24ns_16s_16_28_1_U417", "Parent" : "149"},
	{"ID" : "203", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_QRD_Pipeline_VITIS_LOOP_277_8_fu_3285.sdiv_24ns_16s_16_28_1_U418", "Parent" : "149"},
	{"ID" : "204", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_QRD_Pipeline_VITIS_LOOP_277_8_fu_3285.sdiv_24ns_16s_16_28_1_U419", "Parent" : "149"},
	{"ID" : "205", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_QRD_Pipeline_VITIS_LOOP_277_8_fu_3285.sdiv_24ns_16s_16_28_1_U420", "Parent" : "149"},
	{"ID" : "206", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_QRD_Pipeline_VITIS_LOOP_277_8_fu_3285.sdiv_24ns_16s_16_28_1_U421", "Parent" : "149"},
	{"ID" : "207", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_QRD_Pipeline_VITIS_LOOP_277_8_fu_3285.sdiv_24ns_16s_16_28_1_U422", "Parent" : "149"},
	{"ID" : "208", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_QRD_Pipeline_VITIS_LOOP_277_8_fu_3285.mac_mulsub_16s_16s_24ns_24_4_1_U423", "Parent" : "149"},
	{"ID" : "209", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_QRD_Pipeline_VITIS_LOOP_277_8_fu_3285.mac_mulsub_16s_16s_24ns_24_4_1_U424", "Parent" : "149"},
	{"ID" : "210", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_QRD_Pipeline_VITIS_LOOP_277_8_fu_3285.mac_mulsub_16s_16s_24ns_24_4_1_U425", "Parent" : "149"},
	{"ID" : "211", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_QRD_Pipeline_VITIS_LOOP_277_8_fu_3285.mac_mulsub_16s_16s_24ns_24_4_1_U426", "Parent" : "149"},
	{"ID" : "212", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_QRD_Pipeline_VITIS_LOOP_277_8_fu_3285.mac_mulsub_16s_16s_24ns_24_4_1_U427", "Parent" : "149"},
	{"ID" : "213", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_QRD_Pipeline_VITIS_LOOP_277_8_fu_3285.mac_mulsub_16s_16s_24ns_24_4_1_U428", "Parent" : "149"},
	{"ID" : "214", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_QRD_Pipeline_VITIS_LOOP_277_8_fu_3285.mac_mulsub_16s_16s_24ns_24_4_1_U429", "Parent" : "149"},
	{"ID" : "215", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_QRD_Pipeline_VITIS_LOOP_277_8_fu_3285.mac_mulsub_16s_16s_24ns_24_4_1_U430", "Parent" : "149"},
	{"ID" : "216", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_QRD_Pipeline_VITIS_LOOP_277_8_fu_3285.mac_mulsub_16s_16s_24ns_24_4_1_U431", "Parent" : "149"},
	{"ID" : "217", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_QRD_Pipeline_VITIS_LOOP_277_8_fu_3285.mac_mulsub_16s_16s_24ns_24_4_1_U432", "Parent" : "149"},
	{"ID" : "218", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_QRD_Pipeline_VITIS_LOOP_277_8_fu_3285.mac_mulsub_16s_16s_24ns_24_4_1_U433", "Parent" : "149"},
	{"ID" : "219", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_QRD_Pipeline_VITIS_LOOP_277_8_fu_3285.mac_mulsub_16s_16s_24ns_24_4_1_U434", "Parent" : "149"},
	{"ID" : "220", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_QRD_Pipeline_VITIS_LOOP_277_8_fu_3285.mac_mulsub_16s_16s_24ns_24_4_1_U435", "Parent" : "149"},
	{"ID" : "221", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_QRD_Pipeline_VITIS_LOOP_277_8_fu_3285.mac_mulsub_16s_16s_24ns_24_4_1_U436", "Parent" : "149"},
	{"ID" : "222", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_QRD_Pipeline_VITIS_LOOP_277_8_fu_3285.mac_mulsub_16s_16s_24ns_24_4_1_U437", "Parent" : "149"},
	{"ID" : "223", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_QRD_Pipeline_VITIS_LOOP_277_8_fu_3285.mac_mulsub_16s_16s_24ns_24_4_1_U438", "Parent" : "149"},
	{"ID" : "224", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_QRD_Pipeline_VITIS_LOOP_277_8_fu_3285.flow_control_loop_pipe_sequential_init_U", "Parent" : "149"},
	{"ID" : "225", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_QRD_Pipeline_VITIS_LOOP_325_9_VITIS_LOOP_326_10_fu_3420", "Parent" : "76", "Child" : ["226", "227", "228", "229", "230", "231", "232", "233", "234", "235", "236", "237", "238", "239", "240", "241", "242", "243", "244", "245", "246", "247", "248", "249", "250"],
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
	{"ID" : "226", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_QRD_Pipeline_VITIS_LOOP_325_9_VITIS_LOOP_326_10_fu_3420.mux_84_16_1_1_U574", "Parent" : "225"},
	{"ID" : "227", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_QRD_Pipeline_VITIS_LOOP_325_9_VITIS_LOOP_326_10_fu_3420.mux_84_16_1_1_U575", "Parent" : "225"},
	{"ID" : "228", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_QRD_Pipeline_VITIS_LOOP_325_9_VITIS_LOOP_326_10_fu_3420.mux_84_16_1_1_U576", "Parent" : "225"},
	{"ID" : "229", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_QRD_Pipeline_VITIS_LOOP_325_9_VITIS_LOOP_326_10_fu_3420.mux_84_16_1_1_U577", "Parent" : "225"},
	{"ID" : "230", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_QRD_Pipeline_VITIS_LOOP_325_9_VITIS_LOOP_326_10_fu_3420.mux_84_16_1_1_U578", "Parent" : "225"},
	{"ID" : "231", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_QRD_Pipeline_VITIS_LOOP_325_9_VITIS_LOOP_326_10_fu_3420.mux_84_16_1_1_U579", "Parent" : "225"},
	{"ID" : "232", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_QRD_Pipeline_VITIS_LOOP_325_9_VITIS_LOOP_326_10_fu_3420.mux_84_16_1_1_U580", "Parent" : "225"},
	{"ID" : "233", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_QRD_Pipeline_VITIS_LOOP_325_9_VITIS_LOOP_326_10_fu_3420.mux_84_16_1_1_U581", "Parent" : "225"},
	{"ID" : "234", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_QRD_Pipeline_VITIS_LOOP_325_9_VITIS_LOOP_326_10_fu_3420.mux_84_16_1_1_U582", "Parent" : "225"},
	{"ID" : "235", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_QRD_Pipeline_VITIS_LOOP_325_9_VITIS_LOOP_326_10_fu_3420.mux_84_16_1_1_U583", "Parent" : "225"},
	{"ID" : "236", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_QRD_Pipeline_VITIS_LOOP_325_9_VITIS_LOOP_326_10_fu_3420.mux_84_16_1_1_U584", "Parent" : "225"},
	{"ID" : "237", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_QRD_Pipeline_VITIS_LOOP_325_9_VITIS_LOOP_326_10_fu_3420.mux_84_16_1_1_U585", "Parent" : "225"},
	{"ID" : "238", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_QRD_Pipeline_VITIS_LOOP_325_9_VITIS_LOOP_326_10_fu_3420.mux_84_16_1_1_U586", "Parent" : "225"},
	{"ID" : "239", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_QRD_Pipeline_VITIS_LOOP_325_9_VITIS_LOOP_326_10_fu_3420.mux_84_16_1_1_U587", "Parent" : "225"},
	{"ID" : "240", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_QRD_Pipeline_VITIS_LOOP_325_9_VITIS_LOOP_326_10_fu_3420.mux_84_16_1_1_U588", "Parent" : "225"},
	{"ID" : "241", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_QRD_Pipeline_VITIS_LOOP_325_9_VITIS_LOOP_326_10_fu_3420.mux_84_16_1_1_U589", "Parent" : "225"},
	{"ID" : "242", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_QRD_Pipeline_VITIS_LOOP_325_9_VITIS_LOOP_326_10_fu_3420.mul_mul_16s_16s_24_4_1_U590", "Parent" : "225"},
	{"ID" : "243", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_QRD_Pipeline_VITIS_LOOP_325_9_VITIS_LOOP_326_10_fu_3420.mac_muladd_16s_16s_24ns_24_4_1_U591", "Parent" : "225"},
	{"ID" : "244", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_QRD_Pipeline_VITIS_LOOP_325_9_VITIS_LOOP_326_10_fu_3420.mac_muladd_16s_16s_24ns_24_4_1_U592", "Parent" : "225"},
	{"ID" : "245", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_QRD_Pipeline_VITIS_LOOP_325_9_VITIS_LOOP_326_10_fu_3420.mac_muladd_16s_16s_24ns_24_4_1_U593", "Parent" : "225"},
	{"ID" : "246", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_QRD_Pipeline_VITIS_LOOP_325_9_VITIS_LOOP_326_10_fu_3420.mac_muladd_16s_16s_24ns_24_4_1_U594", "Parent" : "225"},
	{"ID" : "247", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_QRD_Pipeline_VITIS_LOOP_325_9_VITIS_LOOP_326_10_fu_3420.mac_muladd_16s_16s_24ns_24_4_1_U595", "Parent" : "225"},
	{"ID" : "248", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_QRD_Pipeline_VITIS_LOOP_325_9_VITIS_LOOP_326_10_fu_3420.mac_muladd_16s_16s_24ns_24_4_1_U596", "Parent" : "225"},
	{"ID" : "249", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_QRD_Pipeline_VITIS_LOOP_325_9_VITIS_LOOP_326_10_fu_3420.mac_muladd_16s_16s_24ns_24_4_1_U597", "Parent" : "225"},
	{"ID" : "250", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.QRD_U0.grp_QRD_Pipeline_VITIS_LOOP_325_9_VITIS_LOOP_326_10_fu_3420.flow_control_loop_pipe_sequential_init_U", "Parent" : "225"},
	{"ID" : "251", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.QRD_U0.mux_74_16_1_1_U729", "Parent" : "76"},
	{"ID" : "252", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.QRD_U0.mux_74_16_1_1_U730", "Parent" : "76"},
	{"ID" : "253", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.QRD_U0.mux_74_16_1_1_U731", "Parent" : "76"},
	{"ID" : "254", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.QRD_U0.mux_74_16_1_1_U732", "Parent" : "76"},
	{"ID" : "255", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.QRD_U0.mux_74_16_1_1_U733", "Parent" : "76"},
	{"ID" : "256", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.QRD_U0.mux_74_16_1_1_U734", "Parent" : "76"},
	{"ID" : "257", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.QRD_U0.mux_74_16_1_1_U735", "Parent" : "76"},
	{"ID" : "258", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.QRD_U0.mux_74_16_1_1_U736", "Parent" : "76"},
	{"ID" : "259", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.QRD_U0.mux_74_16_1_1_U737", "Parent" : "76"},
	{"ID" : "260", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.QRD_U0.mux_74_16_1_1_U738", "Parent" : "76"},
	{"ID" : "261", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.QRD_U0.mux_74_16_1_1_U739", "Parent" : "76"},
	{"ID" : "262", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.QRD_U0.mux_74_16_1_1_U740", "Parent" : "76"},
	{"ID" : "263", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.QRD_U0.mux_74_16_1_1_U741", "Parent" : "76"},
	{"ID" : "264", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.QRD_U0.mux_74_16_1_1_U742", "Parent" : "76"},
	{"ID" : "265", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.channel_mult_U0", "Parent" : "0", "Child" : ["266", "268"],
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
		"StartSource" : "29",
		"StartFifo" : "start_for_channel_mult_U0_U",
		"Port" : [
			{"Name" : "H_real_spl0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["72"], "DependentChan" : "539", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "266", "SubInstance" : "grp_channel_mult_Pipeline_CHANNEL2REAL_fu_282", "Port" : "H_real_spl0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "H_imag_spl0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["74"], "DependentChan" : "541", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "266", "SubInstance" : "grp_channel_mult_Pipeline_CHANNEL2REAL_fu_282", "Port" : "H_imag_spl0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "xr", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["29"], "DependentChan" : "536", "DependentChanDepth" : "128", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "268", "SubInstance" : "grp_channel_mult_Pipeline_VITIS_LOOP_63_1_fu_354", "Port" : "xr", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "xi", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["29"], "DependentChan" : "535", "DependentChanDepth" : "128", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "268", "SubInstance" : "grp_channel_mult_Pipeline_VITIS_LOOP_63_1_fu_354", "Port" : "xi", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "channel_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["334"], "DependentChan" : "545", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "268", "SubInstance" : "grp_channel_mult_Pipeline_VITIS_LOOP_63_1_fu_354", "Port" : "channel_out", "Inst_start_state" : "4", "Inst_end_state" : "5"}]}]},
	{"ID" : "266", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.channel_mult_U0.grp_channel_mult_Pipeline_CHANNEL2REAL_fu_282", "Parent" : "265", "Child" : ["267"],
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
	{"ID" : "267", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.channel_mult_U0.grp_channel_mult_Pipeline_CHANNEL2REAL_fu_282.flow_control_loop_pipe_sequential_init_U", "Parent" : "266"},
	{"ID" : "268", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.channel_mult_U0.grp_channel_mult_Pipeline_VITIS_LOOP_63_1_fu_354", "Parent" : "265", "Child" : ["269", "270", "271", "272", "273", "274", "275", "276", "277", "278", "279", "280", "281", "282", "283", "284", "285", "286", "287", "288", "289", "290", "291", "292", "293", "294", "295", "296", "297", "298", "299", "300", "301", "302", "303", "304", "305", "306", "307", "308", "309", "310", "311", "312", "313", "314", "315", "316", "317", "318", "319", "320", "321", "322", "323", "324", "325", "326", "327", "328", "329", "330", "331", "332", "333"],
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
	{"ID" : "269", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.channel_mult_U0.grp_channel_mult_Pipeline_VITIS_LOOP_63_1_fu_354.mul_mul_16s_16s_24_4_1_U815", "Parent" : "268"},
	{"ID" : "270", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.channel_mult_U0.grp_channel_mult_Pipeline_VITIS_LOOP_63_1_fu_354.mul_mul_16s_16s_24_4_1_U816", "Parent" : "268"},
	{"ID" : "271", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.channel_mult_U0.grp_channel_mult_Pipeline_VITIS_LOOP_63_1_fu_354.mul_mul_16s_16s_24_4_1_U817", "Parent" : "268"},
	{"ID" : "272", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.channel_mult_U0.grp_channel_mult_Pipeline_VITIS_LOOP_63_1_fu_354.mul_mul_16s_16s_24_4_1_U818", "Parent" : "268"},
	{"ID" : "273", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.channel_mult_U0.grp_channel_mult_Pipeline_VITIS_LOOP_63_1_fu_354.mul_mul_16s_16s_24_4_1_U819", "Parent" : "268"},
	{"ID" : "274", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.channel_mult_U0.grp_channel_mult_Pipeline_VITIS_LOOP_63_1_fu_354.mul_mul_16s_16s_24_4_1_U820", "Parent" : "268"},
	{"ID" : "275", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.channel_mult_U0.grp_channel_mult_Pipeline_VITIS_LOOP_63_1_fu_354.mul_mul_16s_16s_24_4_1_U821", "Parent" : "268"},
	{"ID" : "276", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.channel_mult_U0.grp_channel_mult_Pipeline_VITIS_LOOP_63_1_fu_354.mul_mul_16s_16s_24_4_1_U822", "Parent" : "268"},
	{"ID" : "277", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.channel_mult_U0.grp_channel_mult_Pipeline_VITIS_LOOP_63_1_fu_354.mac_muladd_16s_16s_24ns_24_4_1_U823", "Parent" : "268"},
	{"ID" : "278", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.channel_mult_U0.grp_channel_mult_Pipeline_VITIS_LOOP_63_1_fu_354.mac_muladd_16s_16s_24ns_24_4_1_U824", "Parent" : "268"},
	{"ID" : "279", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.channel_mult_U0.grp_channel_mult_Pipeline_VITIS_LOOP_63_1_fu_354.mac_muladd_16s_16s_24ns_24_4_1_U825", "Parent" : "268"},
	{"ID" : "280", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.channel_mult_U0.grp_channel_mult_Pipeline_VITIS_LOOP_63_1_fu_354.mac_muladd_16s_16s_24ns_24_4_1_U826", "Parent" : "268"},
	{"ID" : "281", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.channel_mult_U0.grp_channel_mult_Pipeline_VITIS_LOOP_63_1_fu_354.mac_muladd_16s_16s_24ns_24_4_1_U827", "Parent" : "268"},
	{"ID" : "282", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.channel_mult_U0.grp_channel_mult_Pipeline_VITIS_LOOP_63_1_fu_354.mac_muladd_16s_16s_24ns_24_4_1_U828", "Parent" : "268"},
	{"ID" : "283", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.channel_mult_U0.grp_channel_mult_Pipeline_VITIS_LOOP_63_1_fu_354.mac_muladd_16s_16s_24ns_24_4_1_U829", "Parent" : "268"},
	{"ID" : "284", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.channel_mult_U0.grp_channel_mult_Pipeline_VITIS_LOOP_63_1_fu_354.mac_muladd_16s_16s_24ns_24_4_1_U830", "Parent" : "268"},
	{"ID" : "285", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.channel_mult_U0.grp_channel_mult_Pipeline_VITIS_LOOP_63_1_fu_354.mac_muladd_16s_16s_24ns_24_4_1_U831", "Parent" : "268"},
	{"ID" : "286", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.channel_mult_U0.grp_channel_mult_Pipeline_VITIS_LOOP_63_1_fu_354.mac_muladd_16s_16s_24ns_24_4_1_U832", "Parent" : "268"},
	{"ID" : "287", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.channel_mult_U0.grp_channel_mult_Pipeline_VITIS_LOOP_63_1_fu_354.mac_muladd_16s_16s_24ns_24_4_1_U833", "Parent" : "268"},
	{"ID" : "288", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.channel_mult_U0.grp_channel_mult_Pipeline_VITIS_LOOP_63_1_fu_354.mac_muladd_16s_16s_24ns_24_4_1_U834", "Parent" : "268"},
	{"ID" : "289", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.channel_mult_U0.grp_channel_mult_Pipeline_VITIS_LOOP_63_1_fu_354.mac_muladd_16s_16s_24ns_24_4_1_U835", "Parent" : "268"},
	{"ID" : "290", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.channel_mult_U0.grp_channel_mult_Pipeline_VITIS_LOOP_63_1_fu_354.mac_muladd_16s_16s_24ns_24_4_1_U836", "Parent" : "268"},
	{"ID" : "291", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.channel_mult_U0.grp_channel_mult_Pipeline_VITIS_LOOP_63_1_fu_354.mac_muladd_16s_16s_24ns_24_4_1_U837", "Parent" : "268"},
	{"ID" : "292", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.channel_mult_U0.grp_channel_mult_Pipeline_VITIS_LOOP_63_1_fu_354.mac_muladd_16s_16s_24ns_24_4_1_U838", "Parent" : "268"},
	{"ID" : "293", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.channel_mult_U0.grp_channel_mult_Pipeline_VITIS_LOOP_63_1_fu_354.mac_muladd_16s_16s_24ns_24_4_1_U839", "Parent" : "268"},
	{"ID" : "294", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.channel_mult_U0.grp_channel_mult_Pipeline_VITIS_LOOP_63_1_fu_354.mac_muladd_16s_16s_24ns_24_4_1_U840", "Parent" : "268"},
	{"ID" : "295", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.channel_mult_U0.grp_channel_mult_Pipeline_VITIS_LOOP_63_1_fu_354.mac_muladd_16s_16s_24ns_24_4_1_U841", "Parent" : "268"},
	{"ID" : "296", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.channel_mult_U0.grp_channel_mult_Pipeline_VITIS_LOOP_63_1_fu_354.mac_muladd_16s_16s_24ns_24_4_1_U842", "Parent" : "268"},
	{"ID" : "297", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.channel_mult_U0.grp_channel_mult_Pipeline_VITIS_LOOP_63_1_fu_354.mac_muladd_16s_16s_24ns_24_4_1_U843", "Parent" : "268"},
	{"ID" : "298", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.channel_mult_U0.grp_channel_mult_Pipeline_VITIS_LOOP_63_1_fu_354.mac_muladd_16s_16s_24ns_24_4_1_U844", "Parent" : "268"},
	{"ID" : "299", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.channel_mult_U0.grp_channel_mult_Pipeline_VITIS_LOOP_63_1_fu_354.mac_muladd_16s_16s_24ns_24_4_1_U845", "Parent" : "268"},
	{"ID" : "300", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.channel_mult_U0.grp_channel_mult_Pipeline_VITIS_LOOP_63_1_fu_354.mac_muladd_16s_16s_24ns_24_4_1_U846", "Parent" : "268"},
	{"ID" : "301", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.channel_mult_U0.grp_channel_mult_Pipeline_VITIS_LOOP_63_1_fu_354.mac_muladd_16s_16s_24ns_24_4_1_U847", "Parent" : "268"},
	{"ID" : "302", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.channel_mult_U0.grp_channel_mult_Pipeline_VITIS_LOOP_63_1_fu_354.mac_muladd_16s_16s_24ns_24_4_1_U848", "Parent" : "268"},
	{"ID" : "303", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.channel_mult_U0.grp_channel_mult_Pipeline_VITIS_LOOP_63_1_fu_354.mac_muladd_16s_16s_24ns_24_4_1_U849", "Parent" : "268"},
	{"ID" : "304", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.channel_mult_U0.grp_channel_mult_Pipeline_VITIS_LOOP_63_1_fu_354.mac_muladd_16s_16s_24ns_24_4_1_U850", "Parent" : "268"},
	{"ID" : "305", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.channel_mult_U0.grp_channel_mult_Pipeline_VITIS_LOOP_63_1_fu_354.mac_muladd_16s_16s_24ns_24_4_1_U851", "Parent" : "268"},
	{"ID" : "306", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.channel_mult_U0.grp_channel_mult_Pipeline_VITIS_LOOP_63_1_fu_354.mac_muladd_16s_16s_24ns_24_4_1_U852", "Parent" : "268"},
	{"ID" : "307", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.channel_mult_U0.grp_channel_mult_Pipeline_VITIS_LOOP_63_1_fu_354.mac_muladd_16s_16s_24ns_24_4_1_U853", "Parent" : "268"},
	{"ID" : "308", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.channel_mult_U0.grp_channel_mult_Pipeline_VITIS_LOOP_63_1_fu_354.mac_muladd_16s_16s_24ns_24_4_1_U854", "Parent" : "268"},
	{"ID" : "309", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.channel_mult_U0.grp_channel_mult_Pipeline_VITIS_LOOP_63_1_fu_354.mac_muladd_16s_16s_24ns_24_4_1_U855", "Parent" : "268"},
	{"ID" : "310", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.channel_mult_U0.grp_channel_mult_Pipeline_VITIS_LOOP_63_1_fu_354.mac_muladd_16s_16s_24ns_24_4_1_U856", "Parent" : "268"},
	{"ID" : "311", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.channel_mult_U0.grp_channel_mult_Pipeline_VITIS_LOOP_63_1_fu_354.mac_muladd_16s_16s_24ns_24_4_1_U857", "Parent" : "268"},
	{"ID" : "312", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.channel_mult_U0.grp_channel_mult_Pipeline_VITIS_LOOP_63_1_fu_354.mac_muladd_16s_16s_24ns_24_4_1_U858", "Parent" : "268"},
	{"ID" : "313", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.channel_mult_U0.grp_channel_mult_Pipeline_VITIS_LOOP_63_1_fu_354.mac_muladd_16s_16s_24ns_24_4_1_U859", "Parent" : "268"},
	{"ID" : "314", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.channel_mult_U0.grp_channel_mult_Pipeline_VITIS_LOOP_63_1_fu_354.mac_muladd_16s_16s_24ns_24_4_1_U860", "Parent" : "268"},
	{"ID" : "315", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.channel_mult_U0.grp_channel_mult_Pipeline_VITIS_LOOP_63_1_fu_354.mac_muladd_16s_16s_24ns_24_4_1_U861", "Parent" : "268"},
	{"ID" : "316", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.channel_mult_U0.grp_channel_mult_Pipeline_VITIS_LOOP_63_1_fu_354.mac_muladd_16s_16s_24ns_24_4_1_U862", "Parent" : "268"},
	{"ID" : "317", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.channel_mult_U0.grp_channel_mult_Pipeline_VITIS_LOOP_63_1_fu_354.mac_muladd_16s_16s_24ns_24_4_1_U863", "Parent" : "268"},
	{"ID" : "318", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.channel_mult_U0.grp_channel_mult_Pipeline_VITIS_LOOP_63_1_fu_354.mac_muladd_16s_16s_24ns_24_4_1_U864", "Parent" : "268"},
	{"ID" : "319", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.channel_mult_U0.grp_channel_mult_Pipeline_VITIS_LOOP_63_1_fu_354.mac_muladd_16s_16s_24ns_24_4_1_U865", "Parent" : "268"},
	{"ID" : "320", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.channel_mult_U0.grp_channel_mult_Pipeline_VITIS_LOOP_63_1_fu_354.mac_muladd_16s_16s_24ns_24_4_1_U866", "Parent" : "268"},
	{"ID" : "321", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.channel_mult_U0.grp_channel_mult_Pipeline_VITIS_LOOP_63_1_fu_354.mac_muladd_16s_16s_24ns_24_4_1_U867", "Parent" : "268"},
	{"ID" : "322", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.channel_mult_U0.grp_channel_mult_Pipeline_VITIS_LOOP_63_1_fu_354.mac_muladd_16s_16s_24ns_24_4_1_U868", "Parent" : "268"},
	{"ID" : "323", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.channel_mult_U0.grp_channel_mult_Pipeline_VITIS_LOOP_63_1_fu_354.mac_muladd_16s_16s_24ns_24_4_1_U869", "Parent" : "268"},
	{"ID" : "324", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.channel_mult_U0.grp_channel_mult_Pipeline_VITIS_LOOP_63_1_fu_354.mac_muladd_16s_16s_24ns_24_4_1_U870", "Parent" : "268"},
	{"ID" : "325", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.channel_mult_U0.grp_channel_mult_Pipeline_VITIS_LOOP_63_1_fu_354.mac_muladd_16s_16s_24ns_24_4_1_U871", "Parent" : "268"},
	{"ID" : "326", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.channel_mult_U0.grp_channel_mult_Pipeline_VITIS_LOOP_63_1_fu_354.mac_muladd_16s_16s_24ns_24_4_1_U872", "Parent" : "268"},
	{"ID" : "327", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.channel_mult_U0.grp_channel_mult_Pipeline_VITIS_LOOP_63_1_fu_354.mac_muladd_16s_16s_24ns_24_4_1_U873", "Parent" : "268"},
	{"ID" : "328", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.channel_mult_U0.grp_channel_mult_Pipeline_VITIS_LOOP_63_1_fu_354.mac_muladd_16s_16s_24ns_24_4_1_U874", "Parent" : "268"},
	{"ID" : "329", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.channel_mult_U0.grp_channel_mult_Pipeline_VITIS_LOOP_63_1_fu_354.mac_muladd_16s_16s_24ns_24_4_1_U875", "Parent" : "268"},
	{"ID" : "330", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.channel_mult_U0.grp_channel_mult_Pipeline_VITIS_LOOP_63_1_fu_354.mac_muladd_16s_16s_24ns_24_4_1_U876", "Parent" : "268"},
	{"ID" : "331", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.channel_mult_U0.grp_channel_mult_Pipeline_VITIS_LOOP_63_1_fu_354.mac_muladd_16s_16s_24ns_24_4_1_U877", "Parent" : "268"},
	{"ID" : "332", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.channel_mult_U0.grp_channel_mult_Pipeline_VITIS_LOOP_63_1_fu_354.mac_muladd_16s_16s_24ns_24_4_1_U878", "Parent" : "268"},
	{"ID" : "333", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.channel_mult_U0.grp_channel_mult_Pipeline_VITIS_LOOP_63_1_fu_354.flow_control_loop_pipe_sequential_init_U", "Parent" : "268"},
	{"ID" : "334", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.AWGN_1_U0", "Parent" : "0", "Child" : ["335", "336", "337", "338", "339", "343"],
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
		"StartSource" : "1",
		"StartFifo" : "start_for_AWGN_1_U0_U",
		"Port" : [
			{"Name" : "SNR", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["1"], "DependentChan" : "533", "DependentChanDepth" : "5", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "SNR_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "channel_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["265"], "DependentChan" : "545", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "343", "SubInstance" : "grp_AWGN_1_Pipeline_VITIS_LOOP_15_1_fu_72", "Port" : "channel_out", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "noise_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["376"], "DependentChan" : "546", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "343", "SubInstance" : "grp_AWGN_1_Pipeline_VITIS_LOOP_15_1_fu_72", "Port" : "noise_out", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "335", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.AWGN_1_U0.rngMT19937ICN_uniformRNG_mt_odd_0_V_U", "Parent" : "334"},
	{"ID" : "336", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.AWGN_1_U0.rngMT19937ICN_1_i_U", "Parent" : "334"},
	{"ID" : "337", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.AWGN_1_U0.rngMT19937ICN_uniformRNG_mt_even_0_V_U", "Parent" : "334"},
	{"ID" : "338", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.AWGN_1_U0.rngMT19937ICN_3_i_U", "Parent" : "334"},
	{"ID" : "339", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.AWGN_1_U0.grp_seedInitialization_fu_58", "Parent" : "334", "Child" : ["340"],
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
					{"ID" : "340", "SubInstance" : "grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_94", "Port" : "this_mt_odd_0", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "this_mt_odd_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "340", "SubInstance" : "grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_94", "Port" : "this_mt_odd_1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "this_mt_even_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "340", "SubInstance" : "grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_94", "Port" : "this_mt_even_0", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "this_mt_even_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "340", "SubInstance" : "grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_94", "Port" : "this_mt_even_1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "seed", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "340", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.AWGN_1_U0.grp_seedInitialization_fu_58.grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_94", "Parent" : "339", "Child" : ["341", "342"],
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
	{"ID" : "341", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.AWGN_1_U0.grp_seedInitialization_fu_58.grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_94.mul_32s_32ns_32_1_1_U66", "Parent" : "340"},
	{"ID" : "342", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.AWGN_1_U0.grp_seedInitialization_fu_58.grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_94.flow_control_loop_pipe_sequential_init_U", "Parent" : "340"},
	{"ID" : "343", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.AWGN_1_U0.grp_AWGN_1_Pipeline_VITIS_LOOP_15_1_fu_72", "Parent" : "334", "Child" : ["344", "345", "346", "347", "348", "349", "350", "351", "352", "353", "354", "355", "356", "357", "358", "359", "360", "361", "362", "363", "364", "365", "366", "367", "368", "369", "370", "371", "372", "373", "374", "375"],
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
	{"ID" : "344", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.AWGN_1_U0.grp_AWGN_1_Pipeline_VITIS_LOOP_15_1_fu_72.dsub_64ns_64ns_64_2_no_dsp_1_U951", "Parent" : "343"},
	{"ID" : "345", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.AWGN_1_U0.grp_AWGN_1_Pipeline_VITIS_LOOP_15_1_fu_72.dadd_64ns_64ns_64_2_no_dsp_1_U952", "Parent" : "343"},
	{"ID" : "346", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.AWGN_1_U0.grp_AWGN_1_Pipeline_VITIS_LOOP_15_1_fu_72.dadd_64ns_64ns_64_2_no_dsp_1_U953", "Parent" : "343"},
	{"ID" : "347", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.AWGN_1_U0.grp_AWGN_1_Pipeline_VITIS_LOOP_15_1_fu_72.dadd_64ns_64ns_64_2_no_dsp_1_U954", "Parent" : "343"},
	{"ID" : "348", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.AWGN_1_U0.grp_AWGN_1_Pipeline_VITIS_LOOP_15_1_fu_72.dadd_64ns_64ns_64_2_no_dsp_1_U955", "Parent" : "343"},
	{"ID" : "349", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.AWGN_1_U0.grp_AWGN_1_Pipeline_VITIS_LOOP_15_1_fu_72.dadd_64ns_64ns_64_2_no_dsp_1_U956", "Parent" : "343"},
	{"ID" : "350", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.AWGN_1_U0.grp_AWGN_1_Pipeline_VITIS_LOOP_15_1_fu_72.dadd_64ns_64ns_64_2_no_dsp_1_U957", "Parent" : "343"},
	{"ID" : "351", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.AWGN_1_U0.grp_AWGN_1_Pipeline_VITIS_LOOP_15_1_fu_72.dadd_64ns_64ns_64_2_no_dsp_1_U958", "Parent" : "343"},
	{"ID" : "352", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.AWGN_1_U0.grp_AWGN_1_Pipeline_VITIS_LOOP_15_1_fu_72.dadd_64ns_64ns_64_2_no_dsp_1_U959", "Parent" : "343"},
	{"ID" : "353", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.AWGN_1_U0.grp_AWGN_1_Pipeline_VITIS_LOOP_15_1_fu_72.dadd_64ns_64ns_64_2_no_dsp_1_U960", "Parent" : "343"},
	{"ID" : "354", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.AWGN_1_U0.grp_AWGN_1_Pipeline_VITIS_LOOP_15_1_fu_72.dadd_64ns_64ns_64_2_no_dsp_1_U961", "Parent" : "343"},
	{"ID" : "355", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.AWGN_1_U0.grp_AWGN_1_Pipeline_VITIS_LOOP_15_1_fu_72.dadd_64ns_64ns_64_2_no_dsp_1_U962", "Parent" : "343"},
	{"ID" : "356", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.AWGN_1_U0.grp_AWGN_1_Pipeline_VITIS_LOOP_15_1_fu_72.dmul_64ns_64ns_64_2_med_dsp_1_U963", "Parent" : "343"},
	{"ID" : "357", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.AWGN_1_U0.grp_AWGN_1_Pipeline_VITIS_LOOP_15_1_fu_72.dmul_64ns_64ns_64_2_med_dsp_1_U964", "Parent" : "343"},
	{"ID" : "358", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.AWGN_1_U0.grp_AWGN_1_Pipeline_VITIS_LOOP_15_1_fu_72.dmul_64ns_64ns_64_2_med_dsp_1_U965", "Parent" : "343"},
	{"ID" : "359", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.AWGN_1_U0.grp_AWGN_1_Pipeline_VITIS_LOOP_15_1_fu_72.dmul_64ns_64ns_64_2_med_dsp_1_U966", "Parent" : "343"},
	{"ID" : "360", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.AWGN_1_U0.grp_AWGN_1_Pipeline_VITIS_LOOP_15_1_fu_72.dmul_64ns_64ns_64_2_med_dsp_1_U967", "Parent" : "343"},
	{"ID" : "361", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.AWGN_1_U0.grp_AWGN_1_Pipeline_VITIS_LOOP_15_1_fu_72.dmul_64ns_64ns_64_2_med_dsp_1_U968", "Parent" : "343"},
	{"ID" : "362", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.AWGN_1_U0.grp_AWGN_1_Pipeline_VITIS_LOOP_15_1_fu_72.dmul_64ns_64ns_64_2_med_dsp_1_U969", "Parent" : "343"},
	{"ID" : "363", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.AWGN_1_U0.grp_AWGN_1_Pipeline_VITIS_LOOP_15_1_fu_72.dmul_64ns_64ns_64_2_med_dsp_1_U970", "Parent" : "343"},
	{"ID" : "364", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.AWGN_1_U0.grp_AWGN_1_Pipeline_VITIS_LOOP_15_1_fu_72.dmul_64ns_64ns_64_2_med_dsp_1_U971", "Parent" : "343"},
	{"ID" : "365", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.AWGN_1_U0.grp_AWGN_1_Pipeline_VITIS_LOOP_15_1_fu_72.dmul_64ns_64ns_64_2_med_dsp_1_U972", "Parent" : "343"},
	{"ID" : "366", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.AWGN_1_U0.grp_AWGN_1_Pipeline_VITIS_LOOP_15_1_fu_72.dmul_64ns_64ns_64_2_med_dsp_1_U973", "Parent" : "343"},
	{"ID" : "367", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.AWGN_1_U0.grp_AWGN_1_Pipeline_VITIS_LOOP_15_1_fu_72.dmul_64ns_64ns_64_2_med_dsp_1_U974", "Parent" : "343"},
	{"ID" : "368", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.AWGN_1_U0.grp_AWGN_1_Pipeline_VITIS_LOOP_15_1_fu_72.dmul_64ns_64ns_64_2_med_dsp_1_U975", "Parent" : "343"},
	{"ID" : "369", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.AWGN_1_U0.grp_AWGN_1_Pipeline_VITIS_LOOP_15_1_fu_72.ddiv_64ns_64ns_64_7_no_dsp_1_U976", "Parent" : "343"},
	{"ID" : "370", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.AWGN_1_U0.grp_AWGN_1_Pipeline_VITIS_LOOP_15_1_fu_72.dcmp_64ns_64ns_1_1_no_dsp_1_U977", "Parent" : "343"},
	{"ID" : "371", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.AWGN_1_U0.grp_AWGN_1_Pipeline_VITIS_LOOP_15_1_fu_72.dcmp_64ns_64ns_1_1_no_dsp_1_U978", "Parent" : "343"},
	{"ID" : "372", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.AWGN_1_U0.grp_AWGN_1_Pipeline_VITIS_LOOP_15_1_fu_72.dsqrt_64ns_64ns_64_7_no_dsp_1_U979", "Parent" : "343"},
	{"ID" : "373", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.AWGN_1_U0.grp_AWGN_1_Pipeline_VITIS_LOOP_15_1_fu_72.dlog_64ns_64ns_64_5_med_dsp_1_U980", "Parent" : "343"},
	{"ID" : "374", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.AWGN_1_U0.grp_AWGN_1_Pipeline_VITIS_LOOP_15_1_fu_72.mac_muladd_16s_16s_24ns_24_4_1_U981", "Parent" : "343"},
	{"ID" : "375", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.AWGN_1_U0.grp_AWGN_1_Pipeline_VITIS_LOOP_15_1_fu_72.flow_control_loop_pipe_sequential_init_U", "Parent" : "343"},
	{"ID" : "376", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.matrix_mult_U0", "Parent" : "0", "Child" : ["377", "378", "380"],
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
		"StartSource" : "334",
		"StartFifo" : "start_for_matrix_mult_U0_U",
		"Port" : [
			{"Name" : "Q", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["76"], "DependentChan" : "544", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "378", "SubInstance" : "grp_matrix_mult_Pipeline_VITIS_LOOP_88_1_fu_26", "Port" : "Q", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "noise_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["334"], "DependentChan" : "546", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "380", "SubInstance" : "grp_matrix_mult_Pipeline_VITIS_LOOP_94_2_fu_34", "Port" : "noise_out", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "MULQ_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["446"], "DependentChan" : "547", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "380", "SubInstance" : "grp_matrix_mult_Pipeline_VITIS_LOOP_94_2_fu_34", "Port" : "MULQ_out", "Inst_start_state" : "4", "Inst_end_state" : "5"}]}]},
	{"ID" : "377", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.matrix_mult_U0.Q_TEMP_V_U", "Parent" : "376"},
	{"ID" : "378", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.matrix_mult_U0.grp_matrix_mult_Pipeline_VITIS_LOOP_88_1_fu_26", "Parent" : "376", "Child" : ["379"],
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
	{"ID" : "379", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.matrix_mult_U0.grp_matrix_mult_Pipeline_VITIS_LOOP_88_1_fu_26.flow_control_loop_pipe_sequential_init_U", "Parent" : "378"},
	{"ID" : "380", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.matrix_mult_U0.grp_matrix_mult_Pipeline_VITIS_LOOP_94_2_fu_34", "Parent" : "376", "Child" : ["381", "382", "383", "384", "385", "386", "387", "388", "389", "390", "391", "392", "393", "394", "395", "396", "397", "398", "399", "400", "401", "402", "403", "404", "405", "406", "407", "408", "409", "410", "411", "412", "413", "414", "415", "416", "417", "418", "419", "420", "421", "422", "423", "424", "425", "426", "427", "428", "429", "430", "431", "432", "433", "434", "435", "436", "437", "438", "439", "440", "441", "442", "443", "444", "445"],
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
	{"ID" : "381", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.matrix_mult_U0.grp_matrix_mult_Pipeline_VITIS_LOOP_94_2_fu_34.mul_mul_16s_16s_24_4_1_U997", "Parent" : "380"},
	{"ID" : "382", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.matrix_mult_U0.grp_matrix_mult_Pipeline_VITIS_LOOP_94_2_fu_34.mul_mul_16s_16s_24_4_1_U998", "Parent" : "380"},
	{"ID" : "383", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.matrix_mult_U0.grp_matrix_mult_Pipeline_VITIS_LOOP_94_2_fu_34.mul_mul_16s_16s_24_4_1_U999", "Parent" : "380"},
	{"ID" : "384", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.matrix_mult_U0.grp_matrix_mult_Pipeline_VITIS_LOOP_94_2_fu_34.mac_muladd_16s_16s_24ns_24_4_1_U1000", "Parent" : "380"},
	{"ID" : "385", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.matrix_mult_U0.grp_matrix_mult_Pipeline_VITIS_LOOP_94_2_fu_34.mac_muladd_16s_16s_24ns_24_4_1_U1001", "Parent" : "380"},
	{"ID" : "386", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.matrix_mult_U0.grp_matrix_mult_Pipeline_VITIS_LOOP_94_2_fu_34.mac_muladd_16s_16s_24ns_24_4_1_U1002", "Parent" : "380"},
	{"ID" : "387", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.matrix_mult_U0.grp_matrix_mult_Pipeline_VITIS_LOOP_94_2_fu_34.mul_mul_16s_16s_24_4_1_U1003", "Parent" : "380"},
	{"ID" : "388", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.matrix_mult_U0.grp_matrix_mult_Pipeline_VITIS_LOOP_94_2_fu_34.mul_mul_16s_16s_24_4_1_U1004", "Parent" : "380"},
	{"ID" : "389", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.matrix_mult_U0.grp_matrix_mult_Pipeline_VITIS_LOOP_94_2_fu_34.mac_muladd_16s_16s_24ns_24_4_1_U1005", "Parent" : "380"},
	{"ID" : "390", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.matrix_mult_U0.grp_matrix_mult_Pipeline_VITIS_LOOP_94_2_fu_34.mac_muladd_16s_16s_24ns_24_4_1_U1006", "Parent" : "380"},
	{"ID" : "391", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.matrix_mult_U0.grp_matrix_mult_Pipeline_VITIS_LOOP_94_2_fu_34.mac_muladd_16s_16s_24ns_24_4_1_U1007", "Parent" : "380"},
	{"ID" : "392", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.matrix_mult_U0.grp_matrix_mult_Pipeline_VITIS_LOOP_94_2_fu_34.mac_muladd_16s_16s_24ns_24_4_1_U1008", "Parent" : "380"},
	{"ID" : "393", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.matrix_mult_U0.grp_matrix_mult_Pipeline_VITIS_LOOP_94_2_fu_34.mac_muladd_16s_16s_24ns_24_4_1_U1009", "Parent" : "380"},
	{"ID" : "394", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.matrix_mult_U0.grp_matrix_mult_Pipeline_VITIS_LOOP_94_2_fu_34.mul_mul_16s_16s_24_4_1_U1010", "Parent" : "380"},
	{"ID" : "395", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.matrix_mult_U0.grp_matrix_mult_Pipeline_VITIS_LOOP_94_2_fu_34.mac_muladd_16s_16s_24ns_24_4_1_U1011", "Parent" : "380"},
	{"ID" : "396", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.matrix_mult_U0.grp_matrix_mult_Pipeline_VITIS_LOOP_94_2_fu_34.mac_muladd_16s_16s_24ns_24_4_1_U1012", "Parent" : "380"},
	{"ID" : "397", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.matrix_mult_U0.grp_matrix_mult_Pipeline_VITIS_LOOP_94_2_fu_34.mac_muladd_16s_16s_24ns_24_4_1_U1013", "Parent" : "380"},
	{"ID" : "398", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.matrix_mult_U0.grp_matrix_mult_Pipeline_VITIS_LOOP_94_2_fu_34.mac_muladd_16s_16s_24ns_24_4_1_U1014", "Parent" : "380"},
	{"ID" : "399", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.matrix_mult_U0.grp_matrix_mult_Pipeline_VITIS_LOOP_94_2_fu_34.mac_muladd_16s_16s_24ns_24_4_1_U1015", "Parent" : "380"},
	{"ID" : "400", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.matrix_mult_U0.grp_matrix_mult_Pipeline_VITIS_LOOP_94_2_fu_34.mac_muladd_16s_16s_24ns_24_4_1_U1016", "Parent" : "380"},
	{"ID" : "401", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.matrix_mult_U0.grp_matrix_mult_Pipeline_VITIS_LOOP_94_2_fu_34.mul_mul_16s_16s_24_4_1_U1017", "Parent" : "380"},
	{"ID" : "402", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.matrix_mult_U0.grp_matrix_mult_Pipeline_VITIS_LOOP_94_2_fu_34.mac_muladd_16s_16s_24ns_24_4_1_U1018", "Parent" : "380"},
	{"ID" : "403", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.matrix_mult_U0.grp_matrix_mult_Pipeline_VITIS_LOOP_94_2_fu_34.mac_muladd_16s_16s_24ns_24_4_1_U1019", "Parent" : "380"},
	{"ID" : "404", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.matrix_mult_U0.grp_matrix_mult_Pipeline_VITIS_LOOP_94_2_fu_34.mac_muladd_16s_16s_24ns_24_4_1_U1020", "Parent" : "380"},
	{"ID" : "405", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.matrix_mult_U0.grp_matrix_mult_Pipeline_VITIS_LOOP_94_2_fu_34.mac_muladd_16s_16s_24ns_24_4_1_U1021", "Parent" : "380"},
	{"ID" : "406", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.matrix_mult_U0.grp_matrix_mult_Pipeline_VITIS_LOOP_94_2_fu_34.mac_muladd_16s_16s_24ns_24_4_1_U1022", "Parent" : "380"},
	{"ID" : "407", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.matrix_mult_U0.grp_matrix_mult_Pipeline_VITIS_LOOP_94_2_fu_34.mac_muladd_16s_16s_24ns_24_4_1_U1023", "Parent" : "380"},
	{"ID" : "408", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.matrix_mult_U0.grp_matrix_mult_Pipeline_VITIS_LOOP_94_2_fu_34.mac_muladd_16s_16s_24ns_24_4_1_U1024", "Parent" : "380"},
	{"ID" : "409", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.matrix_mult_U0.grp_matrix_mult_Pipeline_VITIS_LOOP_94_2_fu_34.mul_mul_16s_16s_24_4_1_U1025", "Parent" : "380"},
	{"ID" : "410", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.matrix_mult_U0.grp_matrix_mult_Pipeline_VITIS_LOOP_94_2_fu_34.mac_muladd_16s_16s_24ns_24_4_1_U1026", "Parent" : "380"},
	{"ID" : "411", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.matrix_mult_U0.grp_matrix_mult_Pipeline_VITIS_LOOP_94_2_fu_34.mac_muladd_16s_16s_24ns_24_4_1_U1027", "Parent" : "380"},
	{"ID" : "412", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.matrix_mult_U0.grp_matrix_mult_Pipeline_VITIS_LOOP_94_2_fu_34.mac_muladd_16s_16s_24ns_24_4_1_U1028", "Parent" : "380"},
	{"ID" : "413", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.matrix_mult_U0.grp_matrix_mult_Pipeline_VITIS_LOOP_94_2_fu_34.mac_muladd_16s_16s_24ns_24_4_1_U1029", "Parent" : "380"},
	{"ID" : "414", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.matrix_mult_U0.grp_matrix_mult_Pipeline_VITIS_LOOP_94_2_fu_34.mac_muladd_16s_16s_24ns_24_4_1_U1030", "Parent" : "380"},
	{"ID" : "415", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.matrix_mult_U0.grp_matrix_mult_Pipeline_VITIS_LOOP_94_2_fu_34.mac_muladd_16s_16s_24ns_24_4_1_U1031", "Parent" : "380"},
	{"ID" : "416", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.matrix_mult_U0.grp_matrix_mult_Pipeline_VITIS_LOOP_94_2_fu_34.mac_muladd_16s_16s_24ns_24_4_1_U1032", "Parent" : "380"},
	{"ID" : "417", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.matrix_mult_U0.grp_matrix_mult_Pipeline_VITIS_LOOP_94_2_fu_34.mac_muladd_16s_16s_24ns_24_4_1_U1033", "Parent" : "380"},
	{"ID" : "418", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.matrix_mult_U0.grp_matrix_mult_Pipeline_VITIS_LOOP_94_2_fu_34.mac_muladd_16s_16s_24ns_24_4_1_U1034", "Parent" : "380"},
	{"ID" : "419", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.matrix_mult_U0.grp_matrix_mult_Pipeline_VITIS_LOOP_94_2_fu_34.mac_muladd_16s_16s_24ns_24_4_1_U1035", "Parent" : "380"},
	{"ID" : "420", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.matrix_mult_U0.grp_matrix_mult_Pipeline_VITIS_LOOP_94_2_fu_34.mac_muladd_16s_16s_24ns_24_4_1_U1036", "Parent" : "380"},
	{"ID" : "421", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.matrix_mult_U0.grp_matrix_mult_Pipeline_VITIS_LOOP_94_2_fu_34.mac_muladd_16s_16s_24ns_24_4_1_U1037", "Parent" : "380"},
	{"ID" : "422", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.matrix_mult_U0.grp_matrix_mult_Pipeline_VITIS_LOOP_94_2_fu_34.mac_muladd_16s_16s_24ns_24_4_1_U1038", "Parent" : "380"},
	{"ID" : "423", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.matrix_mult_U0.grp_matrix_mult_Pipeline_VITIS_LOOP_94_2_fu_34.mac_muladd_16s_16s_24ns_24_4_1_U1039", "Parent" : "380"},
	{"ID" : "424", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.matrix_mult_U0.grp_matrix_mult_Pipeline_VITIS_LOOP_94_2_fu_34.mac_muladd_16s_16s_24ns_24_4_1_U1040", "Parent" : "380"},
	{"ID" : "425", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.matrix_mult_U0.grp_matrix_mult_Pipeline_VITIS_LOOP_94_2_fu_34.mac_muladd_16s_16s_24ns_24_4_1_U1041", "Parent" : "380"},
	{"ID" : "426", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.matrix_mult_U0.grp_matrix_mult_Pipeline_VITIS_LOOP_94_2_fu_34.mac_muladd_16s_16s_24ns_24_4_1_U1042", "Parent" : "380"},
	{"ID" : "427", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.matrix_mult_U0.grp_matrix_mult_Pipeline_VITIS_LOOP_94_2_fu_34.mac_muladd_16s_16s_24ns_24_4_1_U1043", "Parent" : "380"},
	{"ID" : "428", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.matrix_mult_U0.grp_matrix_mult_Pipeline_VITIS_LOOP_94_2_fu_34.mac_muladd_16s_16s_24ns_24_4_1_U1044", "Parent" : "380"},
	{"ID" : "429", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.matrix_mult_U0.grp_matrix_mult_Pipeline_VITIS_LOOP_94_2_fu_34.mac_muladd_16s_16s_24ns_24_4_1_U1045", "Parent" : "380"},
	{"ID" : "430", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.matrix_mult_U0.grp_matrix_mult_Pipeline_VITIS_LOOP_94_2_fu_34.mac_muladd_16s_16s_24ns_24_4_1_U1046", "Parent" : "380"},
	{"ID" : "431", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.matrix_mult_U0.grp_matrix_mult_Pipeline_VITIS_LOOP_94_2_fu_34.mac_muladd_16s_16s_24ns_24_4_1_U1047", "Parent" : "380"},
	{"ID" : "432", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.matrix_mult_U0.grp_matrix_mult_Pipeline_VITIS_LOOP_94_2_fu_34.mac_muladd_16s_16s_24ns_24_4_1_U1048", "Parent" : "380"},
	{"ID" : "433", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.matrix_mult_U0.grp_matrix_mult_Pipeline_VITIS_LOOP_94_2_fu_34.mac_muladd_16s_16s_24ns_24_4_1_U1049", "Parent" : "380"},
	{"ID" : "434", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.matrix_mult_U0.grp_matrix_mult_Pipeline_VITIS_LOOP_94_2_fu_34.mac_muladd_16s_16s_24ns_24_4_1_U1050", "Parent" : "380"},
	{"ID" : "435", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.matrix_mult_U0.grp_matrix_mult_Pipeline_VITIS_LOOP_94_2_fu_34.mac_muladd_16s_16s_24ns_24_4_1_U1051", "Parent" : "380"},
	{"ID" : "436", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.matrix_mult_U0.grp_matrix_mult_Pipeline_VITIS_LOOP_94_2_fu_34.mac_muladd_16s_16s_24ns_24_4_1_U1052", "Parent" : "380"},
	{"ID" : "437", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.matrix_mult_U0.grp_matrix_mult_Pipeline_VITIS_LOOP_94_2_fu_34.mac_muladd_16s_16s_24ns_24_4_1_U1053", "Parent" : "380"},
	{"ID" : "438", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.matrix_mult_U0.grp_matrix_mult_Pipeline_VITIS_LOOP_94_2_fu_34.mac_muladd_16s_16s_24ns_24_4_1_U1054", "Parent" : "380"},
	{"ID" : "439", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.matrix_mult_U0.grp_matrix_mult_Pipeline_VITIS_LOOP_94_2_fu_34.mac_muladd_16s_16s_24ns_24_4_1_U1055", "Parent" : "380"},
	{"ID" : "440", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.matrix_mult_U0.grp_matrix_mult_Pipeline_VITIS_LOOP_94_2_fu_34.mac_muladd_16s_16s_24ns_24_4_1_U1056", "Parent" : "380"},
	{"ID" : "441", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.matrix_mult_U0.grp_matrix_mult_Pipeline_VITIS_LOOP_94_2_fu_34.mac_muladd_16s_16s_24ns_24_4_1_U1057", "Parent" : "380"},
	{"ID" : "442", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.matrix_mult_U0.grp_matrix_mult_Pipeline_VITIS_LOOP_94_2_fu_34.mac_muladd_16s_16s_24ns_24_4_1_U1058", "Parent" : "380"},
	{"ID" : "443", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.matrix_mult_U0.grp_matrix_mult_Pipeline_VITIS_LOOP_94_2_fu_34.mac_muladd_16s_16s_24ns_24_4_1_U1059", "Parent" : "380"},
	{"ID" : "444", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.matrix_mult_U0.grp_matrix_mult_Pipeline_VITIS_LOOP_94_2_fu_34.mac_muladd_16s_16s_24ns_24_4_1_U1060", "Parent" : "380"},
	{"ID" : "445", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.matrix_mult_U0.grp_matrix_mult_Pipeline_VITIS_LOOP_94_2_fu_34.flow_control_loop_pipe_sequential_init_U", "Parent" : "380"},
	{"ID" : "446", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.KBEST_U0", "Parent" : "0", "Child" : ["447", "448", "449", "450", "451", "453", "455", "458", "460", "462", "469", "487", "491"],
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
		"StartSource" : "76",
		"StartFifo" : "start_for_KBEST_U0_U",
		"Port" : [
			{"Name" : "R", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["76"], "DependentChan" : "543", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "453", "SubInstance" : "grp_KBEST_Pipeline_VITIS_LOOP_21_1_fu_876", "Port" : "R", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "MULQ_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["376"], "DependentChan" : "547", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "455", "SubInstance" : "grp_KBEST_Pipeline_VITIS_LOOP_31_3_fu_884", "Port" : "MULQ_out", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "KB_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["492"], "DependentChan" : "548", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "460", "SubInstance" : "grp_KBEST_Pipeline_VITIS_LOOP_104_12_fu_953", "Port" : "KB_out", "Inst_start_state" : "7", "Inst_end_state" : "20"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_55_6", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "20", "FirstState" : "ap_ST_fsm_state10", "LastState" : ["ap_ST_fsm_state15"], "QuitState" : ["ap_ST_fsm_state10"], "PreState" : ["ap_ST_fsm_state9"], "PostState" : ["ap_ST_fsm_state16", "ap_ST_fsm_state17"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_36_4", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "20", "FirstState" : "ap_ST_fsm_state7", "LastState" : ["ap_ST_fsm_state19"], "QuitState" : ["ap_ST_fsm_state7"], "PreState" : ["ap_ST_fsm_state6"], "PostState" : ["ap_ST_fsm_state20"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_27_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "20", "FirstState" : "ap_ST_fsm_state4", "LastState" : ["ap_ST_fsm_state20"], "QuitState" : ["ap_ST_fsm_state4"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "447", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.KBEST_U0.yy_V_U", "Parent" : "446"},
	{"ID" : "448", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.KBEST_U0.PED_V_U", "Parent" : "446"},
	{"ID" : "449", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.KBEST_U0.survival_path_U", "Parent" : "446"},
	{"ID" : "450", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.KBEST_U0.R_V_U", "Parent" : "446"},
	{"ID" : "451", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.KBEST_U0.grp_KBEST_Pipeline_1_fu_840", "Parent" : "446", "Child" : ["452"],
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
	{"ID" : "452", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.KBEST_U0.grp_KBEST_Pipeline_1_fu_840.flow_control_loop_pipe_sequential_init_U", "Parent" : "451"},
	{"ID" : "453", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.KBEST_U0.grp_KBEST_Pipeline_VITIS_LOOP_21_1_fu_876", "Parent" : "446", "Child" : ["454"],
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
	{"ID" : "454", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.KBEST_U0.grp_KBEST_Pipeline_VITIS_LOOP_21_1_fu_876.flow_control_loop_pipe_sequential_init_U", "Parent" : "453"},
	{"ID" : "455", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.KBEST_U0.grp_KBEST_Pipeline_VITIS_LOOP_31_3_fu_884", "Parent" : "446", "Child" : ["456", "457"],
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
	{"ID" : "456", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.KBEST_U0.grp_KBEST_Pipeline_VITIS_LOOP_31_3_fu_884.mul_mul_16s_9ns_24_4_1_U1102", "Parent" : "455"},
	{"ID" : "457", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.KBEST_U0.grp_KBEST_Pipeline_VITIS_LOOP_31_3_fu_884.flow_control_loop_pipe_sequential_init_U", "Parent" : "455"},
	{"ID" : "458", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.KBEST_U0.grp_KBEST_Pipeline_VITIS_LOOP_48_5_fu_891", "Parent" : "446", "Child" : ["459"],
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
	{"ID" : "459", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.KBEST_U0.grp_KBEST_Pipeline_VITIS_LOOP_48_5_fu_891.flow_control_loop_pipe_sequential_init_U", "Parent" : "458"},
	{"ID" : "460", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.KBEST_U0.grp_KBEST_Pipeline_VITIS_LOOP_104_12_fu_953", "Parent" : "446", "Child" : ["461"],
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
	{"ID" : "461", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.KBEST_U0.grp_KBEST_Pipeline_VITIS_LOOP_104_12_fu_953.flow_control_loop_pipe_sequential_init_U", "Parent" : "460"},
	{"ID" : "462", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.KBEST_U0.grp_KBEST_Pipeline_VITIS_LOOP_57_7_fu_960", "Parent" : "446", "Child" : ["463", "464", "465", "466", "467", "468"],
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
	{"ID" : "463", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.KBEST_U0.grp_KBEST_Pipeline_VITIS_LOOP_57_7_fu_960.mux_864_32_1_1_U1164", "Parent" : "462"},
	{"ID" : "464", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.KBEST_U0.grp_KBEST_Pipeline_VITIS_LOOP_57_7_fu_960.mux_864_32_1_1_U1165", "Parent" : "462"},
	{"ID" : "465", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.KBEST_U0.grp_KBEST_Pipeline_VITIS_LOOP_57_7_fu_960.mux_864_32_1_1_U1166", "Parent" : "462"},
	{"ID" : "466", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.KBEST_U0.grp_KBEST_Pipeline_VITIS_LOOP_57_7_fu_960.mux_864_32_1_1_U1167", "Parent" : "462"},
	{"ID" : "467", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.KBEST_U0.grp_KBEST_Pipeline_VITIS_LOOP_57_7_fu_960.mux_42_32_1_1_U1168", "Parent" : "462"},
	{"ID" : "468", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.KBEST_U0.grp_KBEST_Pipeline_VITIS_LOOP_57_7_fu_960.flow_control_loop_pipe_sequential_init_U", "Parent" : "462"},
	{"ID" : "469", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.KBEST_U0.grp_KBEST_Pipeline_VITIS_LOOP_75_8_VITIS_LOOP_76_9_fu_1001", "Parent" : "446", "Child" : ["470", "471", "472", "473", "474", "475", "476", "477", "478", "479", "480", "481", "482", "483", "484", "485", "486"],
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
	{"ID" : "470", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.KBEST_U0.grp_KBEST_Pipeline_VITIS_LOOP_75_8_VITIS_LOOP_76_9_fu_1001.mux_32_32_1_1_U1208", "Parent" : "469"},
	{"ID" : "471", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.KBEST_U0.grp_KBEST_Pipeline_VITIS_LOOP_75_8_VITIS_LOOP_76_9_fu_1001.mux_32_32_1_1_U1209", "Parent" : "469"},
	{"ID" : "472", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.KBEST_U0.grp_KBEST_Pipeline_VITIS_LOOP_75_8_VITIS_LOOP_76_9_fu_1001.mux_32_32_1_1_U1210", "Parent" : "469"},
	{"ID" : "473", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.KBEST_U0.grp_KBEST_Pipeline_VITIS_LOOP_75_8_VITIS_LOOP_76_9_fu_1001.mux_32_32_1_1_U1211", "Parent" : "469"},
	{"ID" : "474", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.KBEST_U0.grp_KBEST_Pipeline_VITIS_LOOP_75_8_VITIS_LOOP_76_9_fu_1001.mux_32_32_1_1_U1212", "Parent" : "469"},
	{"ID" : "475", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.KBEST_U0.grp_KBEST_Pipeline_VITIS_LOOP_75_8_VITIS_LOOP_76_9_fu_1001.mux_32_32_1_1_U1213", "Parent" : "469"},
	{"ID" : "476", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.KBEST_U0.grp_KBEST_Pipeline_VITIS_LOOP_75_8_VITIS_LOOP_76_9_fu_1001.mux_32_32_1_1_U1214", "Parent" : "469"},
	{"ID" : "477", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.KBEST_U0.grp_KBEST_Pipeline_VITIS_LOOP_75_8_VITIS_LOOP_76_9_fu_1001.mux_32_32_1_1_U1215", "Parent" : "469"},
	{"ID" : "478", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.KBEST_U0.grp_KBEST_Pipeline_VITIS_LOOP_75_8_VITIS_LOOP_76_9_fu_1001.mux_32_32_1_1_U1216", "Parent" : "469"},
	{"ID" : "479", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.KBEST_U0.grp_KBEST_Pipeline_VITIS_LOOP_75_8_VITIS_LOOP_76_9_fu_1001.mux_32_32_1_1_U1217", "Parent" : "469"},
	{"ID" : "480", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.KBEST_U0.grp_KBEST_Pipeline_VITIS_LOOP_75_8_VITIS_LOOP_76_9_fu_1001.mux_32_32_1_1_U1218", "Parent" : "469"},
	{"ID" : "481", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.KBEST_U0.grp_KBEST_Pipeline_VITIS_LOOP_75_8_VITIS_LOOP_76_9_fu_1001.mux_32_32_1_1_U1219", "Parent" : "469"},
	{"ID" : "482", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.KBEST_U0.grp_KBEST_Pipeline_VITIS_LOOP_75_8_VITIS_LOOP_76_9_fu_1001.mux_32_32_1_1_U1220", "Parent" : "469"},
	{"ID" : "483", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.KBEST_U0.grp_KBEST_Pipeline_VITIS_LOOP_75_8_VITIS_LOOP_76_9_fu_1001.mux_32_32_1_1_U1221", "Parent" : "469"},
	{"ID" : "484", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.KBEST_U0.grp_KBEST_Pipeline_VITIS_LOOP_75_8_VITIS_LOOP_76_9_fu_1001.mux_32_32_1_1_U1222", "Parent" : "469"},
	{"ID" : "485", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.KBEST_U0.grp_KBEST_Pipeline_VITIS_LOOP_75_8_VITIS_LOOP_76_9_fu_1001.mux_32_32_1_1_U1223", "Parent" : "469"},
	{"ID" : "486", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.KBEST_U0.grp_KBEST_Pipeline_VITIS_LOOP_75_8_VITIS_LOOP_76_9_fu_1001.flow_control_loop_pipe_sequential_init_U", "Parent" : "469"},
	{"ID" : "487", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.KBEST_U0.grp_KBEST_Pipeline_VITIS_LOOP_94_11_fu_1070", "Parent" : "446", "Child" : ["488", "489", "490"],
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
	{"ID" : "488", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.KBEST_U0.grp_KBEST_Pipeline_VITIS_LOOP_94_11_fu_1070.mux_84_32_1_1_U1290", "Parent" : "487"},
	{"ID" : "489", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.KBEST_U0.grp_KBEST_Pipeline_VITIS_LOOP_94_11_fu_1070.mux_84_32_1_1_U1291", "Parent" : "487"},
	{"ID" : "490", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.KBEST_U0.grp_KBEST_Pipeline_VITIS_LOOP_94_11_fu_1070.flow_control_loop_pipe_sequential_init_U", "Parent" : "487"},
	{"ID" : "491", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.KBEST_U0.am_submul_16s_16s_24_4_1_U1312", "Parent" : "446"},
	{"ID" : "492", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DeModulation_U0", "Parent" : "0", "Child" : ["493"],
		"CDFG" : "DeModulation",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "130", "EstimateLatencyMax" : "130",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "446",
		"StartFifo" : "start_for_DeModulation_U0_U",
		"Port" : [
			{"Name" : "KB_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["446"], "DependentChan" : "548", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "KB_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "demod_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["494"], "DependentChan" : "549", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "demod_out_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_14_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "493", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.DeModulation_U0.flow_control_loop_pipe_U", "Parent" : "492"},
	{"ID" : "494", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.AES_En_De_128_U0", "Parent" : "0", "Child" : ["495", "496", "497", "498", "499", "506"],
		"CDFG" : "AES_En_De_128",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "93", "EstimateLatencyMax" : "12514",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "492",
		"StartFifo" : "start_for_AES_En_De_128_U0_U",
		"Port" : [
			{"Name" : "out_data", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "out_data_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "key_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "S29", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "499", "SubInstance" : "grp_extendKey_fu_633", "Port" : "S29", "Inst_start_state" : "19", "Inst_end_state" : "20"}]},
			{"Name" : "Rcon", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "499", "SubInstance" : "grp_extendKey_fu_633", "Port" : "Rcon", "Inst_start_state" : "19", "Inst_end_state" : "20"}]},
			{"Name" : "S2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "506", "SubInstance" : "grp_deAes_return_fu_643", "Port" : "S2", "Inst_start_state" : "21", "Inst_end_state" : "22"}]},
			{"Name" : "demod_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["492"], "DependentChan" : "549", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "demod_out_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_508_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "35", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state19", "ap_ST_fsm_state35"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "495", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.AES_En_De_128_U0.key_V_U", "Parent" : "494"},
	{"ID" : "496", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.AES_En_De_128_U0.temp_key_U", "Parent" : "494"},
	{"ID" : "497", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.AES_En_De_128_U0.w_U", "Parent" : "494"},
	{"ID" : "498", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.AES_En_De_128_U0.key_char_U", "Parent" : "494"},
	{"ID" : "499", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.AES_En_De_128_U0.grp_extendKey_fu_633", "Parent" : "494", "Child" : ["500", "502"],
		"CDFG" : "extendKey",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "255", "EstimateLatencyMax" : "255",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "key", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "500", "SubInstance" : "grp_extendKey_Pipeline_extendKey_label5_fu_12", "Port" : "key", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "w", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "500", "SubInstance" : "grp_extendKey_Pipeline_extendKey_label5_fu_12", "Port" : "w", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "502", "SubInstance" : "grp_extendKey_Pipeline_extendKey_label0_fu_20", "Port" : "w", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "S29", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "502", "SubInstance" : "grp_extendKey_Pipeline_extendKey_label0_fu_20", "Port" : "S29", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "Rcon", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "502", "SubInstance" : "grp_extendKey_Pipeline_extendKey_label0_fu_20", "Port" : "Rcon", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "500", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.AES_En_De_128_U0.grp_extendKey_fu_633.grp_extendKey_Pipeline_extendKey_label5_fu_12", "Parent" : "499", "Child" : ["501"],
		"CDFG" : "extendKey_Pipeline_extendKey_label5",
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
			{"Name" : "key", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "extendKey_label5", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "501", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.AES_En_De_128_U0.grp_extendKey_fu_633.grp_extendKey_Pipeline_extendKey_label5_fu_12.flow_control_loop_pipe_sequential_init_U", "Parent" : "500"},
	{"ID" : "502", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.AES_En_De_128_U0.grp_extendKey_fu_633.grp_extendKey_Pipeline_extendKey_label0_fu_20", "Parent" : "499", "Child" : ["503", "504", "505"],
		"CDFG" : "extendKey_Pipeline_extendKey_label0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "242", "EstimateLatencyMax" : "242",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "w", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "S29", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Rcon", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "extendKey_label0", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_pp0_stage1", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage1_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "503", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.AES_En_De_128_U0.grp_extendKey_fu_633.grp_extendKey_Pipeline_extendKey_label0_fu_20.S29_U", "Parent" : "502"},
	{"ID" : "504", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.AES_En_De_128_U0.grp_extendKey_fu_633.grp_extendKey_Pipeline_extendKey_label0_fu_20.Rcon_U", "Parent" : "502"},
	{"ID" : "505", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.AES_En_De_128_U0.grp_extendKey_fu_633.grp_extendKey_Pipeline_extendKey_label0_fu_20.flow_control_loop_pipe_sequential_init_U", "Parent" : "502"},
	{"ID" : "506", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.AES_En_De_128_U0.grp_deAes_return_fu_643", "Parent" : "494", "Child" : ["507", "508", "509", "510", "513", "515", "529", "531"],
		"CDFG" : "deAes_return",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "543", "EstimateLatencyMax" : "543",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read8", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read9", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read10", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read11", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read12", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read13", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read14", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read15", "Type" : "None", "Direction" : "I"},
			{"Name" : "w", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "531", "SubInstance" : "grp_deAes_return_Pipeline_addRoundKey_label010_fu_349", "Port" : "w", "Inst_start_state" : "18", "Inst_end_state" : "19"},
					{"ID" : "515", "SubInstance" : "grp_deAes_return_Pipeline_deAes_return_label22_fu_332", "Port" : "w", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "513", "SubInstance" : "grp_deAes_return_Pipeline_addRoundKey_label0_fu_325", "Port" : "w", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "S2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "515", "SubInstance" : "grp_deAes_return_Pipeline_deAes_return_label22_fu_332", "Port" : "S2", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "529", "SubInstance" : "grp_deAes_return_Pipeline_deSubBytes_label1_deSubBytes_label13_fu_342", "Port" : "S2", "Inst_start_state" : "7", "Inst_end_state" : "8"}]}]},
	{"ID" : "507", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.AES_En_De_128_U0.grp_deAes_return_fu_643.S2_U", "Parent" : "506"},
	{"ID" : "508", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.AES_En_De_128_U0.grp_deAes_return_fu_643.cArray_U", "Parent" : "506"},
	{"ID" : "509", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.AES_En_De_128_U0.grp_deAes_return_fu_643.wArray_U", "Parent" : "506"},
	{"ID" : "510", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.AES_En_De_128_U0.grp_deAes_return_fu_643.grp_deAes_return_Pipeline_convertToIntArray_label0_convertToIntArray_label1_fu_287", "Parent" : "506", "Child" : ["511", "512"],
		"CDFG" : "deAes_return_Pipeline_convertToIntArray_label0_convertToIntArray_label1",
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
			{"Name" : "cArray", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read8", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read9", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read10", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read11", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read12", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read13", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read14", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read15", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "convertToIntArray_label0_convertToIntArray_label1", "PipelineType" : "NotSupport"}]},
	{"ID" : "511", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.AES_En_De_128_U0.grp_deAes_return_fu_643.grp_deAes_return_Pipeline_convertToIntArray_label0_convertToIntArray_label1_fu_287.mux_165_8_1_1_U1322", "Parent" : "510"},
	{"ID" : "512", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.AES_En_De_128_U0.grp_deAes_return_fu_643.grp_deAes_return_Pipeline_convertToIntArray_label0_convertToIntArray_label1_fu_287.flow_control_loop_pipe_sequential_init_U", "Parent" : "510"},
	{"ID" : "513", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.AES_En_De_128_U0.grp_deAes_return_fu_643.grp_deAes_return_Pipeline_addRoundKey_label0_fu_325", "Parent" : "506", "Child" : ["514"],
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
	{"ID" : "514", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.AES_En_De_128_U0.grp_deAes_return_fu_643.grp_deAes_return_Pipeline_addRoundKey_label0_fu_325.flow_control_loop_pipe_sequential_init_U", "Parent" : "513"},
	{"ID" : "515", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.AES_En_De_128_U0.grp_deAes_return_fu_643.grp_deAes_return_Pipeline_deAes_return_label22_fu_332", "Parent" : "506", "Child" : ["516", "522", "528"],
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
					{"ID" : "516", "SubInstance" : "grp_deMixColumns_fu_542", "Port" : "array_r", "Inst_start_state" : "10", "Inst_end_state" : "25"}]},
			{"Name" : "cArray", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "522", "SubInstance" : "grp_deMixColumns_fu_548", "Port" : "array_r", "Inst_start_state" : "19", "Inst_end_state" : "34"}]},
			{"Name" : "w", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "S2", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "deAes_return_label22", "PipelineType" : "NotSupport"}]},
	{"ID" : "516", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.AES_En_De_128_U0.grp_deAes_return_fu_643.grp_deAes_return_Pipeline_deAes_return_label22_fu_332.grp_deMixColumns_fu_542", "Parent" : "515", "Child" : ["517", "518", "519", "520", "521"],
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
	{"ID" : "517", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.AES_En_De_128_U0.grp_deAes_return_fu_643.grp_deAes_return_Pipeline_deAes_return_label22_fu_332.grp_deMixColumns_fu_542.grp_GFMul_fu_197", "Parent" : "516",
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
	{"ID" : "518", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.AES_En_De_128_U0.grp_deAes_return_fu_643.grp_deAes_return_Pipeline_deAes_return_label22_fu_332.grp_deMixColumns_fu_542.grp_GFMul_fu_205", "Parent" : "516",
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
	{"ID" : "519", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.AES_En_De_128_U0.grp_deAes_return_fu_643.grp_deAes_return_Pipeline_deAes_return_label22_fu_332.grp_deMixColumns_fu_542.grp_GFMul_fu_213", "Parent" : "516",
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
	{"ID" : "520", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.AES_En_De_128_U0.grp_deAes_return_fu_643.grp_deAes_return_Pipeline_deAes_return_label22_fu_332.grp_deMixColumns_fu_542.grp_GFMul_fu_221", "Parent" : "516",
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
	{"ID" : "521", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.AES_En_De_128_U0.grp_deAes_return_fu_643.grp_deAes_return_Pipeline_deAes_return_label22_fu_332.grp_deMixColumns_fu_542.grp_GFMul_fu_229", "Parent" : "516",
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
	{"ID" : "522", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.AES_En_De_128_U0.grp_deAes_return_fu_643.grp_deAes_return_Pipeline_deAes_return_label22_fu_332.grp_deMixColumns_fu_548", "Parent" : "515", "Child" : ["523", "524", "525", "526", "527"],
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
	{"ID" : "523", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.AES_En_De_128_U0.grp_deAes_return_fu_643.grp_deAes_return_Pipeline_deAes_return_label22_fu_332.grp_deMixColumns_fu_548.grp_GFMul_fu_197", "Parent" : "522",
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
	{"ID" : "524", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.AES_En_De_128_U0.grp_deAes_return_fu_643.grp_deAes_return_Pipeline_deAes_return_label22_fu_332.grp_deMixColumns_fu_548.grp_GFMul_fu_205", "Parent" : "522",
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
	{"ID" : "525", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.AES_En_De_128_U0.grp_deAes_return_fu_643.grp_deAes_return_Pipeline_deAes_return_label22_fu_332.grp_deMixColumns_fu_548.grp_GFMul_fu_213", "Parent" : "522",
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
	{"ID" : "526", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.AES_En_De_128_U0.grp_deAes_return_fu_643.grp_deAes_return_Pipeline_deAes_return_label22_fu_332.grp_deMixColumns_fu_548.grp_GFMul_fu_221", "Parent" : "522",
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
	{"ID" : "527", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.AES_En_De_128_U0.grp_deAes_return_fu_643.grp_deAes_return_Pipeline_deAes_return_label22_fu_332.grp_deMixColumns_fu_548.grp_GFMul_fu_229", "Parent" : "522",
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
	{"ID" : "528", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.AES_En_De_128_U0.grp_deAes_return_fu_643.grp_deAes_return_Pipeline_deAes_return_label22_fu_332.flow_control_loop_pipe_sequential_init_U", "Parent" : "515"},
	{"ID" : "529", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.AES_En_De_128_U0.grp_deAes_return_fu_643.grp_deAes_return_Pipeline_deSubBytes_label1_deSubBytes_label13_fu_342", "Parent" : "506", "Child" : ["530"],
		"CDFG" : "deAes_return_Pipeline_deSubBytes_label1_deSubBytes_label13",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "19", "EstimateLatencyMax" : "19",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "cArray", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "S2", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "deSubBytes_label1_deSubBytes_label13", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "530", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.AES_En_De_128_U0.grp_deAes_return_fu_643.grp_deAes_return_Pipeline_deSubBytes_label1_deSubBytes_label13_fu_342.flow_control_loop_pipe_sequential_init_U", "Parent" : "529"},
	{"ID" : "531", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.AES_En_De_128_U0.grp_deAes_return_fu_643.grp_deAes_return_Pipeline_addRoundKey_label010_fu_349", "Parent" : "506", "Child" : ["532"],
		"CDFG" : "deAes_return_Pipeline_addRoundKey_label010",
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
	{"ID" : "532", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.AES_En_De_128_U0.grp_deAes_return_fu_643.grp_deAes_return_Pipeline_addRoundKey_label010_fu_349.flow_control_loop_pipe_sequential_init_U", "Parent" : "531"},
	{"ID" : "533", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SNR_c_U", "Parent" : "0"},
	{"ID" : "534", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.AES_EN_out_U", "Parent" : "0"},
	{"ID" : "535", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.xi_U", "Parent" : "0"},
	{"ID" : "536", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.xr_U", "Parent" : "0"},
	{"ID" : "537", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.H_real_U", "Parent" : "0"},
	{"ID" : "538", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.H_imag_U", "Parent" : "0"},
	{"ID" : "539", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.H_real_spl0_U", "Parent" : "0"},
	{"ID" : "540", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.H_real_spl1_U", "Parent" : "0"},
	{"ID" : "541", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.H_imag_spl0_U", "Parent" : "0"},
	{"ID" : "542", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.H_imag_spl1_U", "Parent" : "0"},
	{"ID" : "543", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.R_U", "Parent" : "0"},
	{"ID" : "544", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Q_U", "Parent" : "0"},
	{"ID" : "545", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.channel_out_U", "Parent" : "0"},
	{"ID" : "546", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.noise_out_U", "Parent" : "0"},
	{"ID" : "547", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MULQ_out_U", "Parent" : "0"},
	{"ID" : "548", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.KB_out_U", "Parent" : "0"},
	{"ID" : "549", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.demod_out_U", "Parent" : "0"},
	{"ID" : "550", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_AWGN_1_U0_U", "Parent" : "0"},
	{"ID" : "551", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_Modulation_U0_U", "Parent" : "0"},
	{"ID" : "552", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_channel_mult_U0_U", "Parent" : "0"},
	{"ID" : "553", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_split_U0_U", "Parent" : "0"},
	{"ID" : "554", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_split_1_U0_U", "Parent" : "0"},
	{"ID" : "555", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_QRD_U0_U", "Parent" : "0"},
	{"ID" : "556", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_KBEST_U0_U", "Parent" : "0"},
	{"ID" : "557", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_matrix_mult_U0_U", "Parent" : "0"},
	{"ID" : "558", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_DeModulation_U0_U", "Parent" : "0"},
	{"ID" : "559", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_AES_En_De_128_U0_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	TOP {
		in_data {Type I LastRead 16 FirstWrite -1}
		out_data {Type O LastRead -1 FirstWrite 19}
		SNR {Type I LastRead 0 FirstWrite -1}
		key_V31 {Type I LastRead -1 FirstWrite -1}
		S29 {Type I LastRead -1 FirstWrite -1}
		Rcon {Type I LastRead -1 FirstWrite -1}
		S {Type I LastRead -1 FirstWrite -1}
		AES_EN_out {Type IO LastRead -1 FirstWrite -1}
		xi {Type IO LastRead -1 FirstWrite -1}
		xr {Type IO LastRead -1 FirstWrite -1}
		H_real {Type IO LastRead -1 FirstWrite -1}
		H_imag {Type IO LastRead -1 FirstWrite -1}
		H_real_spl0 {Type IO LastRead -1 FirstWrite -1}
		H_real_spl1 {Type IO LastRead -1 FirstWrite -1}
		H_imag_spl0 {Type IO LastRead -1 FirstWrite -1}
		H_imag_spl1 {Type IO LastRead -1 FirstWrite -1}
		cordic_phase_V30 {Type I LastRead -1 FirstWrite -1}
		cordic_phase_V {Type I LastRead -1 FirstWrite -1}
		R {Type IO LastRead -1 FirstWrite -1}
		Q {Type IO LastRead -1 FirstWrite -1}
		channel_out {Type IO LastRead -1 FirstWrite -1}
		noise_out {Type IO LastRead -1 FirstWrite -1}
		MULQ_out {Type IO LastRead -1 FirstWrite -1}
		KB_out {Type IO LastRead -1 FirstWrite -1}
		demod_out {Type IO LastRead -1 FirstWrite -1}
		key_V {Type I LastRead -1 FirstWrite -1}
		S2 {Type I LastRead -1 FirstWrite -1}}
	entry_proc {
		SNR {Type I LastRead 0 FirstWrite -1}
		SNR_c {Type O LastRead -1 FirstWrite 0}}
	AES_En_De27 {
		in_data {Type I LastRead 16 FirstWrite -1}
		key_V31 {Type I LastRead -1 FirstWrite -1}
		S29 {Type I LastRead -1 FirstWrite -1}
		Rcon {Type I LastRead -1 FirstWrite -1}
		S {Type I LastRead -1 FirstWrite -1}
		AES_EN_out {Type O LastRead -1 FirstWrite 19}}
	extendKey {
		key {Type I LastRead 2 FirstWrite -1}
		w {Type IO LastRead 2 FirstWrite 2}
		S29 {Type I LastRead -1 FirstWrite -1}
		Rcon {Type I LastRead -1 FirstWrite -1}}
	extendKey_Pipeline_extendKey_label5 {
		key {Type I LastRead 2 FirstWrite -1}
		w {Type O LastRead -1 FirstWrite 2}}
	extendKey_Pipeline_extendKey_label0 {
		w {Type IO LastRead 2 FirstWrite 2}
		S29 {Type I LastRead -1 FirstWrite -1}
		Rcon {Type I LastRead -1 FirstWrite -1}}
	aes_return {
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		p_read5 {Type I LastRead 0 FirstWrite -1}
		p_read6 {Type I LastRead 0 FirstWrite -1}
		p_read7 {Type I LastRead 0 FirstWrite -1}
		p_read8 {Type I LastRead 0 FirstWrite -1}
		p_read9 {Type I LastRead 0 FirstWrite -1}
		p_read10 {Type I LastRead 0 FirstWrite -1}
		p_read11 {Type I LastRead 0 FirstWrite -1}
		p_read12 {Type I LastRead 0 FirstWrite -1}
		p_read13 {Type I LastRead 0 FirstWrite -1}
		p_read14 {Type I LastRead 0 FirstWrite -1}
		p_read15 {Type I LastRead 0 FirstWrite -1}
		w {Type I LastRead 2 FirstWrite -1}
		S {Type I LastRead -1 FirstWrite -1}}
	aes_return_Pipeline_convertToIntArray_label0_convertToIntArray_label1 {
		pArray {Type O LastRead -1 FirstWrite 0}
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		p_read5 {Type I LastRead 0 FirstWrite -1}
		p_read6 {Type I LastRead 0 FirstWrite -1}
		p_read7 {Type I LastRead 0 FirstWrite -1}
		p_read8 {Type I LastRead 0 FirstWrite -1}
		p_read9 {Type I LastRead 0 FirstWrite -1}
		p_read10 {Type I LastRead 0 FirstWrite -1}
		p_read11 {Type I LastRead 0 FirstWrite -1}
		p_read12 {Type I LastRead 0 FirstWrite -1}
		p_read13 {Type I LastRead 0 FirstWrite -1}
		p_read14 {Type I LastRead 0 FirstWrite -1}
		p_read15 {Type I LastRead 0 FirstWrite -1}}
	addRoundKey {
		array_r {Type IO LastRead 8 FirstWrite 8}
		round {Type I LastRead 0 FirstWrite -1}
		w {Type I LastRead 2 FirstWrite -1}}
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
		w {Type I LastRead 2 FirstWrite -1}}
	aes_return_Pipeline_subBytes_label0_subBytes_label7 {
		pArray {Type IO LastRead 0 FirstWrite 2}
		S {Type I LastRead 1 FirstWrite -1}}
	Modulation {
		AES_EN_out {Type I LastRead 1 FirstWrite -1}
		xi {Type O LastRead -1 FirstWrite 2}
		xr {Type O LastRead -1 FirstWrite 2}}
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
		this_mt_odd_1 {Type O LastRead -1 FirstWrite 1}}
	split {
		H_real {Type I LastRead 1 FirstWrite -1}
		H_real_spl0 {Type O LastRead -1 FirstWrite 1}
		H_real_spl1 {Type O LastRead -1 FirstWrite 1}}
	split_1 {
		H_imag {Type I LastRead 1 FirstWrite -1}
		H_imag_spl0 {Type O LastRead -1 FirstWrite 1}
		H_imag_spl1 {Type O LastRead -1 FirstWrite 1}}
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
		Q {Type O LastRead -1 FirstWrite 10}}
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
		channel_out {Type O LastRead -1 FirstWrite 12}}
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
		noise_out {Type O LastRead -1 FirstWrite 49}}
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
		MULQ_out {Type O LastRead -1 FirstWrite 13}}
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
		x_guess_59 {Type I LastRead 0 FirstWrite -1}}
	DeModulation {
		KB_out {Type I LastRead 8 FirstWrite -1}
		demod_out {Type O LastRead -1 FirstWrite 8}}
	AES_En_De_128 {
		out_data {Type O LastRead -1 FirstWrite 19}
		key_V {Type I LastRead -1 FirstWrite -1}
		S29 {Type I LastRead -1 FirstWrite -1}
		Rcon {Type I LastRead -1 FirstWrite -1}
		S2 {Type I LastRead -1 FirstWrite -1}
		demod_out {Type I LastRead 16 FirstWrite -1}}
	extendKey {
		key {Type I LastRead 2 FirstWrite -1}
		w {Type IO LastRead 2 FirstWrite 2}
		S29 {Type I LastRead -1 FirstWrite -1}
		Rcon {Type I LastRead -1 FirstWrite -1}}
	extendKey_Pipeline_extendKey_label5 {
		key {Type I LastRead 2 FirstWrite -1}
		w {Type O LastRead -1 FirstWrite 2}}
	extendKey_Pipeline_extendKey_label0 {
		w {Type IO LastRead 2 FirstWrite 2}
		S29 {Type I LastRead -1 FirstWrite -1}
		Rcon {Type I LastRead -1 FirstWrite -1}}
	deAes_return {
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		p_read5 {Type I LastRead 0 FirstWrite -1}
		p_read6 {Type I LastRead 0 FirstWrite -1}
		p_read7 {Type I LastRead 0 FirstWrite -1}
		p_read8 {Type I LastRead 0 FirstWrite -1}
		p_read9 {Type I LastRead 0 FirstWrite -1}
		p_read10 {Type I LastRead 0 FirstWrite -1}
		p_read11 {Type I LastRead 0 FirstWrite -1}
		p_read12 {Type I LastRead 0 FirstWrite -1}
		p_read13 {Type I LastRead 0 FirstWrite -1}
		p_read14 {Type I LastRead 0 FirstWrite -1}
		p_read15 {Type I LastRead 0 FirstWrite -1}
		w {Type I LastRead 2 FirstWrite -1}
		S2 {Type I LastRead -1 FirstWrite -1}}
	deAes_return_Pipeline_convertToIntArray_label0_convertToIntArray_label1 {
		cArray {Type O LastRead -1 FirstWrite 0}
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		p_read5 {Type I LastRead 0 FirstWrite -1}
		p_read6 {Type I LastRead 0 FirstWrite -1}
		p_read7 {Type I LastRead 0 FirstWrite -1}
		p_read8 {Type I LastRead 0 FirstWrite -1}
		p_read9 {Type I LastRead 0 FirstWrite -1}
		p_read10 {Type I LastRead 0 FirstWrite -1}
		p_read11 {Type I LastRead 0 FirstWrite -1}
		p_read12 {Type I LastRead 0 FirstWrite -1}
		p_read13 {Type I LastRead 0 FirstWrite -1}
		p_read14 {Type I LastRead 0 FirstWrite -1}
		p_read15 {Type I LastRead 0 FirstWrite -1}}
	deAes_return_Pipeline_addRoundKey_label0 {
		cArray {Type IO LastRead 2 FirstWrite 2}
		w {Type I LastRead 0 FirstWrite -1}}
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
		s {Type I LastRead 0 FirstWrite -1}}
	deAes_return_Pipeline_deSubBytes_label1_deSubBytes_label13 {
		cArray {Type IO LastRead 0 FirstWrite 2}
		S2 {Type I LastRead 1 FirstWrite -1}}
	deAes_return_Pipeline_addRoundKey_label010 {
		cArray {Type IO LastRead 2 FirstWrite 2}
		w {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "13134", "Max" : "14054"}
	, {"Name" : "Interval", "Min" : "7558", "Max" : "13958"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	in_data { ap_fifo {  { in_data_dout fifo_data 0 8 }  { in_data_empty_n fifo_status 0 1 }  { in_data_read fifo_update 1 1 } } }
	out_data { ap_fifo {  { out_data_din fifo_data 1 8 }  { out_data_full_n fifo_status 0 1 }  { out_data_write fifo_update 1 1 } } }
	SNR { ap_none {  { SNR in_data 0 16 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
	in_data { fifo_read 1 no_conditional }
	out_data { fifo_write 1 no_conditional }
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}

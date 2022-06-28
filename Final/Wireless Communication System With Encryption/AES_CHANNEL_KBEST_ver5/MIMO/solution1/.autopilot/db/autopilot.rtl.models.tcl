set SynModuleInfo {
  {SRCNAME entry_proc MODELNAME entry_proc RTLNAME TOP_entry_proc}
  {SRCNAME extendKey_Pipeline_extendKey_label5 MODELNAME extendKey_Pipeline_extendKey_label5 RTLNAME TOP_extendKey_Pipeline_extendKey_label5
    SUBMODULES {
      {MODELNAME TOP_flow_control_loop_pipe_sequential_init RTLNAME TOP_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME TOP_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME extendKey_Pipeline_extendKey_label0 MODELNAME extendKey_Pipeline_extendKey_label0 RTLNAME TOP_extendKey_Pipeline_extendKey_label0
    SUBMODULES {
      {MODELNAME TOP_extendKey_Pipeline_extendKey_label0_S29_ROM_AUTO_1R RTLNAME TOP_extendKey_Pipeline_extendKey_label0_S29_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME TOP_extendKey_Pipeline_extendKey_label0_Rcon_ROM_AUTO_1R RTLNAME TOP_extendKey_Pipeline_extendKey_label0_Rcon_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME extendKey MODELNAME extendKey RTLNAME TOP_extendKey}
  {SRCNAME aes_return_Pipeline_convertToIntArray_label0_convertToIntArray_label1 MODELNAME aes_return_Pipeline_convertToIntArray_label0_convertToIntArray_label1 RTLNAME TOP_aes_return_Pipeline_convertToIntArray_label0_convertToIntArray_label1
    SUBMODULES {
      {MODELNAME TOP_mux_165_8_1_1 RTLNAME TOP_mux_165_8_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME addRoundKey MODELNAME addRoundKey RTLNAME TOP_addRoundKey}
  {SRCNAME GFMul MODELNAME GFMul RTLNAME TOP_GFMul}
  {SRCNAME aes_return_Pipeline_aes_return_label12 MODELNAME aes_return_Pipeline_aes_return_label12 RTLNAME TOP_aes_return_Pipeline_aes_return_label12}
  {SRCNAME aes_return_Pipeline_subBytes_label0_subBytes_label7 MODELNAME aes_return_Pipeline_subBytes_label0_subBytes_label7 RTLNAME TOP_aes_return_Pipeline_subBytes_label0_subBytes_label7}
  {SRCNAME aes_return MODELNAME aes_return RTLNAME TOP_aes_return
    SUBMODULES {
      {MODELNAME TOP_aes_return_pArray_RAM_AUTO_1R1W RTLNAME TOP_aes_return_pArray_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME AES_En_De27 MODELNAME AES_En_De27 RTLNAME TOP_AES_En_De27
    SUBMODULES {
      {MODELNAME TOP_AES_En_De27_key_V31_ROM_AUTO_1R RTLNAME TOP_AES_En_De27_key_V31_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME TOP_AES_En_De27_temp_key_RAM_AUTO_1R1W RTLNAME TOP_AES_En_De27_temp_key_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME TOP_AES_En_De27_w_RAM_AUTO_1R1W RTLNAME TOP_AES_En_De27_w_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME TOP_AES_En_De27_key_char_RAM_AUTO_1R1W RTLNAME TOP_AES_En_De27_key_char_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME Modulation MODELNAME Modulation RTLNAME TOP_Modulation
    SUBMODULES {
      {MODELNAME TOP_flow_control_loop_pipe RTLNAME TOP_flow_control_loop_pipe BINDTYPE interface TYPE internal_upc_flow_control INSTNAME TOP_flow_control_loop_pipe_U}
    }
  }
  {SRCNAME seedInitialization_Pipeline_SEED_INIT_LOOP MODELNAME seedInitialization_Pipeline_SEED_INIT_LOOP RTLNAME TOP_seedInitialization_Pipeline_SEED_INIT_LOOP
    SUBMODULES {
      {MODELNAME TOP_mul_32s_32ns_32_1_1 RTLNAME TOP_mul_32s_32ns_32_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME seedInitialization MODELNAME seedInitialization RTLNAME TOP_seedInitialization}
  {SRCNAME Rayleigh.1 MODELNAME Rayleigh_1 RTLNAME TOP_Rayleigh_1
    SUBMODULES {
      {MODELNAME TOP_dadd_64ns_64ns_64_2_no_dsp_1 RTLNAME TOP_dadd_64ns_64ns_64_2_no_dsp_1 BINDTYPE op TYPE dadd IMPL fabric LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME TOP_dsub_64ns_64ns_64_2_no_dsp_1 RTLNAME TOP_dsub_64ns_64ns_64_2_no_dsp_1 BINDTYPE op TYPE dsub IMPL fabric LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME TOP_dmul_64ns_64ns_64_2_med_dsp_1 RTLNAME TOP_dmul_64ns_64ns_64_2_med_dsp_1 BINDTYPE op TYPE dmul IMPL meddsp LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME TOP_ddiv_64ns_64ns_64_7_no_dsp_1 RTLNAME TOP_ddiv_64ns_64ns_64_7_no_dsp_1 BINDTYPE op TYPE ddiv IMPL fabric LATENCY 6 ALLOW_PRAGMA 1}
      {MODELNAME TOP_dcmp_64ns_64ns_1_1_no_dsp_1 RTLNAME TOP_dcmp_64ns_64ns_1_1_no_dsp_1 BINDTYPE op TYPE dcmp IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME TOP_dsqrt_64ns_64ns_64_7_no_dsp_1 RTLNAME TOP_dsqrt_64ns_64ns_64_7_no_dsp_1 BINDTYPE op TYPE dsqrt IMPL fabric LATENCY 6 ALLOW_PRAGMA 1}
      {MODELNAME TOP_dlog_64ns_64ns_64_5_med_dsp_1 RTLNAME TOP_dlog_64ns_64ns_64_5_med_dsp_1 BINDTYPE op TYPE dlog IMPL meddsp LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME TOP_mul_mul_16s_8ns_24_4_1 RTLNAME TOP_mul_mul_16s_8ns_24_4_1 BINDTYPE op TYPE mul IMPL dsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME TOP_Rayleigh_1_rngMT19937ICN_uniformRNG_mt_odd_0_V_RAM_AUTO_1R1W RTLNAME TOP_Rayleigh_1_rngMT19937ICN_uniformRNG_mt_odd_0_V_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME TOP_Rayleigh_1_rngMT19937ICN_1_i_RAM_AUTO_0R0W RTLNAME TOP_Rayleigh_1_rngMT19937ICN_1_i_RAM_AUTO_0R0W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME split MODELNAME split RTLNAME TOP_split}
  {SRCNAME split.1 MODELNAME split_1 RTLNAME TOP_split_1}
  {SRCNAME QRD_Pipeline_CHANNEL2REAL MODELNAME QRD_Pipeline_CHANNEL2REAL RTLNAME TOP_QRD_Pipeline_CHANNEL2REAL}
  {SRCNAME CORDIC_V_Pipeline_VITIS_LOOP_94_2 MODELNAME CORDIC_V_Pipeline_VITIS_LOOP_94_2 RTLNAME TOP_CORDIC_V_Pipeline_VITIS_LOOP_94_2}
  {SRCNAME CORDIC_V MODELNAME CORDIC_V RTLNAME TOP_CORDIC_V
    SUBMODULES {
      {MODELNAME TOP_mul_mul_16s_8ns_25_4_1 RTLNAME TOP_mul_mul_16s_8ns_25_4_1 BINDTYPE op TYPE mul IMPL dsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME TOP_CORDIC_V_cordic_phase_V30_ROM_AUTO_1R RTLNAME TOP_CORDIC_V_cordic_phase_V30_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME CORDIC_R_Pipeline_VITIS_LOOP_32_2 MODELNAME CORDIC_R_Pipeline_VITIS_LOOP_32_2 RTLNAME TOP_CORDIC_R_Pipeline_VITIS_LOOP_32_2}
  {SRCNAME CORDIC_R MODELNAME CORDIC_R RTLNAME TOP_CORDIC_R}
  {SRCNAME QRD_Pipeline_LOOP_01 MODELNAME QRD_Pipeline_LOOP_01 RTLNAME TOP_QRD_Pipeline_LOOP_01
    SUBMODULES {
      {MODELNAME TOP_mux_42_16_1_1 RTLNAME TOP_mux_42_16_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME QRD_Pipeline_LOOP_02_VITIS_LOOP_260_6 MODELNAME QRD_Pipeline_LOOP_02_VITIS_LOOP_260_6 RTLNAME TOP_QRD_Pipeline_LOOP_02_VITIS_LOOP_260_6
    SUBMODULES {
      {MODELNAME TOP_mux_84_16_1_1 RTLNAME TOP_mux_84_16_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME QRD_Pipeline_VITIS_LOOP_277_8 MODELNAME QRD_Pipeline_VITIS_LOOP_277_8 RTLNAME TOP_QRD_Pipeline_VITIS_LOOP_277_8
    SUBMODULES {
      {MODELNAME TOP_mux_83_16_1_1 RTLNAME TOP_mux_83_16_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME TOP_mux_864_16_1_1 RTLNAME TOP_mux_864_16_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME TOP_sdiv_24ns_16s_16_28_1 RTLNAME TOP_sdiv_24ns_16s_16_28_1 BINDTYPE op TYPE sdiv IMPL auto LATENCY 27 ALLOW_PRAGMA 1}
      {MODELNAME TOP_mac_mulsub_16s_16s_24ns_24_4_1 RTLNAME TOP_mac_mulsub_16s_16s_24ns_24_4_1 BINDTYPE op TYPE sub IMPL dsp LATENCY 3 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME QRD_Pipeline_VITIS_LOOP_325_9_VITIS_LOOP_326_10 MODELNAME QRD_Pipeline_VITIS_LOOP_325_9_VITIS_LOOP_326_10 RTLNAME TOP_QRD_Pipeline_VITIS_LOOP_325_9_VITIS_LOOP_326_10
    SUBMODULES {
      {MODELNAME TOP_mul_mul_16s_16s_24_4_1 RTLNAME TOP_mul_mul_16s_16s_24_4_1 BINDTYPE op TYPE add IMPL dsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME TOP_mac_muladd_16s_16s_24ns_24_4_1 RTLNAME TOP_mac_muladd_16s_16s_24ns_24_4_1 BINDTYPE op TYPE add IMPL dsp LATENCY 3 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME QRD MODELNAME QRD RTLNAME TOP_QRD
    SUBMODULES {
      {MODELNAME TOP_mux_74_16_1_1 RTLNAME TOP_mux_74_16_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME TOP_QRD_Y_V_RAM_AUTO_1R1W RTLNAME TOP_QRD_Y_V_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME channel_mult_Pipeline_CHANNEL2REAL MODELNAME channel_mult_Pipeline_CHANNEL2REAL RTLNAME TOP_channel_mult_Pipeline_CHANNEL2REAL}
  {SRCNAME channel_mult_Pipeline_VITIS_LOOP_63_1 MODELNAME channel_mult_Pipeline_VITIS_LOOP_63_1 RTLNAME TOP_channel_mult_Pipeline_VITIS_LOOP_63_1}
  {SRCNAME channel_mult MODELNAME channel_mult RTLNAME TOP_channel_mult}
  {SRCNAME AWGN.1_Pipeline_VITIS_LOOP_15_1 MODELNAME AWGN_1_Pipeline_VITIS_LOOP_15_1 RTLNAME TOP_AWGN_1_Pipeline_VITIS_LOOP_15_1}
  {SRCNAME AWGN.1 MODELNAME AWGN_1 RTLNAME TOP_AWGN_1
    SUBMODULES {
      {MODELNAME TOP_AWGN_1_rngMT19937ICN_1_i_RAM_AUTO_0R0W RTLNAME TOP_AWGN_1_rngMT19937ICN_1_i_RAM_AUTO_0R0W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME matrix_mult_Pipeline_VITIS_LOOP_88_1 MODELNAME matrix_mult_Pipeline_VITIS_LOOP_88_1 RTLNAME TOP_matrix_mult_Pipeline_VITIS_LOOP_88_1}
  {SRCNAME matrix_mult_Pipeline_VITIS_LOOP_94_2 MODELNAME matrix_mult_Pipeline_VITIS_LOOP_94_2 RTLNAME TOP_matrix_mult_Pipeline_VITIS_LOOP_94_2}
  {SRCNAME matrix_mult MODELNAME matrix_mult RTLNAME TOP_matrix_mult
    SUBMODULES {
      {MODELNAME TOP_matrix_mult_Q_TEMP_V_RAM_1WNR_AUTO_1R1W RTLNAME TOP_matrix_mult_Q_TEMP_V_RAM_1WNR_AUTO_1R1W BINDTYPE storage TYPE ram_1wnr IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME KBEST_Pipeline_1 MODELNAME KBEST_Pipeline_1 RTLNAME TOP_KBEST_Pipeline_1}
  {SRCNAME KBEST_Pipeline_VITIS_LOOP_21_1 MODELNAME KBEST_Pipeline_VITIS_LOOP_21_1 RTLNAME TOP_KBEST_Pipeline_VITIS_LOOP_21_1}
  {SRCNAME KBEST_Pipeline_VITIS_LOOP_31_3 MODELNAME KBEST_Pipeline_VITIS_LOOP_31_3 RTLNAME TOP_KBEST_Pipeline_VITIS_LOOP_31_3
    SUBMODULES {
      {MODELNAME TOP_mul_mul_16s_9ns_24_4_1 RTLNAME TOP_mul_mul_16s_9ns_24_4_1 BINDTYPE op TYPE mul IMPL dsp LATENCY 3 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME KBEST_Pipeline_VITIS_LOOP_48_5 MODELNAME KBEST_Pipeline_VITIS_LOOP_48_5 RTLNAME TOP_KBEST_Pipeline_VITIS_LOOP_48_5}
  {SRCNAME KBEST_Pipeline_VITIS_LOOP_57_7 MODELNAME KBEST_Pipeline_VITIS_LOOP_57_7 RTLNAME TOP_KBEST_Pipeline_VITIS_LOOP_57_7
    SUBMODULES {
      {MODELNAME TOP_mux_864_32_1_1 RTLNAME TOP_mux_864_32_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME TOP_mux_42_32_1_1 RTLNAME TOP_mux_42_32_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME KBEST_Pipeline_VITIS_LOOP_75_8_VITIS_LOOP_76_9 MODELNAME KBEST_Pipeline_VITIS_LOOP_75_8_VITIS_LOOP_76_9 RTLNAME TOP_KBEST_Pipeline_VITIS_LOOP_75_8_VITIS_LOOP_76_9
    SUBMODULES {
      {MODELNAME TOP_mux_32_32_1_1 RTLNAME TOP_mux_32_32_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME KBEST_Pipeline_VITIS_LOOP_94_11 MODELNAME KBEST_Pipeline_VITIS_LOOP_94_11 RTLNAME TOP_KBEST_Pipeline_VITIS_LOOP_94_11
    SUBMODULES {
      {MODELNAME TOP_mux_84_32_1_1 RTLNAME TOP_mux_84_32_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME KBEST_Pipeline_VITIS_LOOP_104_12 MODELNAME KBEST_Pipeline_VITIS_LOOP_104_12 RTLNAME TOP_KBEST_Pipeline_VITIS_LOOP_104_12}
  {SRCNAME KBEST MODELNAME KBEST RTLNAME TOP_KBEST
    SUBMODULES {
      {MODELNAME TOP_am_submul_16s_16s_24_4_1 RTLNAME TOP_am_submul_16s_16s_24_4_1 BINDTYPE op TYPE mul IMPL dsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME TOP_KBEST_yy_V_RAM_AUTO_1R1W RTLNAME TOP_KBEST_yy_V_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME TOP_KBEST_PED_V_RAM_AUTO_1R1W RTLNAME TOP_KBEST_PED_V_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME TOP_KBEST_R_V_RAM_AUTO_1R1W RTLNAME TOP_KBEST_R_V_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME DeModulation MODELNAME DeModulation RTLNAME TOP_DeModulation}
  {SRCNAME deAes_return_Pipeline_convertToIntArray_label0_convertToIntArray_label1 MODELNAME deAes_return_Pipeline_convertToIntArray_label0_convertToIntArray_label1 RTLNAME TOP_deAes_return_Pipeline_convertToIntArray_label0_convertToIntArray_label1}
  {SRCNAME deAes_return_Pipeline_addRoundKey_label0 MODELNAME deAes_return_Pipeline_addRoundKey_label0 RTLNAME TOP_deAes_return_Pipeline_addRoundKey_label0}
  {SRCNAME deMixColumns MODELNAME deMixColumns RTLNAME TOP_deMixColumns}
  {SRCNAME deAes_return_Pipeline_deAes_return_label22 MODELNAME deAes_return_Pipeline_deAes_return_label22 RTLNAME TOP_deAes_return_Pipeline_deAes_return_label22}
  {SRCNAME deAes_return_Pipeline_deSubBytes_label1_deSubBytes_label13 MODELNAME deAes_return_Pipeline_deSubBytes_label1_deSubBytes_label13 RTLNAME TOP_deAes_return_Pipeline_deSubBytes_label1_deSubBytes_label13}
  {SRCNAME deAes_return_Pipeline_addRoundKey_label010 MODELNAME deAes_return_Pipeline_addRoundKey_label010 RTLNAME TOP_deAes_return_Pipeline_addRoundKey_label010}
  {SRCNAME deAes_return MODELNAME deAes_return RTLNAME TOP_deAes_return
    SUBMODULES {
      {MODELNAME TOP_deAes_return_S2_ROM_AUTO_1R RTLNAME TOP_deAes_return_S2_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME AES_En_De.128 MODELNAME AES_En_De_128 RTLNAME TOP_AES_En_De_128
    SUBMODULES {
      {MODELNAME TOP_AES_En_De_128_w_RAM_AUTO_1R1W RTLNAME TOP_AES_En_De_128_w_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME TOP MODELNAME TOP RTLNAME TOP IS_TOP 1
    SUBMODULES {
      {MODELNAME TOP_fifo_w16_d5_S RTLNAME TOP_fifo_w16_d5_S BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME TOP_fifo_w8_d2_S RTLNAME TOP_fifo_w8_d2_S BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME TOP_fifo_w16_d128_A RTLNAME TOP_fifo_w16_d128_A BINDTYPE storage TYPE fifo IMPL memory LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME TOP_fifo_w16_d2_S RTLNAME TOP_fifo_w16_d2_S BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME TOP_fifo_w16_d4_S RTLNAME TOP_fifo_w16_d4_S BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME TOP_start_for_AWGN_1_U0 RTLNAME TOP_start_for_AWGN_1_U0 BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME TOP_start_for_Modulation_U0 RTLNAME TOP_start_for_Modulation_U0 BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME TOP_start_for_channel_mult_U0 RTLNAME TOP_start_for_channel_mult_U0 BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME TOP_start_for_split_U0 RTLNAME TOP_start_for_split_U0 BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME TOP_start_for_split_1_U0 RTLNAME TOP_start_for_split_1_U0 BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME TOP_start_for_QRD_U0 RTLNAME TOP_start_for_QRD_U0 BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME TOP_start_for_KBEST_U0 RTLNAME TOP_start_for_KBEST_U0 BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME TOP_start_for_matrix_mult_U0 RTLNAME TOP_start_for_matrix_mult_U0 BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME TOP_start_for_DeModulation_U0 RTLNAME TOP_start_for_DeModulation_U0 BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME TOP_start_for_AES_En_De_128_U0 RTLNAME TOP_start_for_AES_En_De_128_U0 BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
    }
  }
}

-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
-- Version: 2021.2
-- Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity TOP_GFMul is
port (
    ap_ready : OUT STD_LOGIC;
    n : IN STD_LOGIC_VECTOR (3 downto 0);
    s : IN STD_LOGIC_VECTOR (31 downto 0);
    ap_return : OUT STD_LOGIC_VECTOR (31 downto 0) );
end;


architecture behav of TOP_GFMul is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_7 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000111";
    constant ap_const_lv8_1B : STD_LOGIC_VECTOR (7 downto 0) := "00011011";
    constant ap_const_lv4_2 : STD_LOGIC_VECTOR (3 downto 0) := "0010";
    constant ap_const_lv4_3 : STD_LOGIC_VECTOR (3 downto 0) := "0011";
    constant ap_const_lv4_9 : STD_LOGIC_VECTOR (3 downto 0) := "1001";
    constant ap_const_lv4_B : STD_LOGIC_VECTOR (3 downto 0) := "1011";
    constant ap_const_lv4_D : STD_LOGIC_VECTOR (3 downto 0) := "1101";
    constant ap_const_lv4_E : STD_LOGIC_VECTOR (3 downto 0) := "1110";
    constant ap_const_logic_0 : STD_LOGIC := '0';

attribute shreg_extract : string;
    signal trunc_ln224_fu_50_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal result_3_fu_54_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal result_6_fu_70_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_fu_62_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal zext_ln224_fu_76_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal result_fu_44_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal result_10_fu_80_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal trunc_ln224_1_fu_94_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal result_7_fu_98_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal result_25_fu_114_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_403_fu_106_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal zext_ln224_1_fu_120_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal result_24_fu_88_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal result_26_fu_124_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal trunc_ln224_2_fu_138_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal result_1_fu_142_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal result_28_fu_158_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_404_fu_150_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal zext_ln224_2_fu_164_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal result_27_fu_132_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal result_29_fu_168_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal xor_ln264_fu_176_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal result_31_fu_188_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal result_32_fu_194_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal icmp_ln271_fu_212_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln271_1_fu_226_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal result_35_fu_218_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal icmp_ln271_2_fu_240_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal result_36_fu_232_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal icmp_ln271_3_fu_254_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal result_33_fu_200_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal result_37_fu_246_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal icmp_ln271_4_fu_268_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal result_34_fu_206_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal result_38_fu_260_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal icmp_ln271_5_fu_282_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal result_30_fu_182_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal result_39_fu_274_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_ce_reg : STD_LOGIC;


begin



    ap_ready <= ap_const_logic_1;
    ap_return <= 
        result_30_fu_182_p2 when (icmp_ln271_5_fu_282_p2(0) = '1') else 
        result_39_fu_274_p3;
    icmp_ln271_1_fu_226_p2 <= "1" when (n = ap_const_lv4_3) else "0";
    icmp_ln271_2_fu_240_p2 <= "1" when (n = ap_const_lv4_9) else "0";
    icmp_ln271_3_fu_254_p2 <= "1" when (n = ap_const_lv4_B) else "0";
    icmp_ln271_4_fu_268_p2 <= "1" when (n = ap_const_lv4_D) else "0";
    icmp_ln271_5_fu_282_p2 <= "1" when (n = ap_const_lv4_E) else "0";
    icmp_ln271_fu_212_p2 <= "1" when (n = ap_const_lv4_2) else "0";
    result_10_fu_80_p3 <= 
        zext_ln224_fu_76_p1 when (tmp_fu_62_p3(0) = '1') else 
        result_fu_44_p2;
    result_1_fu_142_p3 <= (trunc_ln224_2_fu_138_p1 & ap_const_lv1_0);
    result_24_fu_88_p2 <= std_logic_vector(shift_left(unsigned(result_10_fu_80_p3),to_integer(unsigned('0' & ap_const_lv32_1(31-1 downto 0)))));
    result_25_fu_114_p2 <= (result_7_fu_98_p3 xor ap_const_lv8_1B);
    result_26_fu_124_p3 <= 
        zext_ln224_1_fu_120_p1 when (tmp_403_fu_106_p3(0) = '1') else 
        result_24_fu_88_p2;
    result_27_fu_132_p2 <= std_logic_vector(shift_left(unsigned(result_26_fu_124_p3),to_integer(unsigned('0' & ap_const_lv32_1(31-1 downto 0)))));
    result_28_fu_158_p2 <= (result_1_fu_142_p3 xor ap_const_lv8_1B);
    result_29_fu_168_p3 <= 
        zext_ln224_2_fu_164_p1 when (tmp_404_fu_150_p3(0) = '1') else 
        result_27_fu_132_p2;
    result_30_fu_182_p2 <= (xor_ln264_fu_176_p2 xor result_26_fu_124_p3);
    result_31_fu_188_p2 <= (s xor result_10_fu_80_p3);
    result_32_fu_194_p2 <= (s xor result_29_fu_168_p3);
    result_33_fu_200_p2 <= (result_31_fu_188_p2 xor result_29_fu_168_p3);
    result_34_fu_206_p2 <= (result_32_fu_194_p2 xor result_26_fu_124_p3);
    result_35_fu_218_p3 <= 
        result_10_fu_80_p3 when (icmp_ln271_fu_212_p2(0) = '1') else 
        s;
    result_36_fu_232_p3 <= 
        result_31_fu_188_p2 when (icmp_ln271_1_fu_226_p2(0) = '1') else 
        result_35_fu_218_p3;
    result_37_fu_246_p3 <= 
        result_32_fu_194_p2 when (icmp_ln271_2_fu_240_p2(0) = '1') else 
        result_36_fu_232_p3;
    result_38_fu_260_p3 <= 
        result_33_fu_200_p2 when (icmp_ln271_3_fu_254_p2(0) = '1') else 
        result_37_fu_246_p3;
    result_39_fu_274_p3 <= 
        result_34_fu_206_p2 when (icmp_ln271_4_fu_268_p2(0) = '1') else 
        result_38_fu_260_p3;
    result_3_fu_54_p3 <= (trunc_ln224_fu_50_p1 & ap_const_lv1_0);
    result_6_fu_70_p2 <= (result_3_fu_54_p3 xor ap_const_lv8_1B);
    result_7_fu_98_p3 <= (trunc_ln224_1_fu_94_p1 & ap_const_lv1_0);
    result_fu_44_p2 <= std_logic_vector(shift_left(unsigned(s),to_integer(unsigned('0' & ap_const_lv32_1(31-1 downto 0)))));
    tmp_403_fu_106_p3 <= result_10_fu_80_p3(7 downto 7);
    tmp_404_fu_150_p3 <= result_26_fu_124_p3(7 downto 7);
    tmp_fu_62_p3 <= s(7 downto 7);
    trunc_ln224_1_fu_94_p1 <= result_10_fu_80_p3(7 - 1 downto 0);
    trunc_ln224_2_fu_138_p1 <= result_26_fu_124_p3(7 - 1 downto 0);
    trunc_ln224_fu_50_p1 <= s(7 - 1 downto 0);
    xor_ln264_fu_176_p2 <= (result_29_fu_168_p3 xor result_10_fu_80_p3);
    zext_ln224_1_fu_120_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(result_25_fu_114_p2),32));
    zext_ln224_2_fu_164_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(result_28_fu_158_p2),32));
    zext_ln224_fu_76_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(result_6_fu_70_p2),32));
end behav;

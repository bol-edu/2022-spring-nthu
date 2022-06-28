-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
-- Version: 2021.2
-- Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity TOP_KBEST_Pipeline_VITIS_LOOP_57_7 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    zext_ln36 : IN STD_LOGIC_VECTOR (2 downto 0);
    zext_ln712 : IN STD_LOGIC_VECTOR (5 downto 0);
    R_V_address0 : OUT STD_LOGIC_VECTOR (5 downto 0);
    R_V_ce0 : OUT STD_LOGIC;
    R_V_q0 : IN STD_LOGIC_VECTOR (15 downto 0);
    select_ln42_37 : IN STD_LOGIC_VECTOR (31 downto 0);
    p_reload269 : IN STD_LOGIC_VECTOR (31 downto 0);
    p_reload270 : IN STD_LOGIC_VECTOR (31 downto 0);
    p_reload271 : IN STD_LOGIC_VECTOR (31 downto 0);
    p_reload272 : IN STD_LOGIC_VECTOR (31 downto 0);
    p_reload273 : IN STD_LOGIC_VECTOR (31 downto 0);
    p_reload274 : IN STD_LOGIC_VECTOR (31 downto 0);
    p_reload268 : IN STD_LOGIC_VECTOR (31 downto 0);
    select_ln42_39 : IN STD_LOGIC_VECTOR (31 downto 0);
    p_reload262 : IN STD_LOGIC_VECTOR (31 downto 0);
    p_reload263 : IN STD_LOGIC_VECTOR (31 downto 0);
    p_reload264 : IN STD_LOGIC_VECTOR (31 downto 0);
    p_reload265 : IN STD_LOGIC_VECTOR (31 downto 0);
    p_reload266 : IN STD_LOGIC_VECTOR (31 downto 0);
    p_reload267 : IN STD_LOGIC_VECTOR (31 downto 0);
    p_reload261 : IN STD_LOGIC_VECTOR (31 downto 0);
    select_ln42_18 : IN STD_LOGIC_VECTOR (31 downto 0);
    p_reload255 : IN STD_LOGIC_VECTOR (31 downto 0);
    p_reload256 : IN STD_LOGIC_VECTOR (31 downto 0);
    p_reload257 : IN STD_LOGIC_VECTOR (31 downto 0);
    p_reload258 : IN STD_LOGIC_VECTOR (31 downto 0);
    p_reload259 : IN STD_LOGIC_VECTOR (31 downto 0);
    p_reload260 : IN STD_LOGIC_VECTOR (31 downto 0);
    p_reload254 : IN STD_LOGIC_VECTOR (31 downto 0);
    select_ln42_58 : IN STD_LOGIC_VECTOR (31 downto 0);
    p_reload248 : IN STD_LOGIC_VECTOR (31 downto 0);
    p_reload249 : IN STD_LOGIC_VECTOR (31 downto 0);
    p_reload250 : IN STD_LOGIC_VECTOR (31 downto 0);
    p_reload251 : IN STD_LOGIC_VECTOR (31 downto 0);
    p_reload252 : IN STD_LOGIC_VECTOR (31 downto 0);
    p_reload253 : IN STD_LOGIC_VECTOR (31 downto 0);
    p_reload247 : IN STD_LOGIC_VECTOR (31 downto 0);
    i_27 : IN STD_LOGIC_VECTOR (1 downto 0);
    dist_V_out : OUT STD_LOGIC_VECTOR (15 downto 0);
    dist_V_out_ap_vld : OUT STD_LOGIC );
end;


architecture behav of TOP_KBEST_Pipeline_VITIS_LOOP_57_7 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv16_0 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv64_8 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000001000";
    constant ap_const_lv64_1 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000001";

attribute shreg_extract : string;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter2 : STD_LOGIC := '0';
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state2_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_state3_pp0_stage0_iter2 : BOOLEAN;
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal icmp_ln57_fu_381_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_condition_exit_pp0_iter1_stage0 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal icmp_ln58_fu_456_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln58_reg_697 : STD_LOGIC_VECTOR (0 downto 0);
    signal zext_ln712_1_fu_376_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal dist_V_fu_112 : STD_LOGIC_VECTOR (15 downto 0);
    signal dist_V_3_fu_488_p3 : STD_LOGIC_VECTOR (15 downto 0);
    signal ap_loop_init : STD_LOGIC;
    signal j_fu_116 : STD_LOGIC_VECTOR (63 downto 0);
    signal add_ln57_fu_462_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln36_cast_fu_350_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_block_pp0_stage0_01001 : BOOLEAN;
    signal trunc_ln712_fu_367_p1 : STD_LOGIC_VECTOR (5 downto 0);
    signal add_ln712_fu_371_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal tmp_i_fu_387_p10 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_103_i_fu_401_p10 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_104_i_fu_415_p10 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_105_i_fu_429_p10 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_106_i_fu_443_p6 : STD_LOGIC_VECTOR (31 downto 0);
    signal dist_V_1_fu_476_p2 : STD_LOGIC_VECTOR (15 downto 0);
    signal dist_V_2_fu_482_p2 : STD_LOGIC_VECTOR (15 downto 0);
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_continue_int : STD_LOGIC;
    signal ap_done_int : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_start_int : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component TOP_mux_864_32_1_1 IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        din2_WIDTH : INTEGER;
        din3_WIDTH : INTEGER;
        din4_WIDTH : INTEGER;
        din5_WIDTH : INTEGER;
        din6_WIDTH : INTEGER;
        din7_WIDTH : INTEGER;
        din8_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        din0 : IN STD_LOGIC_VECTOR (31 downto 0);
        din1 : IN STD_LOGIC_VECTOR (31 downto 0);
        din2 : IN STD_LOGIC_VECTOR (31 downto 0);
        din3 : IN STD_LOGIC_VECTOR (31 downto 0);
        din4 : IN STD_LOGIC_VECTOR (31 downto 0);
        din5 : IN STD_LOGIC_VECTOR (31 downto 0);
        din6 : IN STD_LOGIC_VECTOR (31 downto 0);
        din7 : IN STD_LOGIC_VECTOR (31 downto 0);
        din8 : IN STD_LOGIC_VECTOR (63 downto 0);
        dout : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;


    component TOP_mux_42_32_1_1 IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        din2_WIDTH : INTEGER;
        din3_WIDTH : INTEGER;
        din4_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        din0 : IN STD_LOGIC_VECTOR (31 downto 0);
        din1 : IN STD_LOGIC_VECTOR (31 downto 0);
        din2 : IN STD_LOGIC_VECTOR (31 downto 0);
        din3 : IN STD_LOGIC_VECTOR (31 downto 0);
        din4 : IN STD_LOGIC_VECTOR (1 downto 0);
        dout : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;


    component TOP_flow_control_loop_pipe_sequential_init IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_start_int : OUT STD_LOGIC;
        ap_loop_init : OUT STD_LOGIC;
        ap_ready_int : IN STD_LOGIC;
        ap_loop_exit_ready : IN STD_LOGIC;
        ap_loop_exit_done : IN STD_LOGIC;
        ap_continue_int : OUT STD_LOGIC;
        ap_done_int : IN STD_LOGIC );
    end component;



begin
    mux_864_32_1_1_U1164 : component TOP_mux_864_32_1_1
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 32,
        din1_WIDTH => 32,
        din2_WIDTH => 32,
        din3_WIDTH => 32,
        din4_WIDTH => 32,
        din5_WIDTH => 32,
        din6_WIDTH => 32,
        din7_WIDTH => 32,
        din8_WIDTH => 64,
        dout_WIDTH => 32)
    port map (
        din0 => select_ln42_37,
        din1 => p_reload269,
        din2 => p_reload270,
        din3 => p_reload271,
        din4 => p_reload272,
        din5 => p_reload273,
        din6 => p_reload274,
        din7 => p_reload268,
        din8 => j_fu_116,
        dout => tmp_i_fu_387_p10);

    mux_864_32_1_1_U1165 : component TOP_mux_864_32_1_1
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 32,
        din1_WIDTH => 32,
        din2_WIDTH => 32,
        din3_WIDTH => 32,
        din4_WIDTH => 32,
        din5_WIDTH => 32,
        din6_WIDTH => 32,
        din7_WIDTH => 32,
        din8_WIDTH => 64,
        dout_WIDTH => 32)
    port map (
        din0 => select_ln42_39,
        din1 => p_reload262,
        din2 => p_reload263,
        din3 => p_reload264,
        din4 => p_reload265,
        din5 => p_reload266,
        din6 => p_reload267,
        din7 => p_reload261,
        din8 => j_fu_116,
        dout => tmp_103_i_fu_401_p10);

    mux_864_32_1_1_U1166 : component TOP_mux_864_32_1_1
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 32,
        din1_WIDTH => 32,
        din2_WIDTH => 32,
        din3_WIDTH => 32,
        din4_WIDTH => 32,
        din5_WIDTH => 32,
        din6_WIDTH => 32,
        din7_WIDTH => 32,
        din8_WIDTH => 64,
        dout_WIDTH => 32)
    port map (
        din0 => select_ln42_18,
        din1 => p_reload255,
        din2 => p_reload256,
        din3 => p_reload257,
        din4 => p_reload258,
        din5 => p_reload259,
        din6 => p_reload260,
        din7 => p_reload254,
        din8 => j_fu_116,
        dout => tmp_104_i_fu_415_p10);

    mux_864_32_1_1_U1167 : component TOP_mux_864_32_1_1
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 32,
        din1_WIDTH => 32,
        din2_WIDTH => 32,
        din3_WIDTH => 32,
        din4_WIDTH => 32,
        din5_WIDTH => 32,
        din6_WIDTH => 32,
        din7_WIDTH => 32,
        din8_WIDTH => 64,
        dout_WIDTH => 32)
    port map (
        din0 => select_ln42_58,
        din1 => p_reload248,
        din2 => p_reload249,
        din3 => p_reload250,
        din4 => p_reload251,
        din5 => p_reload252,
        din6 => p_reload253,
        din7 => p_reload247,
        din8 => j_fu_116,
        dout => tmp_105_i_fu_429_p10);

    mux_42_32_1_1_U1168 : component TOP_mux_42_32_1_1
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 32,
        din1_WIDTH => 32,
        din2_WIDTH => 32,
        din3_WIDTH => 32,
        din4_WIDTH => 2,
        dout_WIDTH => 32)
    port map (
        din0 => tmp_i_fu_387_p10,
        din1 => tmp_103_i_fu_401_p10,
        din2 => tmp_104_i_fu_415_p10,
        din3 => tmp_105_i_fu_429_p10,
        din4 => i_27,
        dout => tmp_106_i_fu_443_p6);

    flow_control_loop_pipe_sequential_init_U : component TOP_flow_control_loop_pipe_sequential_init
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => ap_start,
        ap_ready => ap_ready,
        ap_done => ap_done,
        ap_start_int => ap_start_int,
        ap_loop_init => ap_loop_init,
        ap_ready_int => ap_ready_int,
        ap_loop_exit_ready => ap_condition_exit_pp0_iter1_stage0,
        ap_loop_exit_done => ap_done_int,
        ap_continue_int => ap_continue_int,
        ap_done_int => ap_done_int);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_done_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_done_reg <= ap_const_logic_0;
            else
                if ((ap_continue_int = ap_const_logic_1)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif (((ap_loop_exit_ready = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_condition_exit_pp0_iter1_stage0)) then 
                    ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                    ap_enable_reg_pp0_iter1 <= ap_start_int;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter2_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter2 <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_condition_exit_pp0_iter1_stage0)) then 
                    ap_enable_reg_pp0_iter2 <= ap_const_logic_0;
                elsif ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
                end if; 
            end if;
        end if;
    end process;


    dist_V_fu_112_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_0 = ap_block_pp0_stage0_11001)) then
                if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_init = ap_const_logic_1))) then 
                    dist_V_fu_112 <= ap_const_lv16_0;
                elsif ((ap_enable_reg_pp0_iter2 = ap_const_logic_1)) then 
                    dist_V_fu_112 <= dist_V_3_fu_488_p3;
                end if;
            end if; 
        end if;
    end process;

    j_fu_116_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if ((ap_loop_init = ap_const_logic_1)) then 
                    j_fu_116 <= zext_ln36_cast_fu_350_p1;
                elsif (((icmp_ln57_fu_381_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
                    j_fu_116 <= add_ln57_fu_462_p2;
                end if;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln57_fu_381_p2 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                icmp_ln58_reg_697 <= icmp_ln58_fu_456_p2;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_CS_fsm)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_pp0_stage0 => 
                ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
            when others =>  
                ap_NS_fsm <= "X";
        end case;
    end process;
    R_V_address0 <= zext_ln712_1_fu_376_p1(6 - 1 downto 0);

    R_V_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            R_V_ce0 <= ap_const_logic_1;
        else 
            R_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    add_ln57_fu_462_p2 <= std_logic_vector(unsigned(j_fu_116) + unsigned(ap_const_lv64_1));
    add_ln712_fu_371_p2 <= std_logic_vector(unsigned(zext_ln712) + unsigned(trunc_ln712_fu_367_p1));
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_01001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state1_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state2_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state3_pp0_stage0_iter2 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_exit_pp0_iter1_stage0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_subdone, icmp_ln57_fu_381_p2)
    begin
        if (((icmp_ln57_fu_381_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_condition_exit_pp0_iter1_stage0 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter1_stage0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_subdone, ap_loop_exit_ready, ap_done_reg)
    begin
        if (((ap_loop_exit_ready = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_done_int <= ap_const_logic_1;
        else 
            ap_done_int <= ap_done_reg;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);
    ap_enable_reg_pp0_iter0 <= ap_start_int;

    ap_idle_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_idle_pp0, ap_start_int)
    begin
        if (((ap_start_int = ap_const_logic_0) and (ap_idle_pp0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2)
    begin
        if (((ap_enable_reg_pp0_iter2 = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;

    ap_loop_exit_ready <= ap_condition_exit_pp0_iter1_stage0;

    ap_ready_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_ready_int <= ap_const_logic_1;
        else 
            ap_ready_int <= ap_const_logic_0;
        end if; 
    end process;

    dist_V_1_fu_476_p2 <= std_logic_vector(unsigned(R_V_q0) + unsigned(dist_V_fu_112));
    dist_V_2_fu_482_p2 <= std_logic_vector(unsigned(dist_V_fu_112) - unsigned(R_V_q0));
    dist_V_3_fu_488_p3 <= 
        dist_V_1_fu_476_p2 when (icmp_ln58_reg_697(0) = '1') else 
        dist_V_2_fu_482_p2;
    dist_V_out <= dist_V_fu_112;

    dist_V_out_ap_vld_assign_proc : process(ap_CS_fsm_pp0_stage0, icmp_ln57_fu_381_p2, ap_block_pp0_stage0_11001)
    begin
        if (((icmp_ln57_fu_381_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            dist_V_out_ap_vld <= ap_const_logic_1;
        else 
            dist_V_out_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    icmp_ln57_fu_381_p2 <= "1" when (j_fu_116 = ap_const_lv64_8) else "0";
    icmp_ln58_fu_456_p2 <= "1" when (tmp_106_i_fu_443_p6 = ap_const_lv32_1) else "0";
    trunc_ln712_fu_367_p1 <= j_fu_116(6 - 1 downto 0);
    zext_ln36_cast_fu_350_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(zext_ln36),64));
    zext_ln712_1_fu_376_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln712_fu_371_p2),64));
end behav;

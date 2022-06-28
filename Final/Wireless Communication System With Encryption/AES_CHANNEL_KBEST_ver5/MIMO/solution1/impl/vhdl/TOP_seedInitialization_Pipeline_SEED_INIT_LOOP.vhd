-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
-- Version: 2021.2
-- Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity TOP_seedInitialization_Pipeline_SEED_INIT_LOOP is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    zext_ln610 : IN STD_LOGIC_VECTOR (16 downto 0);
    this_mt_even_0_address0 : OUT STD_LOGIC_VECTOR (8 downto 0);
    this_mt_even_0_ce0 : OUT STD_LOGIC;
    this_mt_even_0_we0 : OUT STD_LOGIC;
    this_mt_even_0_d0 : OUT STD_LOGIC_VECTOR (31 downto 0);
    this_mt_even_1_address0 : OUT STD_LOGIC_VECTOR (8 downto 0);
    this_mt_even_1_ce0 : OUT STD_LOGIC;
    this_mt_even_1_we0 : OUT STD_LOGIC;
    this_mt_even_1_d0 : OUT STD_LOGIC_VECTOR (31 downto 0);
    this_mt_odd_0_address0 : OUT STD_LOGIC_VECTOR (8 downto 0);
    this_mt_odd_0_ce0 : OUT STD_LOGIC;
    this_mt_odd_0_we0 : OUT STD_LOGIC;
    this_mt_odd_0_d0 : OUT STD_LOGIC_VECTOR (31 downto 0);
    this_mt_odd_1_address0 : OUT STD_LOGIC_VECTOR (8 downto 0);
    this_mt_odd_1_ce0 : OUT STD_LOGIC;
    this_mt_odd_1_we0 : OUT STD_LOGIC;
    this_mt_odd_1_d0 : OUT STD_LOGIC_VECTOR (31 downto 0) );
end;


architecture behav of TOP_seedInitialization_Pipeline_SEED_INIT_LOOP is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv10_1 : STD_LOGIC_VECTOR (9 downto 0) := "0000000001";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv10_270 : STD_LOGIC_VECTOR (9 downto 0) := "1001110000";
    constant ap_const_lv32_1E : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011110";
    constant ap_const_lv32_1F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011111";
    constant ap_const_lv32_6C078965 : STD_LOGIC_VECTOR (31 downto 0) := "01101100000001111000100101100101";
    constant ap_const_lv32_9 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001001";

attribute shreg_extract : string;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state2_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal icmp_ln619_fu_131_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_condition_exit_pp0_iter1_stage0 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal zext_ln587_fu_194_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal trunc_ln619_fu_140_p1 : STD_LOGIC_VECTOR (0 downto 0);
    signal lhs_V_fu_48 : STD_LOGIC_VECTOR (31 downto 0);
    signal mt_reg_V_fu_174_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal zext_ln610_cast_fu_114_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal ap_loop_init : STD_LOGIC;
    signal p_Val2_s_fu_52 : STD_LOGIC_VECTOR (9 downto 0);
    signal i_V_fu_202_p2 : STD_LOGIC_VECTOR (9 downto 0);
    signal r_fu_144_p4 : STD_LOGIC_VECTOR (1 downto 0);
    signal zext_ln1691_fu_154_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal ret_fu_164_p0 : STD_LOGIC_VECTOR (31 downto 0);
    signal ret_fu_164_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal zext_ln223_fu_170_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal r_2_fu_184_p4 : STD_LOGIC_VECTOR (8 downto 0);
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_continue_int : STD_LOGIC;
    signal ap_done_int : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_start_int : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component TOP_mul_32s_32ns_32_1_1 IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        din0 : IN STD_LOGIC_VECTOR (31 downto 0);
        din1 : IN STD_LOGIC_VECTOR (31 downto 0);
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
    mul_32s_32ns_32_1_1_U113 : component TOP_mul_32s_32ns_32_1_1
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 32,
        din1_WIDTH => 32,
        dout_WIDTH => 32)
    port map (
        din0 => ret_fu_164_p0,
        din1 => ap_const_lv32_6C078965,
        dout => ret_fu_164_p2);

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


    lhs_V_fu_48_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if ((ap_loop_init = ap_const_logic_1)) then 
                    lhs_V_fu_48 <= zext_ln610_cast_fu_114_p1;
                elsif (((icmp_ln619_fu_131_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
                    lhs_V_fu_48 <= mt_reg_V_fu_174_p2;
                end if;
            end if; 
        end if;
    end process;

    p_Val2_s_fu_52_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if ((ap_loop_init = ap_const_logic_1)) then 
                    p_Val2_s_fu_52 <= ap_const_lv10_1;
                elsif (((icmp_ln619_fu_131_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
                    p_Val2_s_fu_52 <= i_V_fu_202_p2;
                end if;
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
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state1_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state2_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_exit_pp0_iter1_stage0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_subdone, icmp_ln619_fu_131_p2)
    begin
        if (((icmp_ln619_fu_131_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
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
        if (((ap_idle_pp0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_start_int = ap_const_logic_0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
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

    i_V_fu_202_p2 <= std_logic_vector(unsigned(p_Val2_s_fu_52) + unsigned(ap_const_lv10_1));
    icmp_ln619_fu_131_p2 <= "1" when (p_Val2_s_fu_52 = ap_const_lv10_270) else "0";
    mt_reg_V_fu_174_p2 <= std_logic_vector(unsigned(ret_fu_164_p2) + unsigned(zext_ln223_fu_170_p1));
    r_2_fu_184_p4 <= p_Val2_s_fu_52(9 downto 1);
    r_fu_144_p4 <= lhs_V_fu_48(31 downto 30);
    ret_fu_164_p0 <= (zext_ln1691_fu_154_p1 xor lhs_V_fu_48);
    this_mt_even_0_address0 <= zext_ln587_fu_194_p1(9 - 1 downto 0);

    this_mt_even_0_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            this_mt_even_0_ce0 <= ap_const_logic_1;
        else 
            this_mt_even_0_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    this_mt_even_0_d0 <= mt_reg_V_fu_174_p2;

    this_mt_even_0_we0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, icmp_ln619_fu_131_p2, trunc_ln619_fu_140_p1, ap_block_pp0_stage0_11001)
    begin
        if (((trunc_ln619_fu_140_p1 = ap_const_lv1_0) and (icmp_ln619_fu_131_p2 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            this_mt_even_0_we0 <= ap_const_logic_1;
        else 
            this_mt_even_0_we0 <= ap_const_logic_0;
        end if; 
    end process;

    this_mt_even_1_address0 <= zext_ln587_fu_194_p1(9 - 1 downto 0);

    this_mt_even_1_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            this_mt_even_1_ce0 <= ap_const_logic_1;
        else 
            this_mt_even_1_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    this_mt_even_1_d0 <= mt_reg_V_fu_174_p2;

    this_mt_even_1_we0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, icmp_ln619_fu_131_p2, trunc_ln619_fu_140_p1, ap_block_pp0_stage0_11001)
    begin
        if (((trunc_ln619_fu_140_p1 = ap_const_lv1_0) and (icmp_ln619_fu_131_p2 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            this_mt_even_1_we0 <= ap_const_logic_1;
        else 
            this_mt_even_1_we0 <= ap_const_logic_0;
        end if; 
    end process;

    this_mt_odd_0_address0 <= zext_ln587_fu_194_p1(9 - 1 downto 0);

    this_mt_odd_0_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            this_mt_odd_0_ce0 <= ap_const_logic_1;
        else 
            this_mt_odd_0_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    this_mt_odd_0_d0 <= mt_reg_V_fu_174_p2;

    this_mt_odd_0_we0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, icmp_ln619_fu_131_p2, trunc_ln619_fu_140_p1, ap_block_pp0_stage0_11001)
    begin
        if (((trunc_ln619_fu_140_p1 = ap_const_lv1_1) and (icmp_ln619_fu_131_p2 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            this_mt_odd_0_we0 <= ap_const_logic_1;
        else 
            this_mt_odd_0_we0 <= ap_const_logic_0;
        end if; 
    end process;

    this_mt_odd_1_address0 <= zext_ln587_fu_194_p1(9 - 1 downto 0);

    this_mt_odd_1_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            this_mt_odd_1_ce0 <= ap_const_logic_1;
        else 
            this_mt_odd_1_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    this_mt_odd_1_d0 <= mt_reg_V_fu_174_p2;

    this_mt_odd_1_we0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, icmp_ln619_fu_131_p2, trunc_ln619_fu_140_p1, ap_block_pp0_stage0_11001)
    begin
        if (((trunc_ln619_fu_140_p1 = ap_const_lv1_1) and (icmp_ln619_fu_131_p2 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            this_mt_odd_1_we0 <= ap_const_logic_1;
        else 
            this_mt_odd_1_we0 <= ap_const_logic_0;
        end if; 
    end process;

    trunc_ln619_fu_140_p1 <= p_Val2_s_fu_52(1 - 1 downto 0);
    zext_ln1691_fu_154_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(r_fu_144_p4),32));
    zext_ln223_fu_170_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(p_Val2_s_fu_52),32));
    zext_ln587_fu_194_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(r_2_fu_184_p4),64));
    zext_ln610_cast_fu_114_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(zext_ln610),32));
end behav;

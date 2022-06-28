-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
-- Version: 2021.2
-- Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity TOP_channel_mult_Pipeline_CHANNEL2REAL is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    H_real_spl0_dout : IN STD_LOGIC_VECTOR (15 downto 0);
    H_real_spl0_empty_n : IN STD_LOGIC;
    H_real_spl0_read : OUT STD_LOGIC;
    H_imag_spl0_dout : IN STD_LOGIC_VECTOR (15 downto 0);
    H_imag_spl0_empty_n : IN STD_LOGIC;
    H_imag_spl0_read : OUT STD_LOGIC;
    CHANNEL_V_address0 : OUT STD_LOGIC_VECTOR (5 downto 0);
    CHANNEL_V_ce0 : OUT STD_LOGIC;
    CHANNEL_V_we0 : OUT STD_LOGIC;
    CHANNEL_V_d0 : OUT STD_LOGIC_VECTOR (15 downto 0);
    CHANNEL_V_address1 : OUT STD_LOGIC_VECTOR (5 downto 0);
    CHANNEL_V_ce1 : OUT STD_LOGIC;
    CHANNEL_V_we1 : OUT STD_LOGIC;
    CHANNEL_V_d1 : OUT STD_LOGIC_VECTOR (15 downto 0) );
end;


architecture behav of TOP_channel_mult_Pipeline_CHANNEL2REAL is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_ST_fsm_pp0_stage1 : STD_LOGIC_VECTOR (1 downto 0) := "10";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv5_0 : STD_LOGIC_VECTOR (4 downto 0) := "00000";
    constant ap_const_lv5_10 : STD_LOGIC_VECTOR (4 downto 0) := "10000";
    constant ap_const_lv5_1 : STD_LOGIC_VECTOR (4 downto 0) := "00001";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv3_1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_const_lv16_0 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000000";

attribute shreg_extract : string;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (1 downto 0) := "01";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state3_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal icmp_ln51_fu_131_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_condition_exit_pp0_iter0_stage0 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal ap_CS_fsm_pp0_stage1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage1 : signal is "none";
    signal icmp_ln51_reg_265 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_state2_pp0_stage1_iter0 : BOOLEAN;
    signal ap_block_pp0_stage1_subdone : BOOLEAN;
    signal H_real_spl0_blk_n : STD_LOGIC;
    signal ap_block_pp0_stage1 : BOOLEAN;
    signal H_imag_spl0_blk_n : STD_LOGIC;
    signal i_7_reg_258 : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal tmp_4_reg_269 : STD_LOGIC_VECTOR (15 downto 0);
    signal ap_block_pp0_stage1_11001 : BOOLEAN;
    signal tmp_fu_157_p4 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp_reg_275 : STD_LOGIC_VECTOR (1 downto 0);
    signal trunc_ln54_fu_166_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal trunc_ln54_reg_280 : STD_LOGIC_VECTOR (1 downto 0);
    signal or_ln55_fu_194_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal or_ln55_reg_285 : STD_LOGIC_VECTOR (2 downto 0);
    signal or_ln55_1_fu_200_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal or_ln55_1_reg_290 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_enable_reg_pp0_iter0_reg : STD_LOGIC := '0';
    signal zext_ln54_fu_189_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln55_fu_214_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln57_fu_227_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal zext_ln56_fu_240_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal i_fu_64 : STD_LOGIC_VECTOR (4 downto 0);
    signal i_8_fu_137_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_loop_init : STD_LOGIC;
    signal ap_sig_allocacmp_i_7 : STD_LOGIC_VECTOR (4 downto 0);
    signal sub_ln712_fu_245_p2 : STD_LOGIC_VECTOR (15 downto 0);
    signal tmp_59_fu_177_p5 : STD_LOGIC_VECTOR (5 downto 0);
    signal trunc_ln_fu_148_p4 : STD_LOGIC_VECTOR (2 downto 0);
    signal shl_ln_fu_169_p3 : STD_LOGIC_VECTOR (2 downto 0);
    signal tmp_61_fu_206_p3 : STD_LOGIC_VECTOR (5 downto 0);
    signal tmp_60_fu_219_p4 : STD_LOGIC_VECTOR (5 downto 0);
    signal tmp_62_fu_232_p4 : STD_LOGIC_VECTOR (5 downto 0);
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_continue_int : STD_LOGIC;
    signal ap_done_int : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_idle_pp0_1to1 : STD_LOGIC;
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_start_int : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

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
        ap_loop_exit_ready => ap_condition_exit_pp0_iter0_stage0,
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


    ap_enable_reg_pp0_iter0_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter0_reg <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_condition_exit_pp0_iter0_stage0)) then 
                    ap_enable_reg_pp0_iter0_reg <= ap_const_logic_0;
                elsif ((ap_const_logic_1 = ap_CS_fsm_pp0_stage0)) then 
                    ap_enable_reg_pp0_iter0_reg <= ap_start_int;
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
                if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                    ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage1_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then 
                    ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
                end if; 
            end if;
        end if;
    end process;


    i_fu_64_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if (((icmp_ln51_fu_131_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then 
                    i_fu_64 <= i_8_fu_137_p2;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    i_fu_64 <= ap_const_lv5_0;
                end if;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                i_7_reg_258 <= ap_sig_allocacmp_i_7;
                icmp_ln51_reg_265 <= icmp_ln51_fu_131_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln51_reg_265 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then
                    or_ln55_1_reg_290(2 downto 1) <= or_ln55_1_fu_200_p2(2 downto 1);
                    or_ln55_reg_285(2 downto 1) <= or_ln55_fu_194_p2(2 downto 1);
                tmp_4_reg_269 <= H_imag_spl0_dout;
                tmp_reg_275 <= i_7_reg_258(3 downto 2);
                trunc_ln54_reg_280 <= trunc_ln54_fu_166_p1;
            end if;
        end if;
    end process;
    or_ln55_reg_285(0) <= '1';
    or_ln55_1_reg_290(0) <= '1';

    ap_NS_fsm_assign_proc : process (ap_CS_fsm, ap_block_pp0_stage0_subdone, ap_condition_exit_pp0_iter0_stage0, ap_block_pp0_stage1_subdone, ap_idle_pp0_1to1, ap_start_int)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_pp0_stage0 => 
                if ((ap_const_logic_1 = ap_condition_exit_pp0_iter0_stage0)) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                elsif ((not(((ap_start_int = ap_const_logic_0) and (ap_idle_pp0_1to1 = ap_const_logic_1))) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage1;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                end if;
            when ap_ST_fsm_pp0_stage1 => 
                if ((ap_const_boolean_0 = ap_block_pp0_stage1_subdone)) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage1;
                end if;
            when others =>  
                ap_NS_fsm <= "XX";
        end case;
    end process;

    CHANNEL_V_address0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_CS_fsm_pp0_stage1, ap_block_pp0_stage1, zext_ln55_fu_214_p1, zext_ln57_fu_227_p1, ap_block_pp0_stage0)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            CHANNEL_V_address0 <= zext_ln57_fu_227_p1(6 - 1 downto 0);
        elsif (((ap_const_boolean_0 = ap_block_pp0_stage1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then 
            CHANNEL_V_address0 <= zext_ln55_fu_214_p1(6 - 1 downto 0);
        else 
            CHANNEL_V_address0 <= "XXXXXX";
        end if; 
    end process;


    CHANNEL_V_address1_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_CS_fsm_pp0_stage1, ap_block_pp0_stage1, zext_ln54_fu_189_p1, ap_block_pp0_stage0, zext_ln56_fu_240_p1)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            CHANNEL_V_address1 <= zext_ln56_fu_240_p1(6 - 1 downto 0);
        elsif (((ap_const_boolean_0 = ap_block_pp0_stage1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then 
            CHANNEL_V_address1 <= zext_ln54_fu_189_p1(6 - 1 downto 0);
        else 
            CHANNEL_V_address1 <= "XXXXXX";
        end if; 
    end process;


    CHANNEL_V_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_CS_fsm_pp0_stage1, ap_block_pp0_stage0_11001, ap_block_pp0_stage1_11001)
    begin
        if ((((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0)) or ((ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1)))) then 
            CHANNEL_V_ce0 <= ap_const_logic_1;
        else 
            CHANNEL_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    CHANNEL_V_ce1_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_CS_fsm_pp0_stage1, ap_block_pp0_stage0_11001, ap_block_pp0_stage1_11001)
    begin
        if ((((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0)) or ((ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1)))) then 
            CHANNEL_V_ce1 <= ap_const_logic_1;
        else 
            CHANNEL_V_ce1 <= ap_const_logic_0;
        end if; 
    end process;


    CHANNEL_V_d0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_CS_fsm_pp0_stage1, H_real_spl0_dout, ap_block_pp0_stage1, tmp_4_reg_269, ap_block_pp0_stage0)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            CHANNEL_V_d0 <= tmp_4_reg_269;
        elsif (((ap_const_boolean_0 = ap_block_pp0_stage1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then 
            CHANNEL_V_d0 <= H_real_spl0_dout;
        else 
            CHANNEL_V_d0 <= "XXXXXXXXXXXXXXXX";
        end if; 
    end process;


    CHANNEL_V_d1_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_CS_fsm_pp0_stage1, H_real_spl0_dout, ap_block_pp0_stage1, ap_block_pp0_stage0, sub_ln712_fu_245_p2)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            CHANNEL_V_d1 <= sub_ln712_fu_245_p2;
        elsif (((ap_const_boolean_0 = ap_block_pp0_stage1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then 
            CHANNEL_V_d1 <= H_real_spl0_dout;
        else 
            CHANNEL_V_d1 <= "XXXXXXXXXXXXXXXX";
        end if; 
    end process;


    CHANNEL_V_we0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_CS_fsm_pp0_stage1, icmp_ln51_reg_265, ap_block_pp0_stage0_11001, ap_block_pp0_stage1_11001)
    begin
        if ((((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0)) or ((icmp_ln51_reg_265 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1)))) then 
            CHANNEL_V_we0 <= ap_const_logic_1;
        else 
            CHANNEL_V_we0 <= ap_const_logic_0;
        end if; 
    end process;


    CHANNEL_V_we1_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_CS_fsm_pp0_stage1, icmp_ln51_reg_265, ap_block_pp0_stage0_11001, ap_block_pp0_stage1_11001)
    begin
        if ((((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0)) or ((icmp_ln51_reg_265 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1)))) then 
            CHANNEL_V_we1 <= ap_const_logic_1;
        else 
            CHANNEL_V_we1 <= ap_const_logic_0;
        end if; 
    end process;


    H_imag_spl0_blk_n_assign_proc : process(ap_enable_reg_pp0_iter0, ap_CS_fsm_pp0_stage1, icmp_ln51_reg_265, H_imag_spl0_empty_n, ap_block_pp0_stage1)
    begin
        if (((icmp_ln51_reg_265 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then 
            H_imag_spl0_blk_n <= H_imag_spl0_empty_n;
        else 
            H_imag_spl0_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    H_imag_spl0_read_assign_proc : process(ap_enable_reg_pp0_iter0, ap_CS_fsm_pp0_stage1, icmp_ln51_reg_265, ap_block_pp0_stage1_11001)
    begin
        if (((icmp_ln51_reg_265 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then 
            H_imag_spl0_read <= ap_const_logic_1;
        else 
            H_imag_spl0_read <= ap_const_logic_0;
        end if; 
    end process;


    H_real_spl0_blk_n_assign_proc : process(ap_enable_reg_pp0_iter0, ap_CS_fsm_pp0_stage1, H_real_spl0_empty_n, icmp_ln51_reg_265, ap_block_pp0_stage1)
    begin
        if (((icmp_ln51_reg_265 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then 
            H_real_spl0_blk_n <= H_real_spl0_empty_n;
        else 
            H_real_spl0_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    H_real_spl0_read_assign_proc : process(ap_enable_reg_pp0_iter0, ap_CS_fsm_pp0_stage1, icmp_ln51_reg_265, ap_block_pp0_stage1_11001)
    begin
        if (((icmp_ln51_reg_265 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then 
            H_real_spl0_read <= ap_const_logic_1;
        else 
            H_real_spl0_read <= ap_const_logic_0;
        end if; 
    end process;

    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
    ap_CS_fsm_pp0_stage1 <= ap_CS_fsm(1);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage1 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp0_stage1_11001_assign_proc : process(ap_enable_reg_pp0_iter0, H_real_spl0_empty_n, icmp_ln51_reg_265, H_imag_spl0_empty_n)
    begin
                ap_block_pp0_stage1_11001 <= ((ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (((icmp_ln51_reg_265 = ap_const_lv1_0) and (ap_const_logic_0 = H_imag_spl0_empty_n)) or ((icmp_ln51_reg_265 = ap_const_lv1_0) and (ap_const_logic_0 = H_real_spl0_empty_n))));
    end process;


    ap_block_pp0_stage1_subdone_assign_proc : process(ap_enable_reg_pp0_iter0, H_real_spl0_empty_n, icmp_ln51_reg_265, H_imag_spl0_empty_n)
    begin
                ap_block_pp0_stage1_subdone <= ((ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (((icmp_ln51_reg_265 = ap_const_lv1_0) and (ap_const_logic_0 = H_imag_spl0_empty_n)) or ((icmp_ln51_reg_265 = ap_const_lv1_0) and (ap_const_logic_0 = H_real_spl0_empty_n))));
    end process;

        ap_block_state1_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_state2_pp0_stage1_iter0_assign_proc : process(H_real_spl0_empty_n, icmp_ln51_reg_265, H_imag_spl0_empty_n)
    begin
                ap_block_state2_pp0_stage1_iter0 <= (((icmp_ln51_reg_265 = ap_const_lv1_0) and (ap_const_logic_0 = H_imag_spl0_empty_n)) or ((icmp_ln51_reg_265 = ap_const_lv1_0) and (ap_const_logic_0 = H_real_spl0_empty_n)));
    end process;

        ap_block_state3_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_exit_pp0_iter0_stage0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone, icmp_ln51_fu_131_p2)
    begin
        if (((icmp_ln51_fu_131_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_0;
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

    ap_enable_reg_pp0_iter0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0_reg, ap_start_int)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_pp0_stage0)) then 
            ap_enable_reg_pp0_iter0 <= ap_start_int;
        else 
            ap_enable_reg_pp0_iter0 <= ap_enable_reg_pp0_iter0_reg;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_idle_pp0, ap_start_int)
    begin
        if (((ap_idle_pp0 = ap_const_logic_1) and (ap_start_int = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
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


    ap_idle_pp0_1to1_assign_proc : process(ap_enable_reg_pp0_iter1)
    begin
        if ((ap_enable_reg_pp0_iter1 = ap_const_logic_0)) then 
            ap_idle_pp0_1to1 <= ap_const_logic_1;
        else 
            ap_idle_pp0_1to1 <= ap_const_logic_0;
        end if; 
    end process;

    ap_loop_exit_ready <= ap_condition_exit_pp0_iter0_stage0;

    ap_ready_int_assign_proc : process(ap_enable_reg_pp0_iter0, ap_CS_fsm_pp0_stage1, ap_block_pp0_stage1_subdone)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage1_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then 
            ap_ready_int <= ap_const_logic_1;
        else 
            ap_ready_int <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_allocacmp_i_7_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, i_fu_64, ap_loop_init)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_init = ap_const_logic_1))) then 
            ap_sig_allocacmp_i_7 <= ap_const_lv5_0;
        else 
            ap_sig_allocacmp_i_7 <= i_fu_64;
        end if; 
    end process;

    i_8_fu_137_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_i_7) + unsigned(ap_const_lv5_1));
    icmp_ln51_fu_131_p2 <= "1" when (ap_sig_allocacmp_i_7 = ap_const_lv5_10) else "0";
    or_ln55_1_fu_200_p2 <= (shl_ln_fu_169_p3 or ap_const_lv3_1);
    or_ln55_fu_194_p2 <= (trunc_ln_fu_148_p4 or ap_const_lv3_1);
    shl_ln_fu_169_p3 <= (trunc_ln54_fu_166_p1 & ap_const_lv1_0);
    sub_ln712_fu_245_p2 <= std_logic_vector(unsigned(ap_const_lv16_0) - unsigned(tmp_4_reg_269));
    tmp_59_fu_177_p5 <= (((tmp_fu_157_p4 & ap_const_lv1_0) & trunc_ln54_fu_166_p1) & ap_const_lv1_0);
    tmp_60_fu_219_p4 <= ((or_ln55_reg_285 & trunc_ln54_reg_280) & ap_const_lv1_0);
    tmp_61_fu_206_p3 <= (or_ln55_fu_194_p2 & or_ln55_1_fu_200_p2);
    tmp_62_fu_232_p4 <= ((tmp_reg_275 & ap_const_lv1_0) & or_ln55_1_reg_290);
    tmp_fu_157_p4 <= i_7_reg_258(3 downto 2);
    trunc_ln54_fu_166_p1 <= i_7_reg_258(2 - 1 downto 0);
    trunc_ln_fu_148_p4 <= i_7_reg_258(3 downto 1);
    zext_ln54_fu_189_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_59_fu_177_p5),64));
    zext_ln55_fu_214_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_61_fu_206_p3),64));
    zext_ln56_fu_240_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_62_fu_232_p4),64));
    zext_ln57_fu_227_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_60_fu_219_p4),64));
end behav;

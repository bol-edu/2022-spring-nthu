-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
-- Version: 2021.2
-- Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity TOP_seedInitialization is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    this_mt_odd_0_address0 : OUT STD_LOGIC_VECTOR (8 downto 0);
    this_mt_odd_0_ce0 : OUT STD_LOGIC;
    this_mt_odd_0_we0 : OUT STD_LOGIC;
    this_mt_odd_0_d0 : OUT STD_LOGIC_VECTOR (31 downto 0);
    this_mt_odd_0_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    this_mt_odd_0_address1 : OUT STD_LOGIC_VECTOR (8 downto 0);
    this_mt_odd_0_ce1 : OUT STD_LOGIC;
    this_mt_odd_0_q1 : IN STD_LOGIC_VECTOR (31 downto 0);
    this_mt_odd_1_address0 : OUT STD_LOGIC_VECTOR (8 downto 0);
    this_mt_odd_1_ce0 : OUT STD_LOGIC;
    this_mt_odd_1_we0 : OUT STD_LOGIC;
    this_mt_odd_1_d0 : OUT STD_LOGIC_VECTOR (31 downto 0);
    this_mt_even_0_address0 : OUT STD_LOGIC_VECTOR (8 downto 0);
    this_mt_even_0_ce0 : OUT STD_LOGIC;
    this_mt_even_0_we0 : OUT STD_LOGIC;
    this_mt_even_0_d0 : OUT STD_LOGIC_VECTOR (31 downto 0);
    this_mt_even_0_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    this_mt_even_1_address0 : OUT STD_LOGIC_VECTOR (8 downto 0);
    this_mt_even_1_ce0 : OUT STD_LOGIC;
    this_mt_even_1_we0 : OUT STD_LOGIC;
    this_mt_even_1_d0 : OUT STD_LOGIC_VECTOR (31 downto 0);
    seed : IN STD_LOGIC_VECTOR (5 downto 0);
    ap_return_0 : OUT STD_LOGIC_VECTOR (31 downto 0);
    ap_return_1 : OUT STD_LOGIC_VECTOR (31 downto 0);
    ap_return_2 : OUT STD_LOGIC_VECTOR (31 downto 0);
    ap_return_3 : OUT STD_LOGIC_VECTOR (31 downto 0) );
end;


architecture behav of TOP_seedInitialization is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (4 downto 0) := "00001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (4 downto 0) := "00010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (4 downto 0) := "00100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (4 downto 0) := "01000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (4 downto 0) := "10000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv64_0 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv64_1 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000001";
    constant ap_const_lv64_C6 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000011000110";
    constant ap_const_lv17_10DCD : STD_LOGIC_VECTOR (16 downto 0) := "10000110111001101";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";

attribute shreg_extract : string;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (4 downto 0) := "00001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal mt_reg_V_fu_111_p2 : STD_LOGIC_VECTOR (16 downto 0);
    signal mt_reg_V_reg_146 : STD_LOGIC_VECTOR (16 downto 0);
    signal zext_ln610_fu_117_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal zext_ln610_reg_151 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_94_ap_start : STD_LOGIC;
    signal grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_94_ap_done : STD_LOGIC;
    signal grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_94_ap_idle : STD_LOGIC;
    signal grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_94_ap_ready : STD_LOGIC;
    signal grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_94_this_mt_even_0_address0 : STD_LOGIC_VECTOR (8 downto 0);
    signal grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_94_this_mt_even_0_ce0 : STD_LOGIC;
    signal grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_94_this_mt_even_0_we0 : STD_LOGIC;
    signal grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_94_this_mt_even_0_d0 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_94_this_mt_even_1_address0 : STD_LOGIC_VECTOR (8 downto 0);
    signal grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_94_this_mt_even_1_ce0 : STD_LOGIC;
    signal grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_94_this_mt_even_1_we0 : STD_LOGIC;
    signal grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_94_this_mt_even_1_d0 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_94_this_mt_odd_0_address0 : STD_LOGIC_VECTOR (8 downto 0);
    signal grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_94_this_mt_odd_0_ce0 : STD_LOGIC;
    signal grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_94_this_mt_odd_0_we0 : STD_LOGIC;
    signal grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_94_this_mt_odd_0_d0 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_94_this_mt_odd_1_address0 : STD_LOGIC_VECTOR (8 downto 0);
    signal grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_94_this_mt_odd_1_ce0 : STD_LOGIC;
    signal grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_94_this_mt_odd_1_we0 : STD_LOGIC;
    signal grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_94_this_mt_odd_1_d0 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_94_ap_start_reg : STD_LOGIC := '0';
    signal ap_NS_fsm : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_NS_fsm_state2 : STD_LOGIC;
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal zext_ln0_fu_107_p1 : STD_LOGIC_VECTOR (16 downto 0);
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal ap_return_0_preg : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    signal ap_return_1_preg : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    signal ap_return_2_preg : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    signal ap_return_3_preg : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    signal ap_ST_fsm_state1_blk : STD_LOGIC;
    signal ap_ST_fsm_state2_blk : STD_LOGIC;
    signal ap_ST_fsm_state3_blk : STD_LOGIC;
    signal ap_ST_fsm_state4_blk : STD_LOGIC;
    signal ap_ST_fsm_state5_blk : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component TOP_seedInitialization_Pipeline_SEED_INIT_LOOP IS
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
    end component;



begin
    grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_94 : component TOP_seedInitialization_Pipeline_SEED_INIT_LOOP
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_94_ap_start,
        ap_done => grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_94_ap_done,
        ap_idle => grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_94_ap_idle,
        ap_ready => grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_94_ap_ready,
        zext_ln610 => mt_reg_V_reg_146,
        this_mt_even_0_address0 => grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_94_this_mt_even_0_address0,
        this_mt_even_0_ce0 => grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_94_this_mt_even_0_ce0,
        this_mt_even_0_we0 => grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_94_this_mt_even_0_we0,
        this_mt_even_0_d0 => grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_94_this_mt_even_0_d0,
        this_mt_even_1_address0 => grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_94_this_mt_even_1_address0,
        this_mt_even_1_ce0 => grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_94_this_mt_even_1_ce0,
        this_mt_even_1_we0 => grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_94_this_mt_even_1_we0,
        this_mt_even_1_d0 => grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_94_this_mt_even_1_d0,
        this_mt_odd_0_address0 => grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_94_this_mt_odd_0_address0,
        this_mt_odd_0_ce0 => grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_94_this_mt_odd_0_ce0,
        this_mt_odd_0_we0 => grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_94_this_mt_odd_0_we0,
        this_mt_odd_0_d0 => grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_94_this_mt_odd_0_d0,
        this_mt_odd_1_address0 => grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_94_this_mt_odd_1_address0,
        this_mt_odd_1_ce0 => grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_94_this_mt_odd_1_ce0,
        this_mt_odd_1_we0 => grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_94_this_mt_odd_1_we0,
        this_mt_odd_1_d0 => grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_94_this_mt_odd_1_d0);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_return_0_preg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_return_0_preg(0) <= '0';
                ap_return_0_preg(1) <= '0';
                ap_return_0_preg(2) <= '0';
                ap_return_0_preg(3) <= '0';
                ap_return_0_preg(4) <= '0';
                ap_return_0_preg(5) <= '0';
                ap_return_0_preg(6) <= '0';
                ap_return_0_preg(7) <= '0';
                ap_return_0_preg(8) <= '0';
                ap_return_0_preg(9) <= '0';
                ap_return_0_preg(10) <= '0';
                ap_return_0_preg(11) <= '0';
                ap_return_0_preg(12) <= '0';
                ap_return_0_preg(13) <= '0';
                ap_return_0_preg(14) <= '0';
                ap_return_0_preg(15) <= '0';
                ap_return_0_preg(16) <= '0';
            else
                if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
                                        ap_return_0_preg(16 downto 0) <= zext_ln610_reg_151(16 downto 0);
                end if; 
            end if;
        end if;
    end process;


    ap_return_1_preg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_return_1_preg <= ap_const_lv32_0;
            else
                if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
                    ap_return_1_preg <= this_mt_odd_0_q1;
                end if; 
            end if;
        end if;
    end process;


    ap_return_2_preg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_return_2_preg <= ap_const_lv32_0;
            else
                if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
                    ap_return_2_preg <= this_mt_even_0_q0;
                end if; 
            end if;
        end if;
    end process;


    ap_return_3_preg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_return_3_preg <= ap_const_lv32_0;
            else
                if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
                    ap_return_3_preg <= this_mt_odd_0_q0;
                end if; 
            end if;
        end if;
    end process;


    grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_94_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_94_ap_start_reg <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_const_logic_1 = ap_NS_fsm_state2))) then 
                    grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_94_ap_start_reg <= ap_const_logic_1;
                elsif ((grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_94_ap_ready = ap_const_logic_1)) then 
                    grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_94_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;

    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state1)) then
                mt_reg_V_reg_146 <= mt_reg_V_fu_111_p2;
                    zext_ln610_reg_151(16 downto 0) <= zext_ln610_fu_117_p1(16 downto 0);
            end if;
        end if;
    end process;
    zext_ln610_reg_151(31 downto 17) <= "000000000000000";
    ap_return_0_preg(31 downto 17) <= "000000000000000";

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_94_ap_done, ap_CS_fsm_state3)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                ap_NS_fsm <= ap_ST_fsm_state3;
            when ap_ST_fsm_state3 => 
                if (((grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_94_ap_done = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                    ap_NS_fsm <= ap_ST_fsm_state4;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state4 => 
                ap_NS_fsm <= ap_ST_fsm_state5;
            when ap_ST_fsm_state5 => 
                ap_NS_fsm <= ap_ST_fsm_state1;
            when others =>  
                ap_NS_fsm <= "XXXXX";
        end case;
    end process;
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);
    ap_CS_fsm_state5 <= ap_CS_fsm(4);
    ap_NS_fsm_state2 <= ap_NS_fsm(1);

    ap_ST_fsm_state1_blk_assign_proc : process(ap_start)
    begin
        if ((ap_start = ap_const_logic_0)) then 
            ap_ST_fsm_state1_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state1_blk <= ap_const_logic_0;
        end if; 
    end process;

    ap_ST_fsm_state2_blk <= ap_const_logic_0;

    ap_ST_fsm_state3_blk_assign_proc : process(grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_94_ap_done)
    begin
        if ((grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_94_ap_done = ap_const_logic_0)) then 
            ap_ST_fsm_state3_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state3_blk <= ap_const_logic_0;
        end if; 
    end process;

    ap_ST_fsm_state4_blk <= ap_const_logic_0;
    ap_ST_fsm_state5_blk <= ap_const_logic_0;

    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_CS_fsm_state5)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state5) or ((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_0)))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_CS_fsm_state5)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    ap_return_0_assign_proc : process(zext_ln610_reg_151, ap_CS_fsm_state5, ap_return_0_preg)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            ap_return_0 <= zext_ln610_reg_151;
        else 
            ap_return_0 <= ap_return_0_preg;
        end if; 
    end process;


    ap_return_1_assign_proc : process(this_mt_odd_0_q1, ap_CS_fsm_state5, ap_return_1_preg)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            ap_return_1 <= this_mt_odd_0_q1;
        else 
            ap_return_1 <= ap_return_1_preg;
        end if; 
    end process;


    ap_return_2_assign_proc : process(this_mt_even_0_q0, ap_CS_fsm_state5, ap_return_2_preg)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            ap_return_2 <= this_mt_even_0_q0;
        else 
            ap_return_2 <= ap_return_2_preg;
        end if; 
    end process;


    ap_return_3_assign_proc : process(this_mt_odd_0_q0, ap_CS_fsm_state5, ap_return_3_preg)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            ap_return_3 <= this_mt_odd_0_q0;
        else 
            ap_return_3 <= ap_return_3_preg;
        end if; 
    end process;

    grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_94_ap_start <= grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_94_ap_start_reg;
    mt_reg_V_fu_111_p2 <= std_logic_vector(unsigned(zext_ln0_fu_107_p1) + unsigned(ap_const_lv17_10DCD));

    this_mt_even_0_address0_assign_proc : process(ap_CS_fsm_state1, ap_CS_fsm_state4, grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_94_this_mt_even_0_address0, ap_CS_fsm_state3)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            this_mt_even_0_address0 <= ap_const_lv64_1(9 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state1)) then 
            this_mt_even_0_address0 <= ap_const_lv64_0(9 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            this_mt_even_0_address0 <= grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_94_this_mt_even_0_address0;
        else 
            this_mt_even_0_address0 <= "XXXXXXXXX";
        end if; 
    end process;


    this_mt_even_0_ce0_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_CS_fsm_state4, grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_94_this_mt_even_0_ce0, ap_CS_fsm_state3)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state4) or ((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1)))) then 
            this_mt_even_0_ce0 <= ap_const_logic_1;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            this_mt_even_0_ce0 <= grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_94_this_mt_even_0_ce0;
        else 
            this_mt_even_0_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    this_mt_even_0_d0_assign_proc : process(ap_CS_fsm_state1, zext_ln610_fu_117_p1, grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_94_this_mt_even_0_d0, ap_CS_fsm_state3)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state1)) then 
            this_mt_even_0_d0 <= zext_ln610_fu_117_p1;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            this_mt_even_0_d0 <= grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_94_this_mt_even_0_d0;
        else 
            this_mt_even_0_d0 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;


    this_mt_even_0_we0_assign_proc : process(ap_start, ap_CS_fsm_state1, grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_94_this_mt_even_0_we0, ap_CS_fsm_state3)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
            this_mt_even_0_we0 <= ap_const_logic_1;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            this_mt_even_0_we0 <= grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_94_this_mt_even_0_we0;
        else 
            this_mt_even_0_we0 <= ap_const_logic_0;
        end if; 
    end process;


    this_mt_even_1_address0_assign_proc : process(ap_CS_fsm_state1, grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_94_this_mt_even_1_address0, ap_CS_fsm_state3)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state1)) then 
            this_mt_even_1_address0 <= ap_const_lv64_0(9 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            this_mt_even_1_address0 <= grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_94_this_mt_even_1_address0;
        else 
            this_mt_even_1_address0 <= "XXXXXXXXX";
        end if; 
    end process;


    this_mt_even_1_ce0_assign_proc : process(ap_start, ap_CS_fsm_state1, grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_94_this_mt_even_1_ce0, ap_CS_fsm_state3)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
            this_mt_even_1_ce0 <= ap_const_logic_1;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            this_mt_even_1_ce0 <= grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_94_this_mt_even_1_ce0;
        else 
            this_mt_even_1_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    this_mt_even_1_d0_assign_proc : process(ap_CS_fsm_state1, zext_ln610_fu_117_p1, grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_94_this_mt_even_1_d0, ap_CS_fsm_state3)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state1)) then 
            this_mt_even_1_d0 <= zext_ln610_fu_117_p1;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            this_mt_even_1_d0 <= grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_94_this_mt_even_1_d0;
        else 
            this_mt_even_1_d0 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;


    this_mt_even_1_we0_assign_proc : process(ap_start, ap_CS_fsm_state1, grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_94_this_mt_even_1_we0, ap_CS_fsm_state3)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
            this_mt_even_1_we0 <= ap_const_logic_1;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            this_mt_even_1_we0 <= grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_94_this_mt_even_1_we0;
        else 
            this_mt_even_1_we0 <= ap_const_logic_0;
        end if; 
    end process;


    this_mt_odd_0_address0_assign_proc : process(ap_CS_fsm_state4, grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_94_this_mt_odd_0_address0, ap_CS_fsm_state3)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            this_mt_odd_0_address0 <= ap_const_lv64_C6(9 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            this_mt_odd_0_address0 <= grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_94_this_mt_odd_0_address0;
        else 
            this_mt_odd_0_address0 <= "XXXXXXXXX";
        end if; 
    end process;

    this_mt_odd_0_address1 <= ap_const_lv64_0(9 - 1 downto 0);

    this_mt_odd_0_ce0_assign_proc : process(ap_CS_fsm_state4, grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_94_this_mt_odd_0_ce0, ap_CS_fsm_state3)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            this_mt_odd_0_ce0 <= ap_const_logic_1;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            this_mt_odd_0_ce0 <= grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_94_this_mt_odd_0_ce0;
        else 
            this_mt_odd_0_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    this_mt_odd_0_ce1_assign_proc : process(ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            this_mt_odd_0_ce1 <= ap_const_logic_1;
        else 
            this_mt_odd_0_ce1 <= ap_const_logic_0;
        end if; 
    end process;

    this_mt_odd_0_d0 <= grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_94_this_mt_odd_0_d0;

    this_mt_odd_0_we0_assign_proc : process(grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_94_this_mt_odd_0_we0, ap_CS_fsm_state3)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            this_mt_odd_0_we0 <= grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_94_this_mt_odd_0_we0;
        else 
            this_mt_odd_0_we0 <= ap_const_logic_0;
        end if; 
    end process;

    this_mt_odd_1_address0 <= grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_94_this_mt_odd_1_address0;
    this_mt_odd_1_ce0 <= grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_94_this_mt_odd_1_ce0;
    this_mt_odd_1_d0 <= grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_94_this_mt_odd_1_d0;
    this_mt_odd_1_we0 <= grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_94_this_mt_odd_1_we0;
    zext_ln0_fu_107_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(seed),17));
    zext_ln610_fu_117_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(mt_reg_V_fu_111_p2),32));
end behav;

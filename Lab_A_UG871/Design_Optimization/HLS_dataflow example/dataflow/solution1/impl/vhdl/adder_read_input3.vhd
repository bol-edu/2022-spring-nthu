-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
-- Version: 2020.2
-- Copyright (C) Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity adder_read_input3 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    start_full_n : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    start_out : OUT STD_LOGIC;
    start_write : OUT STD_LOGIC;
    m_axi_gmem_AWVALID : OUT STD_LOGIC;
    m_axi_gmem_AWREADY : IN STD_LOGIC;
    m_axi_gmem_AWADDR : OUT STD_LOGIC_VECTOR (63 downto 0);
    m_axi_gmem_AWID : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem_AWLEN : OUT STD_LOGIC_VECTOR (31 downto 0);
    m_axi_gmem_AWSIZE : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_gmem_AWBURST : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_gmem_AWLOCK : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_gmem_AWCACHE : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_gmem_AWPROT : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_gmem_AWQOS : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_gmem_AWREGION : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_gmem_AWUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem_WVALID : OUT STD_LOGIC;
    m_axi_gmem_WREADY : IN STD_LOGIC;
    m_axi_gmem_WDATA : OUT STD_LOGIC_VECTOR (31 downto 0);
    m_axi_gmem_WSTRB : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_gmem_WLAST : OUT STD_LOGIC;
    m_axi_gmem_WID : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem_WUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem_ARVALID : OUT STD_LOGIC;
    m_axi_gmem_ARREADY : IN STD_LOGIC;
    m_axi_gmem_ARADDR : OUT STD_LOGIC_VECTOR (63 downto 0);
    m_axi_gmem_ARID : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem_ARLEN : OUT STD_LOGIC_VECTOR (31 downto 0);
    m_axi_gmem_ARSIZE : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_gmem_ARBURST : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_gmem_ARLOCK : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_gmem_ARCACHE : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_gmem_ARPROT : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_gmem_ARQOS : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_gmem_ARREGION : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_gmem_ARUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem_RVALID : IN STD_LOGIC;
    m_axi_gmem_RREADY : OUT STD_LOGIC;
    m_axi_gmem_RDATA : IN STD_LOGIC_VECTOR (31 downto 0);
    m_axi_gmem_RLAST : IN STD_LOGIC;
    m_axi_gmem_RID : IN STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem_RUSER : IN STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem_RRESP : IN STD_LOGIC_VECTOR (1 downto 0);
    m_axi_gmem_BVALID : IN STD_LOGIC;
    m_axi_gmem_BREADY : OUT STD_LOGIC;
    m_axi_gmem_BRESP : IN STD_LOGIC_VECTOR (1 downto 0);
    m_axi_gmem_BID : IN STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem_BUSER : IN STD_LOGIC_VECTOR (0 downto 0);
    in_r : IN STD_LOGIC_VECTOR (63 downto 0);
    size : IN STD_LOGIC_VECTOR (31 downto 0);
    out_r : IN STD_LOGIC_VECTOR (63 downto 0);
    inc : IN STD_LOGIC_VECTOR (31 downto 0);
    size_out_din : OUT STD_LOGIC_VECTOR (31 downto 0);
    size_out_full_n : IN STD_LOGIC;
    size_out_write : OUT STD_LOGIC;
    out_out_din : OUT STD_LOGIC_VECTOR (63 downto 0);
    out_out_full_n : IN STD_LOGIC;
    out_out_write : OUT STD_LOGIC;
    inc_out_din : OUT STD_LOGIC_VECTOR (31 downto 0);
    inc_out_full_n : IN STD_LOGIC;
    inc_out_write : OUT STD_LOGIC;
    inStream_din : OUT STD_LOGIC_VECTOR (31 downto 0);
    inStream_full_n : IN STD_LOGIC;
    inStream_write : OUT STD_LOGIC );
end;


architecture behav of adder_read_input3 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (9 downto 0) := "0000000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (9 downto 0) := "0000000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (9 downto 0) := "0000000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (9 downto 0) := "0000001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (9 downto 0) := "0000010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (9 downto 0) := "0000100000";
    constant ap_ST_fsm_state7 : STD_LOGIC_VECTOR (9 downto 0) := "0001000000";
    constant ap_ST_fsm_state8 : STD_LOGIC_VECTOR (9 downto 0) := "0010000000";
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (9 downto 0) := "0100000000";
    constant ap_ST_fsm_state12 : STD_LOGIC_VECTOR (9 downto 0) := "1000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv64_0 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_8 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001000";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv32_7 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000111";
    constant ap_const_lv31_0 : STD_LOGIC_VECTOR (30 downto 0) := "0000000000000000000000000000000";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_3F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000111111";
    constant ap_const_lv31_1 : STD_LOGIC_VECTOR (30 downto 0) := "0000000000000000000000000000001";
    constant ap_const_lv32_9 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001001";

attribute shreg_extract : string;
    signal real_start : STD_LOGIC;
    signal start_once_reg : STD_LOGIC := '0';
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (9 downto 0) := "0000000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal internal_ap_ready : STD_LOGIC;
    signal gmem_blk_n_AR : STD_LOGIC;
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal icmp_ln71_reg_200 : STD_LOGIC_VECTOR (0 downto 0);
    signal gmem_blk_n_R : STD_LOGIC;
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal icmp_ln71_1_reg_220 : STD_LOGIC_VECTOR (0 downto 0);
    signal size_out_blk_n : STD_LOGIC;
    signal out_out_blk_n : STD_LOGIC;
    signal inc_out_blk_n : STD_LOGIC;
    signal inStream_blk_n : STD_LOGIC;
    signal ap_enable_reg_pp0_iter2 : STD_LOGIC := '0';
    signal icmp_ln71_1_reg_220_pp0_iter1_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal i_reg_142 : STD_LOGIC_VECTOR (30 downto 0);
    signal icmp_ln71_fu_153_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal trunc_ln71_fu_159_p1 : STD_LOGIC_VECTOR (30 downto 0);
    signal trunc_ln71_reg_204 : STD_LOGIC_VECTOR (30 downto 0);
    signal add_ln71_fu_183_p2 : STD_LOGIC_VECTOR (30 downto 0);
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC := '0';
    signal ap_block_state9_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state10_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_state11_pp0_stage0_iter2 : BOOLEAN;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal icmp_ln71_1_fu_189_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal gmem_addr_read_reg_224 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state8 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state8 : signal is "none";
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal ap_condition_pp0_exit_iter0_state9 : STD_LOGIC;
    signal sext_ln71_fu_172_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_block_state2_io : BOOLEAN;
    signal ap_block_state1 : BOOLEAN;
    signal ap_block_pp0_stage0_01001 : BOOLEAN;
    signal trunc_ln71_1_fu_162_p4 : STD_LOGIC_VECTOR (61 downto 0);
    signal ap_CS_fsm_state12 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state12 : signal is "none";
    signal ap_NS_fsm : STD_LOGIC_VECTOR (9 downto 0);
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;


begin




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


    ap_done_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_done_reg <= ap_const_logic_0;
            else
                if ((ap_continue = ap_const_logic_1)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif ((ap_const_logic_1 = ap_CS_fsm_state12)) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter0_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter0 <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = ap_condition_pp0_exit_iter0_state9) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then 
                    ap_enable_reg_pp0_iter0 <= ap_const_logic_0;
                elsif ((ap_const_logic_1 = ap_CS_fsm_state8)) then 
                    ap_enable_reg_pp0_iter0 <= ap_const_logic_1;
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
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then
                    if ((ap_const_logic_1 = ap_condition_pp0_exit_iter0_state9)) then 
                        ap_enable_reg_pp0_iter1 <= (ap_const_logic_1 xor ap_condition_pp0_exit_iter0_state9);
                    elsif ((ap_const_boolean_1 = ap_const_boolean_1)) then 
                        ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
                    end if;
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
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
                elsif ((ap_const_logic_1 = ap_CS_fsm_state8)) then 
                    ap_enable_reg_pp0_iter2 <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    start_once_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                start_once_reg <= ap_const_logic_0;
            else
                if (((internal_ap_ready = ap_const_logic_0) and (real_start = ap_const_logic_1))) then 
                    start_once_reg <= ap_const_logic_1;
                elsif ((internal_ap_ready = ap_const_logic_1)) then 
                    start_once_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    i_reg_142_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state8)) then 
                i_reg_142 <= ap_const_lv31_0;
            elsif (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (icmp_ln71_1_fu_189_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
                i_reg_142 <= add_ln71_fu_183_p2;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (icmp_ln71_1_reg_220 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                gmem_addr_read_reg_224 <= m_axi_gmem_RDATA;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                icmp_ln71_1_reg_220 <= icmp_ln71_1_fu_189_p2;
                icmp_ln71_1_reg_220_pp0_iter1_reg <= icmp_ln71_1_reg_220;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state1)) then
                icmp_ln71_reg_200 <= icmp_ln71_fu_153_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state2) and (icmp_ln71_reg_200 = ap_const_lv1_1))) then
                trunc_ln71_reg_204 <= trunc_ln71_fu_159_p1;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (real_start, ap_done_reg, ap_CS_fsm, ap_CS_fsm_state1, size_out_full_n, out_out_full_n, inc_out_full_n, ap_CS_fsm_state2, icmp_ln71_reg_200, ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2, ap_enable_reg_pp0_iter0, icmp_ln71_1_fu_189_p2, ap_block_pp0_stage0_subdone, ap_block_state2_io)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if ((not(((ap_done_reg = ap_const_logic_1) or (real_start = ap_const_logic_0) or (inc_out_full_n = ap_const_logic_0) or (out_out_full_n = ap_const_logic_0) or (size_out_full_n = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state2) and (ap_const_boolean_0 = ap_block_state2_io) and (icmp_ln71_reg_200 = ap_const_lv1_0))) then
                    ap_NS_fsm <= ap_ST_fsm_state12;
                elsif (((ap_const_logic_1 = ap_CS_fsm_state2) and (ap_const_boolean_0 = ap_block_state2_io) and (icmp_ln71_reg_200 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state3;
                else
                    ap_NS_fsm <= ap_ST_fsm_state2;
                end if;
            when ap_ST_fsm_state3 => 
                ap_NS_fsm <= ap_ST_fsm_state4;
            when ap_ST_fsm_state4 => 
                ap_NS_fsm <= ap_ST_fsm_state5;
            when ap_ST_fsm_state5 => 
                ap_NS_fsm <= ap_ST_fsm_state6;
            when ap_ST_fsm_state6 => 
                ap_NS_fsm <= ap_ST_fsm_state7;
            when ap_ST_fsm_state7 => 
                ap_NS_fsm <= ap_ST_fsm_state8;
            when ap_ST_fsm_state8 => 
                ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
            when ap_ST_fsm_pp0_stage0 => 
                if ((not(((icmp_ln71_1_fu_189_p2 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0))) and not(((ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0))))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                elsif ((((icmp_ln71_1_fu_189_p2 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0)) or ((ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0)))) then
                    ap_NS_fsm <= ap_ST_fsm_state12;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                end if;
            when ap_ST_fsm_state12 => 
                ap_NS_fsm <= ap_ST_fsm_state1;
            when others =>  
                ap_NS_fsm <= "XXXXXXXXXX";
        end case;
    end process;
    add_ln71_fu_183_p2 <= std_logic_vector(unsigned(i_reg_142) + unsigned(ap_const_lv31_1));
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(8);
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state12 <= ap_CS_fsm(9);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state8 <= ap_CS_fsm(7);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp0_stage0_01001_assign_proc : process(m_axi_gmem_RVALID, inStream_full_n, ap_enable_reg_pp0_iter1, icmp_ln71_1_reg_220, ap_enable_reg_pp0_iter2, icmp_ln71_1_reg_220_pp0_iter1_reg)
    begin
                ap_block_pp0_stage0_01001 <= (((m_axi_gmem_RVALID = ap_const_logic_0) and (icmp_ln71_1_reg_220 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1)) or ((icmp_ln71_1_reg_220_pp0_iter1_reg = ap_const_lv1_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (inStream_full_n = ap_const_logic_0)));
    end process;


    ap_block_pp0_stage0_11001_assign_proc : process(m_axi_gmem_RVALID, inStream_full_n, ap_enable_reg_pp0_iter1, icmp_ln71_1_reg_220, ap_enable_reg_pp0_iter2, icmp_ln71_1_reg_220_pp0_iter1_reg)
    begin
                ap_block_pp0_stage0_11001 <= (((m_axi_gmem_RVALID = ap_const_logic_0) and (icmp_ln71_1_reg_220 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1)) or ((icmp_ln71_1_reg_220_pp0_iter1_reg = ap_const_lv1_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (inStream_full_n = ap_const_logic_0)));
    end process;


    ap_block_pp0_stage0_subdone_assign_proc : process(m_axi_gmem_RVALID, inStream_full_n, ap_enable_reg_pp0_iter1, icmp_ln71_1_reg_220, ap_enable_reg_pp0_iter2, icmp_ln71_1_reg_220_pp0_iter1_reg)
    begin
                ap_block_pp0_stage0_subdone <= (((m_axi_gmem_RVALID = ap_const_logic_0) and (icmp_ln71_1_reg_220 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1)) or ((icmp_ln71_1_reg_220_pp0_iter1_reg = ap_const_lv1_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (inStream_full_n = ap_const_logic_0)));
    end process;


    ap_block_state1_assign_proc : process(real_start, ap_done_reg, size_out_full_n, out_out_full_n, inc_out_full_n)
    begin
                ap_block_state1 <= ((ap_done_reg = ap_const_logic_1) or (real_start = ap_const_logic_0) or (inc_out_full_n = ap_const_logic_0) or (out_out_full_n = ap_const_logic_0) or (size_out_full_n = ap_const_logic_0));
    end process;


    ap_block_state10_pp0_stage0_iter1_assign_proc : process(m_axi_gmem_RVALID, icmp_ln71_1_reg_220)
    begin
                ap_block_state10_pp0_stage0_iter1 <= ((m_axi_gmem_RVALID = ap_const_logic_0) and (icmp_ln71_1_reg_220 = ap_const_lv1_0));
    end process;


    ap_block_state11_pp0_stage0_iter2_assign_proc : process(inStream_full_n, icmp_ln71_1_reg_220_pp0_iter1_reg)
    begin
                ap_block_state11_pp0_stage0_iter2 <= ((icmp_ln71_1_reg_220_pp0_iter1_reg = ap_const_lv1_0) and (inStream_full_n = ap_const_logic_0));
    end process;


    ap_block_state2_io_assign_proc : process(m_axi_gmem_ARREADY, icmp_ln71_reg_200)
    begin
                ap_block_state2_io <= ((m_axi_gmem_ARREADY = ap_const_logic_0) and (icmp_ln71_reg_200 = ap_const_lv1_1));
    end process;

        ap_block_state9_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_pp0_exit_iter0_state9_assign_proc : process(icmp_ln71_1_fu_189_p2)
    begin
        if ((icmp_ln71_1_fu_189_p2 = ap_const_lv1_1)) then 
            ap_condition_pp0_exit_iter0_state9 <= ap_const_logic_1;
        else 
            ap_condition_pp0_exit_iter0_state9 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_assign_proc : process(ap_done_reg, ap_CS_fsm_state12)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state12)) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_done_reg;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);

    ap_idle_assign_proc : process(real_start, ap_CS_fsm_state1)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state1) and (real_start = ap_const_logic_0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2, ap_enable_reg_pp0_iter0)
    begin
        if (((ap_enable_reg_pp0_iter0 = ap_const_logic_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;

    ap_ready <= internal_ap_ready;

    gmem_blk_n_AR_assign_proc : process(m_axi_gmem_ARREADY, ap_CS_fsm_state2, icmp_ln71_reg_200)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state2) and (icmp_ln71_reg_200 = ap_const_lv1_1))) then 
            gmem_blk_n_AR <= m_axi_gmem_ARREADY;
        else 
            gmem_blk_n_AR <= ap_const_logic_1;
        end if; 
    end process;


    gmem_blk_n_R_assign_proc : process(m_axi_gmem_RVALID, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0, icmp_ln71_1_reg_220)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (icmp_ln71_1_reg_220 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
            gmem_blk_n_R <= m_axi_gmem_RVALID;
        else 
            gmem_blk_n_R <= ap_const_logic_1;
        end if; 
    end process;

    icmp_ln71_1_fu_189_p2 <= "1" when (i_reg_142 = trunc_ln71_reg_204) else "0";
    icmp_ln71_fu_153_p2 <= "1" when (signed(size) > signed(ap_const_lv32_0)) else "0";

    inStream_blk_n_assign_proc : process(inStream_full_n, ap_block_pp0_stage0, ap_enable_reg_pp0_iter2, icmp_ln71_1_reg_220_pp0_iter1_reg)
    begin
        if (((icmp_ln71_1_reg_220_pp0_iter1_reg = ap_const_lv1_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0))) then 
            inStream_blk_n <= inStream_full_n;
        else 
            inStream_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    inStream_din <= gmem_addr_read_reg_224;

    inStream_write_assign_proc : process(ap_enable_reg_pp0_iter2, icmp_ln71_1_reg_220_pp0_iter1_reg, ap_block_pp0_stage0_11001)
    begin
        if (((icmp_ln71_1_reg_220_pp0_iter1_reg = ap_const_lv1_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            inStream_write <= ap_const_logic_1;
        else 
            inStream_write <= ap_const_logic_0;
        end if; 
    end process;


    inc_out_blk_n_assign_proc : process(real_start, ap_done_reg, ap_CS_fsm_state1, inc_out_full_n)
    begin
        if ((not(((ap_done_reg = ap_const_logic_1) or (real_start = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            inc_out_blk_n <= inc_out_full_n;
        else 
            inc_out_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    inc_out_din <= inc;

    inc_out_write_assign_proc : process(real_start, ap_done_reg, ap_CS_fsm_state1, size_out_full_n, out_out_full_n, inc_out_full_n)
    begin
        if ((not(((ap_done_reg = ap_const_logic_1) or (real_start = ap_const_logic_0) or (inc_out_full_n = ap_const_logic_0) or (out_out_full_n = ap_const_logic_0) or (size_out_full_n = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            inc_out_write <= ap_const_logic_1;
        else 
            inc_out_write <= ap_const_logic_0;
        end if; 
    end process;


    internal_ap_ready_assign_proc : process(ap_CS_fsm_state12)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state12)) then 
            internal_ap_ready <= ap_const_logic_1;
        else 
            internal_ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    m_axi_gmem_ARADDR <= sext_ln71_fu_172_p1;
    m_axi_gmem_ARBURST <= ap_const_lv2_0;
    m_axi_gmem_ARCACHE <= ap_const_lv4_0;
    m_axi_gmem_ARID <= ap_const_lv1_0;
    m_axi_gmem_ARLEN <= size;
    m_axi_gmem_ARLOCK <= ap_const_lv2_0;
    m_axi_gmem_ARPROT <= ap_const_lv3_0;
    m_axi_gmem_ARQOS <= ap_const_lv4_0;
    m_axi_gmem_ARREGION <= ap_const_lv4_0;
    m_axi_gmem_ARSIZE <= ap_const_lv3_0;
    m_axi_gmem_ARUSER <= ap_const_lv1_0;

    m_axi_gmem_ARVALID_assign_proc : process(ap_CS_fsm_state2, icmp_ln71_reg_200, ap_block_state2_io)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state2) and (ap_const_boolean_0 = ap_block_state2_io) and (icmp_ln71_reg_200 = ap_const_lv1_1))) then 
            m_axi_gmem_ARVALID <= ap_const_logic_1;
        else 
            m_axi_gmem_ARVALID <= ap_const_logic_0;
        end if; 
    end process;

    m_axi_gmem_AWADDR <= ap_const_lv64_0;
    m_axi_gmem_AWBURST <= ap_const_lv2_0;
    m_axi_gmem_AWCACHE <= ap_const_lv4_0;
    m_axi_gmem_AWID <= ap_const_lv1_0;
    m_axi_gmem_AWLEN <= ap_const_lv32_0;
    m_axi_gmem_AWLOCK <= ap_const_lv2_0;
    m_axi_gmem_AWPROT <= ap_const_lv3_0;
    m_axi_gmem_AWQOS <= ap_const_lv4_0;
    m_axi_gmem_AWREGION <= ap_const_lv4_0;
    m_axi_gmem_AWSIZE <= ap_const_lv3_0;
    m_axi_gmem_AWUSER <= ap_const_lv1_0;
    m_axi_gmem_AWVALID <= ap_const_logic_0;
    m_axi_gmem_BREADY <= ap_const_logic_0;

    m_axi_gmem_RREADY_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, icmp_ln71_1_reg_220, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (icmp_ln71_1_reg_220 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
            m_axi_gmem_RREADY <= ap_const_logic_1;
        else 
            m_axi_gmem_RREADY <= ap_const_logic_0;
        end if; 
    end process;

    m_axi_gmem_WDATA <= ap_const_lv32_0;
    m_axi_gmem_WID <= ap_const_lv1_0;
    m_axi_gmem_WLAST <= ap_const_logic_0;
    m_axi_gmem_WSTRB <= ap_const_lv4_0;
    m_axi_gmem_WUSER <= ap_const_lv1_0;
    m_axi_gmem_WVALID <= ap_const_logic_0;

    out_out_blk_n_assign_proc : process(real_start, ap_done_reg, ap_CS_fsm_state1, out_out_full_n)
    begin
        if ((not(((ap_done_reg = ap_const_logic_1) or (real_start = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            out_out_blk_n <= out_out_full_n;
        else 
            out_out_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    out_out_din <= out_r;

    out_out_write_assign_proc : process(real_start, ap_done_reg, ap_CS_fsm_state1, size_out_full_n, out_out_full_n, inc_out_full_n)
    begin
        if ((not(((ap_done_reg = ap_const_logic_1) or (real_start = ap_const_logic_0) or (inc_out_full_n = ap_const_logic_0) or (out_out_full_n = ap_const_logic_0) or (size_out_full_n = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            out_out_write <= ap_const_logic_1;
        else 
            out_out_write <= ap_const_logic_0;
        end if; 
    end process;


    real_start_assign_proc : process(ap_start, start_full_n, start_once_reg)
    begin
        if (((start_once_reg = ap_const_logic_0) and (start_full_n = ap_const_logic_0))) then 
            real_start <= ap_const_logic_0;
        else 
            real_start <= ap_start;
        end if; 
    end process;

        sext_ln71_fu_172_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(trunc_ln71_1_fu_162_p4),64));


    size_out_blk_n_assign_proc : process(real_start, ap_done_reg, ap_CS_fsm_state1, size_out_full_n)
    begin
        if ((not(((ap_done_reg = ap_const_logic_1) or (real_start = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            size_out_blk_n <= size_out_full_n;
        else 
            size_out_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    size_out_din <= size;

    size_out_write_assign_proc : process(real_start, ap_done_reg, ap_CS_fsm_state1, size_out_full_n, out_out_full_n, inc_out_full_n)
    begin
        if ((not(((ap_done_reg = ap_const_logic_1) or (real_start = ap_const_logic_0) or (inc_out_full_n = ap_const_logic_0) or (out_out_full_n = ap_const_logic_0) or (size_out_full_n = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            size_out_write <= ap_const_logic_1;
        else 
            size_out_write <= ap_const_logic_0;
        end if; 
    end process;

    start_out <= real_start;

    start_write_assign_proc : process(real_start, start_once_reg)
    begin
        if (((start_once_reg = ap_const_logic_0) and (real_start = ap_const_logic_1))) then 
            start_write <= ap_const_logic_1;
        else 
            start_write <= ap_const_logic_0;
        end if; 
    end process;

    trunc_ln71_1_fu_162_p4 <= in_r(63 downto 2);
    trunc_ln71_fu_159_p1 <= size(31 - 1 downto 0);
end behav;

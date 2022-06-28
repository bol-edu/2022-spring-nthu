-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
-- Version: 2021.2
-- Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity matrixmul is
port (
    ap_local_block : OUT STD_LOGIC;
    ap_local_deadlock : OUT STD_LOGIC;
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    a_address0 : OUT STD_LOGIC_VECTOR (3 downto 0);
    a_ce0 : OUT STD_LOGIC;
    a_q0 : IN STD_LOGIC_VECTOR (7 downto 0);
    a_address1 : OUT STD_LOGIC_VECTOR (3 downto 0);
    a_ce1 : OUT STD_LOGIC;
    a_q1 : IN STD_LOGIC_VECTOR (7 downto 0);
    b_address0 : OUT STD_LOGIC_VECTOR (3 downto 0);
    b_ce0 : OUT STD_LOGIC;
    b_q0 : IN STD_LOGIC_VECTOR (7 downto 0);
    b_address1 : OUT STD_LOGIC_VECTOR (3 downto 0);
    b_ce1 : OUT STD_LOGIC;
    b_q1 : IN STD_LOGIC_VECTOR (7 downto 0);
    res_address0 : OUT STD_LOGIC_VECTOR (3 downto 0);
    res_ce0 : OUT STD_LOGIC;
    res_we0 : OUT STD_LOGIC;
    res_d0 : OUT STD_LOGIC_VECTOR (15 downto 0) );
end;


architecture behav of matrixmul is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "matrixmul_matrixmul,hls_ip_2021_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z020-clg400-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=6.270000,HLS_SYN_LAT=24,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=117,HLS_SYN_LUT=393,HLS_VERSION=2021_2}";
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_ST_fsm_pp0_stage1 : STD_LOGIC_VECTOR (1 downto 0) := "10";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv4_9 : STD_LOGIC_VECTOR (3 downto 0) := "1001";
    constant ap_const_lv4_1 : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    constant ap_const_lv2_1 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_const_lv2_3 : STD_LOGIC_VECTOR (1 downto 0) := "11";
    constant ap_const_lv4_6 : STD_LOGIC_VECTOR (3 downto 0) := "0110";
    constant ap_const_lv4_2 : STD_LOGIC_VECTOR (3 downto 0) := "0010";
    constant ap_const_lv3_3 : STD_LOGIC_VECTOR (2 downto 0) := "011";

    signal ap_CS_fsm : STD_LOGIC_VECTOR (1 downto 0) := "01";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter2 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter3 : STD_LOGIC := '0';
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_CS_fsm_pp0_stage1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage1 : signal is "none";
    signal ap_block_state2_pp0_stage1_iter0 : BOOLEAN;
    signal ap_block_state4_pp0_stage1_iter1 : BOOLEAN;
    signal ap_block_state6_pp0_stage1_iter2 : BOOLEAN;
    signal ap_block_pp0_stage1_subdone : BOOLEAN;
    signal icmp_ln54_reg_442 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_condition_exit_pp0_iter0_stage1 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal reg_151 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_block_pp0_stage1_11001 : BOOLEAN;
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state3_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_state5_pp0_stage0_iter2 : BOOLEAN;
    signal ap_block_state7_pp0_stage0_iter3 : BOOLEAN;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal reg_156 : STD_LOGIC_VECTOR (7 downto 0);
    signal icmp_ln54_fu_200_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln54_reg_442_pp0_iter1_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal select_ln54_fu_227_p3 : STD_LOGIC_VECTOR (1 downto 0);
    signal select_ln54_reg_446 : STD_LOGIC_VECTOR (1 downto 0);
    signal select_ln54_2_fu_279_p3 : STD_LOGIC_VECTOR (3 downto 0);
    signal select_ln54_2_reg_452 : STD_LOGIC_VECTOR (3 downto 0);
    signal add_ln57_fu_302_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal add_ln57_reg_464 : STD_LOGIC_VECTOR (3 downto 0);
    signal add_ln57_reg_464_pp0_iter1_reg : STD_LOGIC_VECTOR (3 downto 0);
    signal add_ln57_reg_464_pp0_iter2_reg : STD_LOGIC_VECTOR (3 downto 0);
    signal b_load_reg_509 : STD_LOGIC_VECTOR (7 downto 0);
    signal mul_ln60_fu_394_p2 : STD_LOGIC_VECTOR (15 downto 0);
    signal grp_fu_404_p3 : STD_LOGIC_VECTOR (15 downto 0);
    signal ap_enable_reg_pp0_iter0_reg : STD_LOGIC := '0';
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal zext_ln60_8_fu_297_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal zext_ln60_3_fu_334_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_block_pp0_stage1 : BOOLEAN;
    signal zext_ln60_4_fu_344_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln60_7_fu_358_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln60_2_fu_363_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal j_cast_fu_371_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln57_1_fu_400_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal j_fu_60 : STD_LOGIC_VECTOR (1 downto 0);
    signal add_ln56_fu_308_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_loop_init : STD_LOGIC;
    signal ap_sig_allocacmp_j_load : STD_LOGIC_VECTOR (1 downto 0);
    signal i_fu_64 : STD_LOGIC_VECTOR (1 downto 0);
    signal select_ln54_1_fu_253_p3 : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_sig_allocacmp_i_1 : STD_LOGIC_VECTOR (1 downto 0);
    signal indvar_flatten_fu_68 : STD_LOGIC_VECTOR (3 downto 0);
    signal add_ln54_3_fu_206_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_sig_allocacmp_indvar_flatten_load : STD_LOGIC_VECTOR (3 downto 0);
    signal grp_fu_412_p3 : STD_LOGIC_VECTOR (15 downto 0);
    signal tmp_fu_186_p3 : STD_LOGIC_VECTOR (3 downto 0);
    signal zext_ln60_fu_182_p1 : STD_LOGIC_VECTOR (3 downto 0);
    signal icmp_ln56_fu_221_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal add_ln54_fu_215_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp_1_fu_239_p3 : STD_LOGIC_VECTOR (3 downto 0);
    signal zext_ln60_1_fu_235_p1 : STD_LOGIC_VECTOR (3 downto 0);
    signal p_shl3_cast_fu_265_p3 : STD_LOGIC_VECTOR (3 downto 0);
    signal zext_ln57_fu_261_p1 : STD_LOGIC_VECTOR (3 downto 0);
    signal sub_ln60_1_fu_247_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal sub_ln60_fu_194_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal zext_ln60_5_fu_287_p1 : STD_LOGIC_VECTOR (3 downto 0);
    signal add_ln60_3_fu_291_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal sub_ln57_fu_273_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal add_ln54_1_fu_329_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal add_ln54_2_fu_339_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal zext_ln60_6_fu_349_p1 : STD_LOGIC_VECTOR (2 downto 0);
    signal add_ln60_2_fu_352_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_continue_int : STD_LOGIC;
    signal ap_done_int : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter1_reg : STD_LOGIC;
    signal ap_condition_exit_pp0_iter2_stage0 : STD_LOGIC;
    signal ap_idle_pp0_0to1 : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter2_reg : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_idle_pp0_1to3 : STD_LOGIC;
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_start_int : STD_LOGIC;
    signal ap_condition_189 : BOOLEAN;
    signal ap_ce_reg : STD_LOGIC;

    component matrixmul_mul_8s_8s_16_1_1 IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        din0 : IN STD_LOGIC_VECTOR (7 downto 0);
        din1 : IN STD_LOGIC_VECTOR (7 downto 0);
        dout : OUT STD_LOGIC_VECTOR (15 downto 0) );
    end component;


    component matrixmul_mac_muladd_8s_8s_16s_16_4_1 IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        din2_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (7 downto 0);
        din1 : IN STD_LOGIC_VECTOR (7 downto 0);
        din2 : IN STD_LOGIC_VECTOR (15 downto 0);
        ce : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR (15 downto 0) );
    end component;


    component matrixmul_mac_muladd_8s_8s_16ns_16_4_1 IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        din2_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (7 downto 0);
        din1 : IN STD_LOGIC_VECTOR (7 downto 0);
        din2 : IN STD_LOGIC_VECTOR (15 downto 0);
        ce : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR (15 downto 0) );
    end component;


    component matrixmul_flow_control_loop_pipe IS
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
        ap_done_int : IN STD_LOGIC;
        ap_continue : IN STD_LOGIC );
    end component;



begin
    mul_8s_8s_16_1_1_U1 : component matrixmul_mul_8s_8s_16_1_1
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 8,
        din1_WIDTH => 8,
        dout_WIDTH => 16)
    port map (
        din0 => b_load_reg_509,
        din1 => reg_156,
        dout => mul_ln60_fu_394_p2);

    mac_muladd_8s_8s_16s_16_4_1_U2 : component matrixmul_mac_muladd_8s_8s_16s_16_4_1
    generic map (
        ID => 1,
        NUM_STAGE => 4,
        din0_WIDTH => 8,
        din1_WIDTH => 8,
        din2_WIDTH => 16,
        dout_WIDTH => 16)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => reg_151,
        din1 => a_q0,
        din2 => mul_ln60_fu_394_p2,
        ce => ap_const_logic_1,
        dout => grp_fu_404_p3);

    mac_muladd_8s_8s_16ns_16_4_1_U3 : component matrixmul_mac_muladd_8s_8s_16ns_16_4_1
    generic map (
        ID => 1,
        NUM_STAGE => 4,
        din0_WIDTH => 8,
        din1_WIDTH => 8,
        din2_WIDTH => 16,
        dout_WIDTH => 16)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => reg_151,
        din1 => reg_156,
        din2 => grp_fu_404_p3,
        ce => ap_const_logic_1,
        dout => grp_fu_412_p3);

    flow_control_loop_pipe_U : component matrixmul_flow_control_loop_pipe
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => ap_start,
        ap_ready => ap_ready,
        ap_done => ap_done,
        ap_start_int => ap_start_int,
        ap_loop_init => ap_loop_init,
        ap_ready_int => ap_ready_int,
        ap_loop_exit_ready => ap_condition_exit_pp0_iter0_stage1,
        ap_loop_exit_done => ap_done_int,
        ap_continue_int => ap_continue_int,
        ap_done_int => ap_done_int,
        ap_continue => ap_const_logic_1);





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
                elsif (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_loop_exit_ready_pp0_iter2_reg = ap_const_logic_1))) then 
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
                if ((ap_const_logic_1 = ap_CS_fsm_pp0_stage0)) then 
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
                if ((ap_const_logic_1 = ap_condition_exit_pp0_iter0_stage1)) then 
                    ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
                elsif (((ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_const_boolean_0 = ap_block_pp0_stage1_subdone))) then 
                    ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
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
                if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_const_boolean_0 = ap_block_pp0_stage1_subdone))) then 
                    ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter3_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter3 <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter3 = ap_const_logic_1))) then 
                    ap_enable_reg_pp0_iter3 <= ap_const_logic_0;
                elsif (((ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_const_boolean_0 = ap_block_pp0_stage1_subdone))) then 
                    ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
                end if; 
            end if;
        end if;
    end process;


    ap_loop_exit_ready_pp0_iter1_reg_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_condition_exit_pp0_iter2_stage0) and (ap_idle_pp0_0to1 = ap_const_logic_1))) then 
                ap_loop_exit_ready_pp0_iter1_reg <= ap_const_logic_0;
            elsif (((ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_const_boolean_0 = ap_block_pp0_stage1_11001))) then 
                ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
            end if; 
        end if;
    end process;

    ap_loop_exit_ready_pp0_iter2_reg_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_condition_exit_pp0_iter2_stage0) and (ap_idle_pp0_0to1 = ap_const_logic_1))) then 
                ap_loop_exit_ready_pp0_iter2_reg <= ap_const_logic_0;
            elsif (((ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_const_boolean_0 = ap_block_pp0_stage1_11001))) then 
                ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
            end if; 
        end if;
    end process;

    i_fu_64_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_1 = ap_condition_189)) then
                if ((icmp_ln54_fu_200_p2 = ap_const_lv1_0)) then 
                    i_fu_64 <= select_ln54_1_fu_253_p3;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    i_fu_64 <= ap_const_lv2_0;
                end if;
            end if; 
        end if;
    end process;

    indvar_flatten_fu_68_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_1 = ap_condition_189)) then
                if ((icmp_ln54_fu_200_p2 = ap_const_lv1_0)) then 
                    indvar_flatten_fu_68 <= add_ln54_3_fu_206_p2;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    indvar_flatten_fu_68 <= ap_const_lv4_0;
                end if;
            end if; 
        end if;
    end process;

    j_fu_60_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_1 = ap_condition_189)) then
                if ((icmp_ln54_fu_200_p2 = ap_const_lv1_0)) then 
                    j_fu_60 <= add_ln56_fu_308_p2;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    j_fu_60 <= ap_const_lv2_0;
                end if;
            end if; 
        end if;
    end process;

    reg_151_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
                reg_151 <= b_q0;
            elsif (((icmp_ln54_reg_442 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then 
                reg_151 <= b_q1;
            end if; 
        end if;
    end process;

    reg_156_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_enable_reg_pp0_iter1 = ap_const_logic_1)) then
                if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_const_boolean_0 = ap_block_pp0_stage1_11001))) then 
                    reg_156 <= a_q0;
                elsif (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
                    reg_156 <= a_q1;
                end if;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln54_fu_200_p2 = ap_const_lv1_0))) then
                add_ln57_reg_464 <= add_ln57_fu_302_p2;
                select_ln54_2_reg_452 <= select_ln54_2_fu_279_p3;
                select_ln54_reg_446 <= select_ln54_fu_227_p3;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                add_ln57_reg_464_pp0_iter1_reg <= add_ln57_reg_464;
                add_ln57_reg_464_pp0_iter2_reg <= add_ln57_reg_464_pp0_iter1_reg;
                icmp_ln54_reg_442 <= icmp_ln54_fu_200_p2;
                icmp_ln54_reg_442_pp0_iter1_reg <= icmp_ln54_reg_442;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then
                b_load_reg_509 <= b_q0;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_CS_fsm, ap_block_pp0_stage1_subdone, ap_block_pp0_stage0_subdone, ap_condition_exit_pp0_iter2_stage0, ap_idle_pp0_0to1, ap_idle_pp0_1to3, ap_start_int)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_pp0_stage0 => 
                if (((ap_const_logic_1 = ap_condition_exit_pp0_iter2_stage0) and (ap_idle_pp0_0to1 = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                elsif ((not(((ap_start_int = ap_const_logic_0) and (ap_idle_pp0_1to3 = ap_const_logic_1))) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then
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

    a_address0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_CS_fsm_pp0_stage1, ap_block_pp0_stage0, ap_block_pp0_stage1, zext_ln60_4_fu_344_p1, zext_ln60_2_fu_363_p1)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
            a_address0 <= zext_ln60_2_fu_363_p1(4 - 1 downto 0);
        elsif (((ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_const_boolean_0 = ap_block_pp0_stage1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then 
            a_address0 <= zext_ln60_4_fu_344_p1(4 - 1 downto 0);
        else 
            a_address0 <= "XXXX";
        end if; 
    end process;

    a_address1 <= zext_ln60_3_fu_334_p1(4 - 1 downto 0);

    a_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_CS_fsm_pp0_stage1, ap_block_pp0_stage1_11001, ap_block_pp0_stage0_11001)
    begin
        if ((((ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1)) or ((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1)))) then 
            a_ce0 <= ap_const_logic_1;
        else 
            a_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    a_ce1_assign_proc : process(ap_enable_reg_pp0_iter0, ap_CS_fsm_pp0_stage1, ap_block_pp0_stage1_11001)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then 
            a_ce1 <= ap_const_logic_1;
        else 
            a_ce1 <= ap_const_logic_0;
        end if; 
    end process;

    add_ln54_1_fu_329_p2 <= std_logic_vector(unsigned(select_ln54_2_reg_452) + unsigned(ap_const_lv4_1));
    add_ln54_2_fu_339_p2 <= std_logic_vector(unsigned(select_ln54_2_reg_452) + unsigned(ap_const_lv4_2));
    add_ln54_3_fu_206_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_indvar_flatten_load) + unsigned(ap_const_lv4_1));
    add_ln54_fu_215_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_i_1) + unsigned(ap_const_lv2_1));
    add_ln56_fu_308_p2 <= std_logic_vector(unsigned(select_ln54_fu_227_p3) + unsigned(ap_const_lv2_1));
    add_ln57_fu_302_p2 <= std_logic_vector(unsigned(sub_ln57_fu_273_p2) + unsigned(zext_ln60_5_fu_287_p1));
    add_ln60_2_fu_352_p2 <= std_logic_vector(unsigned(zext_ln60_6_fu_349_p1) + unsigned(ap_const_lv3_3));
    add_ln60_3_fu_291_p2 <= std_logic_vector(unsigned(zext_ln60_5_fu_287_p1) + unsigned(ap_const_lv4_6));
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
    ap_CS_fsm_pp0_stage1 <= ap_CS_fsm(1);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage1 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage1_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage1_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state1_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state2_pp0_stage1_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state3_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state4_pp0_stage1_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state5_pp0_stage0_iter2 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state6_pp0_stage1_iter2 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state7_pp0_stage0_iter3 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_189_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_11001)
    begin
                ap_condition_189 <= ((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1));
    end process;


    ap_condition_exit_pp0_iter0_stage1_assign_proc : process(ap_enable_reg_pp0_iter0, ap_CS_fsm_pp0_stage1, ap_block_pp0_stage1_subdone, icmp_ln54_reg_442)
    begin
        if (((icmp_ln54_reg_442 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_const_boolean_0 = ap_block_pp0_stage1_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then 
            ap_condition_exit_pp0_iter0_stage1 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter0_stage1 <= ap_const_logic_0;
        end if; 
    end process;


    ap_condition_exit_pp0_iter2_stage0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter2, icmp_ln54_reg_442_pp0_iter1_reg, ap_block_pp0_stage0_subdone)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (icmp_ln54_reg_442_pp0_iter1_reg = ap_const_lv1_1))) then 
            ap_condition_exit_pp0_iter2_stage0 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter2_stage0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_subdone, ap_done_reg, ap_loop_exit_ready_pp0_iter2_reg)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_loop_exit_ready_pp0_iter2_reg = ap_const_logic_1))) then 
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
        if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_start_int = ap_const_logic_0) and (ap_idle_pp0 = ap_const_logic_1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2, ap_enable_reg_pp0_iter3)
    begin
        if (((ap_enable_reg_pp0_iter3 = ap_const_logic_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_0to1_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
            ap_idle_pp0_0to1 <= ap_const_logic_1;
        else 
            ap_idle_pp0_0to1 <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_1to3_assign_proc : process(ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2, ap_enable_reg_pp0_iter3)
    begin
        if (((ap_enable_reg_pp0_iter3 = ap_const_logic_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0))) then 
            ap_idle_pp0_1to3 <= ap_const_logic_1;
        else 
            ap_idle_pp0_1to3 <= ap_const_logic_0;
        end if; 
    end process;

    ap_local_block <= ap_const_logic_0;
    ap_local_deadlock <= ap_const_logic_0;
    ap_loop_exit_ready <= ap_condition_exit_pp0_iter0_stage1;

    ap_ready_int_assign_proc : process(ap_enable_reg_pp0_iter0, ap_CS_fsm_pp0_stage1, ap_block_pp0_stage1_subdone)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_const_boolean_0 = ap_block_pp0_stage1_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then 
            ap_ready_int <= ap_const_logic_1;
        else 
            ap_ready_int <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_allocacmp_i_1_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0, ap_loop_init, i_fu_64)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_loop_init = ap_const_logic_1))) then 
            ap_sig_allocacmp_i_1 <= ap_const_lv2_0;
        else 
            ap_sig_allocacmp_i_1 <= i_fu_64;
        end if; 
    end process;


    ap_sig_allocacmp_indvar_flatten_load_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0, ap_loop_init, indvar_flatten_fu_68)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_loop_init = ap_const_logic_1))) then 
            ap_sig_allocacmp_indvar_flatten_load <= ap_const_lv4_0;
        else 
            ap_sig_allocacmp_indvar_flatten_load <= indvar_flatten_fu_68;
        end if; 
    end process;


    ap_sig_allocacmp_j_load_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0, j_fu_60, ap_loop_init)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_loop_init = ap_const_logic_1))) then 
            ap_sig_allocacmp_j_load <= ap_const_lv2_0;
        else 
            ap_sig_allocacmp_j_load <= j_fu_60;
        end if; 
    end process;


    b_address0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_CS_fsm_pp0_stage1, ap_block_pp0_stage0, ap_block_pp0_stage1, zext_ln60_7_fu_358_p1, j_cast_fu_371_p1)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
            b_address0 <= j_cast_fu_371_p1(4 - 1 downto 0);
        elsif (((ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_const_boolean_0 = ap_block_pp0_stage1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then 
            b_address0 <= zext_ln60_7_fu_358_p1(4 - 1 downto 0);
        else 
            b_address0 <= "XXXX";
        end if; 
    end process;

    b_address1 <= zext_ln60_8_fu_297_p1(4 - 1 downto 0);

    b_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_CS_fsm_pp0_stage1, ap_block_pp0_stage1_11001, ap_block_pp0_stage0_11001)
    begin
        if ((((ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1)) or ((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1)))) then 
            b_ce0 <= ap_const_logic_1;
        else 
            b_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    b_ce1_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then 
            b_ce1 <= ap_const_logic_1;
        else 
            b_ce1 <= ap_const_logic_0;
        end if; 
    end process;

    icmp_ln54_fu_200_p2 <= "1" when (ap_sig_allocacmp_indvar_flatten_load = ap_const_lv4_9) else "0";
    icmp_ln56_fu_221_p2 <= "1" when (ap_sig_allocacmp_j_load = ap_const_lv2_3) else "0";
    j_cast_fu_371_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(select_ln54_reg_446),64));
    p_shl3_cast_fu_265_p3 <= (select_ln54_1_fu_253_p3 & ap_const_lv2_0);
    res_address0 <= zext_ln57_1_fu_400_p1(4 - 1 downto 0);

    res_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter3, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter3 = ap_const_logic_1))) then 
            res_ce0 <= ap_const_logic_1;
        else 
            res_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    res_d0 <= grp_fu_412_p3;

    res_we0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter3, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter3 = ap_const_logic_1))) then 
            res_we0 <= ap_const_logic_1;
        else 
            res_we0 <= ap_const_logic_0;
        end if; 
    end process;

    select_ln54_1_fu_253_p3 <= 
        add_ln54_fu_215_p2 when (icmp_ln56_fu_221_p2(0) = '1') else 
        ap_sig_allocacmp_i_1;
    select_ln54_2_fu_279_p3 <= 
        sub_ln60_1_fu_247_p2 when (icmp_ln56_fu_221_p2(0) = '1') else 
        sub_ln60_fu_194_p2;
    select_ln54_fu_227_p3 <= 
        ap_const_lv2_0 when (icmp_ln56_fu_221_p2(0) = '1') else 
        ap_sig_allocacmp_j_load;
    sub_ln57_fu_273_p2 <= std_logic_vector(unsigned(p_shl3_cast_fu_265_p3) - unsigned(zext_ln57_fu_261_p1));
    sub_ln60_1_fu_247_p2 <= std_logic_vector(unsigned(tmp_1_fu_239_p3) - unsigned(zext_ln60_1_fu_235_p1));
    sub_ln60_fu_194_p2 <= std_logic_vector(unsigned(tmp_fu_186_p3) - unsigned(zext_ln60_fu_182_p1));
    tmp_1_fu_239_p3 <= (add_ln54_fu_215_p2 & ap_const_lv2_0);
    tmp_fu_186_p3 <= (ap_sig_allocacmp_i_1 & ap_const_lv2_0);
    zext_ln57_1_fu_400_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln57_reg_464_pp0_iter2_reg),64));
    zext_ln57_fu_261_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(select_ln54_1_fu_253_p3),4));
    zext_ln60_1_fu_235_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln54_fu_215_p2),4));
    zext_ln60_2_fu_363_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(select_ln54_2_reg_452),64));
    zext_ln60_3_fu_334_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln54_1_fu_329_p2),64));
    zext_ln60_4_fu_344_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln54_2_fu_339_p2),64));
    zext_ln60_5_fu_287_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(select_ln54_fu_227_p3),4));
    zext_ln60_6_fu_349_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(select_ln54_reg_446),3));
    zext_ln60_7_fu_358_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln60_2_fu_352_p2),64));
    zext_ln60_8_fu_297_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln60_3_fu_291_p2),64));
    zext_ln60_fu_182_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(ap_sig_allocacmp_i_1),4));
end behav;

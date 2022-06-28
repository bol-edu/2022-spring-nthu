-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity TOP_am_submul_16s_16s_24_4_1_DSP48_6 is
port (
    clk: in  std_logic;
    rst: in  std_logic;
    ce:  in  std_logic;
    in0:  in  std_logic_vector(16 - 1 downto 0);
    in1:  in  std_logic_vector(16 - 1 downto 0);
    dout: out std_logic_vector(24 - 1 downto 0));

    attribute use_dsp : string;
    attribute use_dsp of TOP_am_submul_16s_16s_24_4_1_DSP48_6 : entity is "yes";

end entity;

architecture behav of TOP_am_submul_16s_16s_24_4_1_DSP48_6 is
    signal a       : signed(17-1 downto 0);
    signal d       : signed(17-1 downto 0);
    signal m       : signed(36-1 downto 0);
    signal ad      : signed(18-1 downto 0);
    signal m_reg   : signed(36-1 downto 0);
    signal ad_reg  : signed(18-1 downto 0);
    signal p_reg   : signed(48-1 downto 0);
begin
a <= signed(resize(signed(in0), 17));
d <= signed(resize(signed(in1), 17));

ad <= resize(a, 18) - resize(d, 18);
m  <= ad_reg * ad_reg;

process (clk) begin
    if (clk'event and clk = '1') then
        if (ce = '1') then
            m_reg <= m;
            ad_reg <= ad;
            p_reg  <= resize(m_reg, 48);
        end if;
    end if;
end process;

dout <= std_logic_vector(resize(unsigned(p_reg), 24));

end architecture;
Library IEEE;
use IEEE.std_logic_1164.all;

entity TOP_am_submul_16s_16s_24_4_1 is
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER);
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        ce : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR(din0_WIDTH - 1 DOWNTO 0);
        din1 : IN STD_LOGIC_VECTOR(din1_WIDTH - 1 DOWNTO 0);
        dout : OUT STD_LOGIC_VECTOR(dout_WIDTH - 1 DOWNTO 0));
end entity;

architecture arch of TOP_am_submul_16s_16s_24_4_1 is
    component TOP_am_submul_16s_16s_24_4_1_DSP48_6 is
        port (
            clk : IN STD_LOGIC;
            rst : IN STD_LOGIC;
            ce : IN STD_LOGIC;
            in0 : IN STD_LOGIC_VECTOR;
            in1 : IN STD_LOGIC_VECTOR;
            dout : OUT STD_LOGIC_VECTOR);
    end component;



begin
    TOP_am_submul_16s_16s_24_4_1_DSP48_6_U :  component TOP_am_submul_16s_16s_24_4_1_DSP48_6
    port map (
        clk => clk,
        rst => reset,
        ce => ce,
        in0 => din0,
        in1 => din1,
        dout => dout);

end architecture;



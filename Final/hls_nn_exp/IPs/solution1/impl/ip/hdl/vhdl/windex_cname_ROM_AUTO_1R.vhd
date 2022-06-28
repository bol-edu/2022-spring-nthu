-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity windex_cname_ROM_AUTO_1R is 
    generic(
             DataWidth     : integer := 6; 
             AddressWidth     : integer := 7; 
             AddressRange    : integer := 90
    ); 
    port (
          address0      : in std_logic_vector(AddressWidth-1 downto 0); 
          ce0       : in std_logic; 
          q0         : out std_logic_vector(DataWidth-1 downto 0);
          reset     : in std_logic;
          clk       : in std_logic
    ); 
end entity; 


architecture rtl of windex_cname_ROM_AUTO_1R is 

signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 
type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 
signal mem : mem_array := (
    0 => "100001", 1 => "101001", 2 => "110010", 3 => "110000", 4 => "101100", 
    5 => "100001", 6 => "101110", 7 => "100101", 8 => "000000", 9 => "100011", 
    10 => "100001", 11 => "110010", 12 to 17=> "000000", 18 => "100010", 19 => "101001", 
    20 => "110010", 21 => "100100", 22 to 26=> "000000", 27 => "100011", 28 => "100001", 
    29 => "110100", 30 to 35=> "000000", 36 => "100100", 37 to 38=> "100101", 39 => "110010", 
    40 to 44=> "000000", 45 => "100100", 46 => "101111", 47 => "100111", 48 to 53=> "000000", 
    54 => "100110", 55 => "110010", 56 => "101111", 57 => "100111", 58 to 62=> "000000", 
    63 => "101000", 64 => "101111", 65 => "110010", 66 => "110011", 67 => "100101", 
    68 to 71=> "000000", 72 => "110011", 73 => "101000", 74 => "101001", 75 => "110000", 
    76 to 80=> "000000", 81 => "110100", 82 => "110010", 83 => "110101", 84 => "100011", 
    85 => "101011", 86 to 89=> "000000" );


begin 


memory_access_guard_0: process (address0) 
begin
      address0_tmp <= address0;
--synthesis translate_off
      if (CONV_INTEGER(address0) > AddressRange-1) then
           address0_tmp <= (others => '0');
      else 
           address0_tmp <= address0;
      end if;
--synthesis translate_on
end process;

p_rom_access: process (clk)  
begin 
    if (clk'event and clk = '1') then
        if (ce0 = '1') then 
            q0 <= mem(CONV_INTEGER(address0_tmp)); 
        end if;
    end if;
end process;

end rtl;


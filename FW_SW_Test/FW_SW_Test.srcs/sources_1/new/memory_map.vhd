----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.07.2022 09:01:23
-- Design Name: 
-- Module Name: memory_map - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------



library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
  use ieee.numeric_std.all;

entity memory_map is port( 
    clk_i : in std_logic;
    rst_i : in std_logic;
    
    write_addr_in : in std_logic_vector(6 downto 0);
    write_data_in : in std_logic_vector(31 downto 0);
    write_enable : in std_logic;
    write_roll : in STD_LOGIC_VECTOR ( 31 downto 0 );
    
    read_addr_in  : in std_logic_vector(6 downto 0);
    read_data_out : out std_logic_vector(31 downto 0);
    read_roll : out STD_LOGIC_VECTOR ( 31 downto 0 )
   
);
end entity;

architecture rtl of memory_map is 
------Signals-------
	type t_Memory is array (integer range <>) of std_logic_vector(31 downto 0);
    signal r_Mem_data : t_Memory(0 to 127) := (others => (others => '0'));
    signal r_Mem_roll : t_Memory(0 to 127) := (others => (others => '0'));
    
begin 

    process(clk_i, rst_i) is 
    begin 
        if rst_i = '1' then
            r_Mem_data <= (others => (others => '0'));
            r_Mem_roll <= (others => (others => '0'));
        elsif rising_edge(clk_i) then         
            if write_enable = '1' then 
                r_Mem_data(to_integer(unsigned(write_addr_in))) <= write_data_in;
                r_Mem_roll(to_integer(unsigned(write_addr_in))) <= write_roll;
            end if;
            
        end if;
    end process;
    
--- Output Logic - Read Data ---
read_data_out <= r_Mem_data(to_integer(unsigned(read_addr_in)));
read_roll <= r_Mem_roll(to_integer(unsigned(read_addr_in)));

end architecture;
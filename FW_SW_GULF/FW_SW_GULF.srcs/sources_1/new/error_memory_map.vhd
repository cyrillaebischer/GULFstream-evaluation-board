----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 26.07.2022 16:11:36
-- Design Name: 
-- Module Name: error_memory_map - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity error_memory_map is
  Port (
        clk_i : in std_logic;
        rst_i : in std_logic;
              
        write_error_in : in std_logic_vector(1 downto 0);
        read_error_out : out std_logic_vector(1 downto 0)        
   );
end error_memory_map;

architecture Behavioral of error_memory_map is
------Signals-------
	type t_Memory is array (integer range <>) of std_logic_vector(1 downto 0);
    signal r_Mem_error : t_Memory(0 to 0) := (others => (others => '0'));

begin 

    process(clk_i, rst_i) is 
    begin 
        if rst_i = '1' then
            r_Mem_error <= (others => (others => '0'));
                               
        elsif rising_edge(clk_i) then  
                
            if write_error_in /= X"00" then
                r_Mem_error(0) <= write_error_in;
            end if;
        end if;
    end process;
    
--- Output Logic - Read Data ---
read_error_out <= r_Mem_error(0);
    
end Behavioral;

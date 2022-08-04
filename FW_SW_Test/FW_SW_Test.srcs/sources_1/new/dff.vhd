----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Cyrill Aebischer
-- 
-- Create Date: 28.06.2022 13:57:04
-- Design Name: 
-- Module Name: dff - Behavioral
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity DFF is
    port ( 
        D_i : in std_logic;
        rst_i : in std_logic; 
        clk_i : in std_logic;
        Q_o : out std_logic;
        Qn_o : out std_logic );
end entity DFF;

architecture behavioral of DFF is
    begin
        process (rst_i, clk_i)
            begin
                if rst_i = '1' then
                Q_o <= '0';
                Qn_o <= '1';
                elsif rising_edge(clk_i) then
                Q_o <= D_i;
                Qn_o <= not D_i;
                end if;
    
    end process;
end architecture behavioral;

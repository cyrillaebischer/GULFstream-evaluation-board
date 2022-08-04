----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 28.06.2022 14:26:43
-- Design Name: 
-- Module Name: counter - Behavioral
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

entity counter is
    Port (
        en_i    : in std_logic;
        rst_i   : in std_logic;
        clk_i   : in std_logic;
        
        cnt_o   : out std_logic_vector(3 downto 0)
         );
end entity;

architecture Behavioral of counter is

    begin
        process (rst_i, clk_i)
            variable cnt_v :unsigned(3 downto 0) := (others => '0');
            
            begin
            
                if rst_i = '1' then
                    cnt_v := (others => '0');
                elsif rising_edge(clk_i) then
                    if en_i = '1' and cnt_v /= "1001" then
                        cnt_v := cnt_v + 1;
                    elsif en_i = '1' and cnt_v = "1001" then
                        cnt_v := (others => '0');
                    
                    end if;
                end if;
            
            cnt_o <= std_logic_vector(cnt_v);
        end process;
end Behavioral;

----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07.07.2022 15:59:32
-- Design Name: 
-- Module Name: clk_divider - Behavioral
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
use IEEE.numeric_std.ALL;
  
entity Clock_Divider is
    port (
        clk  : in std_logic;
        reset: in std_logic;
        clock_out: out std_logic);
end Clock_Divider;
  
architecture bhv of Clock_Divider is
  
    signal count: integer:=1;
    signal tmp : std_logic := '0';
  
begin
  
    process(clk,reset)
        begin
            if(reset='1') then
                tmp <= '1';
                count<=1;
                clock_out <='0';
            elsif rising_edge(clk) then
                
                count <=count+1;
                if (count = 5) then
                    tmp <= NOT tmp;
                    count <= 1;
                end if;
            clock_out <= tmp;
            end if;
        
    end process;
  
end bhv;

----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 28.06.2022 13:55:04
-- Design Name: 
-- Module Name: sipo - Behavioral
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
-- use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity sipo is
    port
        (
        clk_i :in std_logic;
        rst_i :in std_logic;
        data_i :in std_logic;
        data_o :out std_logic_vector(9 downto 0)
        );
end sipo;

architecture mix of sipo is
    component DFF is 
        port ( 
            D_i : in std_logic;
            rst_i : in std_logic; 
            clk_i : in std_logic;
            Q_o : out std_logic;
            Qn_o : out std_logic );
        end component;
    signal sipo_data_s : std_logic_vector(10 downto 0);
    
begin
    SIPO_data_s(0) <= data_i;
    data_o <= SIPO_data_s(10 downto 1);
    
    SIPO: for i in 10 downto 1 generate
    
        begin
            SIPO_reg: DFF
            port map(
                Q_o => SIPO_data_s(i),
                clk_i => clk_i,
                rst_i => rst_i,
                D_i => SIPO_data_s(i - 1));
        end generate;
end mix;

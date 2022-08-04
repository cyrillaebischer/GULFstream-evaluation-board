----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Cyrill Aebischer
-- 
-- Create Date: 30.06.2022 14:31:21
-- Design Name: 
-- Module Name: data_fsm - Behavioral
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

entity data_wr_fsm is
    Port (
        rst_i : in std_logic;
        clk_i : in std_logic;
        valid_i : in std_logic;
        wr_data_in : in std_logic_vector(31 downto 0);
        ro_cnt_in : in std_logic_vector(31 downto 0);
        wr_data_out : out std_logic_vector(31 downto 0);
        wr_en_o: out std_logic;
        wr_adr_o : out std_logic_vector(6 downto 0);
        ro_cnt_out : out std_logic_vector(31 downto 0)
        );
end data_wr_fsm;

architecture Behavioral of data_wr_fsm is

    type state_t is (
        RESET, IDLE, WRITE, INCR
        );

    signal state_s : state_t;
    signal adr_s : std_logic_vector(6 downto 0);
    signal data_tmp_s : std_logic_vector(31 downto 0);
    signal ro_tmp_s   : std_logic_vector(31 downto 0);
    signal wr_s  : std_logic;

begin

    process (clk_i, rst_i)
        variable adr_v : unsigned(6 downto 0) := "0000000";
        begin   
            if (rst_i='1') then
                wr_data_out <= (others => '0');
                state_s  <= RESET;
                wr_en_o     <= '0';
                adr_v := "0000000";  
                ro_cnt_out <= (others => '0');
                ro_tmp_s <= (others => '0');
            else
                if rising_edge(clk_i) then 
                    case state_s is
                        when RESET =>
                            state_s <= IDLE;   
                            wr_en_o <= '0';
                        when IDLE =>
                            wr_en_o <= '0';
                            if valid_i = '1' then
                                ro_tmp_s   <= ro_cnt_in;
                                data_tmp_s <= wr_data_in;
                                state_s <= WRITE;
                            end if;
                        when WRITE =>
                            wr_data_out <= data_tmp_s;
                            ro_cnt_out  <= ro_tmp_s;
                            wr_en_o <= '1';
                            state_s <= INCR;
                        when INCR =>
                            wr_en_o <= '0';                                                            
                            if adr_v = "1111111" then                        
                                 adr_v := "0000000";
                            else
                                adr_v := adr_v + 1;
                            end if;
                            state_s <= IDLE;

                        when others =>
                            null;                          
                    end case; 
                    wr_adr_o <= std_logic_vector(adr_v);              
                end if;
            end if;
        end process;

end Behavioral;
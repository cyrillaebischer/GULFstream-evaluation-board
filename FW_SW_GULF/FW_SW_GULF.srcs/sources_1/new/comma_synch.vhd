----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 28.06.2022 14:17:30
-- Design Name: 
-- Module Name: comma_synch - Behavioral
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

entity sync_statemachine is
    port(
        reg_i : in std_logic_vector(9 downto 0);
        clk_i : in std_logic;
        rst_i : in std_logic;
        err_i : in std_logic;
        
        reg_o : out std_logic_vector(9 downto 0);
        aligned_o : out std_logic;
        comma_o : out std_logic
    );
end sync_statemachine;

architecture Behavioral of sync_statemachine is
    component counter is
        port(
            en_i    : in std_logic;
            rst_i   : in std_logic;
            clk_i   : in std_logic;     
            cnt_o   : out std_logic_vector(3 downto 0)
             );
         end component;

    constant k28p0 : std_logic_vector(9 downto 0) := "0010111100";
    signal reg_intl_s: std_logic_vector(9 downto 0) := "0000000000";
    signal cnt_en_s,  cnt_train_en_s, rst_s, rst_cnt_s : std_logic;
    signal cnt_s, cnt_train_s: std_logic_vector(3 downto 0);

    --Type
        type FSM_state is
        (
            RESET, SCAN, TRAINING, LOCKED
        );
    signal state_s: FSM_state;
begin

    count_10: counter
        port map(
            en_i => cnt_en_s,
            rst_i => rst_s,
            clk_i => clk_i,
            cnt_o => cnt_s
        );

    
    --State machine - next state logic
        process (clk_i)
        variable cnt_train_v : integer := 0; 
        begin
            if rising_edge(clk_i) then 
                if (rst_i='1') then
                    state_s  <= RESET;
                    reg_intl_s <= (others => '0');
                    aligned_o <= '0';  
                    reg_o <= (others => '0');   
                         
                else
                    case state_s is
                        when RESET =>
                            cnt_train_v := 0;
                            aligned_o <= '0';
                            reg_intl_s <= (others => '0');
                            reg_o <= (others => '0');
                            state_s <= SCAN;

                        when SCAN =>
                            rst_cnt_s <= '1';
                            if reg_i = k28p0 then
                                reg_intl_s <= reg_i;
                                rst_cnt_s <= '0';
                                cnt_en_s <= '1';
                                state_s <= TRAINING;
                            end if;

                        when TRAINING =>                           
                            if cnt_s = "1001" and reg_i = k28p0 then
                                reg_intl_s <= reg_i;
                                if cnt_train_v = 3 then
                                    reg_o <= reg_i;
                                    if err_i = '0' then
                                        state_s <= locked;
                                    end if;
                                else 
                                    cnt_train_v := cnt_train_v + 1;
                                end if;
                            elsif cnt_s = "1001" and reg_i /= k28p0 then
                                reg_intl_s <= reg_i;
                                state_s <= SCAN;

                            end if;
                        when LOCKED =>
                            aligned_o <= '1';
                            if cnt_s = "1001" then
                                reg_intl_s <= reg_i;
                                reg_o <= reg_i;
                            elsif err_i = '1' then
                                state_s <= RESET;
                            end if;
                        when others =>
                            null;

                    end case;

                end if;
                if reg_intl_s = k28p0 then
                    comma_o <= '1';
                else 
                    comma_o <= '0';
                end if;
            end if;

            cnt_train_s <= std_logic_vector(to_unsigned(cnt_train_v,4)); 
        end process;   
        rst_s <= rst_i or rst_cnt_s;   

end Behavioral;
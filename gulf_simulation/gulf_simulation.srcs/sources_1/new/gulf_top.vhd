----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 30.06.2022 09:38:21
-- Design Name: 
-- Module Name: gulf_top - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
library UNISIM;
use UNISIM.VComponents.all;

entity gulf_top is
    Port ( en_i  : in std_logic;
           rst_i : in std_logic;
           sysclk_in_p : in std_logic;
           sysclk_in_n : in std_logic;
           data_in_p  : in std_logic;
           data_in_n  : in std_logic;
           data_out_p : out std_logic;
           data_out_n : out std_logic;
           start_o    : out std_logic           
           );
end gulf_top;

architecture Behavioral of gulf_top is

    signal clk_s, clk_i_s, clk_srcsync : std_logic;
    signal clk_i_sv : std_logic_vector(0 downto 0);
    
    component PLL IS
      PORT(
        clk_i           : in      std_logic;                      --system clock
        reset_i         : in      std_logic;                      --active low asynchronous reset
        clk_srcsync_o       : out     std_logic
        );
    end component;    
    
    COMPONENT ila_0 
    PORT (
        clk : IN STD_LOGIC;
        probe0 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
        probe1 : IN STD_LOGIC_VECTOR(0 DOWNTO 0)
    );
    END COMPONENT  ;
    
    COMPONENT data_rom
      PORT (
        clka : IN STD_LOGIC;
        addra : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
        douta : OUT STD_LOGIC_VECTOR(0 DOWNTO 0)
      );
    END COMPONENT;
    
    component data_fsm is
        Port (
            en_i : in std_logic;
            rst_i : in std_logic;
            clk_i : in std_logic;
            
            adr_o : out std_logic_vector(15 downto 0)
            );
    end component;

    signal adr_s : std_logic_vector(15 downto 0);
    signal data_sv, data_in_sv : std_logic_vector(0 downto 0);
    signal data_s, data_in_s : std_logic;

begin
    
    -- send start signal
    start_o <= en_i;
    
    datarom : data_rom
      PORT MAP (
        clka => clk_s,
        addra => adr_s,
        douta => data_sv
      );
        
    statemachine: data_fsm
        port map (
            en_i => en_i,
            clk_i => clk_s,
            rst_i => rst_i,
            adr_o => adr_s
        );
     
    OBUFDS_inst_data : OBUFDS
        generic map (
         IOSTANDARD => "DEFAULT", -- Specify the output I/O standard
         SLEW => "SLOW") -- Specify the output slew rate
        port map (
         O => data_out_p, -- Diff_p output (connect directly to top-level port)
         OB => data_out_n, -- Diff_n output (connect directly to top-level port)
         I => data_s -- Buffer input
        );
     
    ---- clock rx / tx ----
    IBUFGDS_inst_clk : IBUFGDS
        generic map (
        DIFF_TERM => FALSE, -- Differential Termination
        IBUF_LOW_PWR => TRUE, -- Low power (TRUE) vs. performance (FALSE) setting for referenced I/O standards
        IOSTANDARD => "DEFAULT")
        port map (
        O => clk_s, -- Clock buffer output
        I => sysclk_in_p, -- Diff_p clock buffer input (connect directly to top-level port)
        IB => sysclk_in_n -- Diff_n clock buffer input (connect directly to top-level port)
        );
        
    IBUFDS_inst_data : IBUFDS
        generic map (
         DIFF_TERM => FALSE, -- Differential Termination
         IBUF_LOW_PWR => TRUE, -- Low power (TRUE) vs. performance (FALSE) setting for referenced I/O standards
         IOSTANDARD => "DEFAULT")
        port map (
         O => data_in_s, -- Buffer output
         I => data_in_p, -- Diff_p buffer input (connect directly to top-level port)
         IB => data_in_n -- Diff_n buffer input (connect directly to top-level port)
        );
    
    --  signal vectors for ILA
    clk_i_sv(0) <= clk_s;
    data_s  <= data_sv(0);
    
    your_instance_name : ila_0
    PORT MAP (
        clk => clk_s,
        probe0 => data_sv,
          probe1 => clk_i_sv
    );
  
      
end Behavioral;

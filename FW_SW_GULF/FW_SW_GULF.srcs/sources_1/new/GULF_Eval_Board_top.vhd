----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Julien Küttel, Cyrill Aebischer
-- 
-- Create Date: 08.07.2022 09:12:38
-- Design Name: 
-- Module Name: GULF_Eval_Board_top - Behavioral
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
library UNISIM;
use UNISIM.VComponents.all;

entity GULF_Eval_Board_top is
  Port (
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_cas_n : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    hdmi_in_ddc_scl_io : inout STD_LOGIC;
    hdmi_in_ddc_sda_io : inout STD_LOGIC;
    spi_io0_io : inout STD_LOGIC;
    spi_io1_io : inout STD_LOGIC;
    spi_sck_io : inout STD_LOGIC;
    spi_ss_io : inout STD_LOGIC;
    
    clk_i            : in std_logic;
    rst_i            : in std_logic;
    start_i          : in std_logic;
    hdmi_in_data_1_p : in std_logic; 
    hdmi_in_data_1_n : in std_logic;  
    hdmi_in_data_2_p : in std_logic;  
    hdmi_in_data_2_n : in std_logic; 
    hdmi_in_data_3_p : in std_logic;  
    hdmi_in_data_3_n : in std_logic;  
    hdmi_in_data_4_p : in std_logic;  
    hdmi_in_data_4_n : in std_logic;  
    hdmi_in_clk_n    : in std_logic;  -- 1.27GHz
    hdmi_in_clk_p    : in std_logic;  -- 1.27GHz
    
    hdmi_out_clk_p   : out std_logic;  -- 127MHz
    hdmi_out_clk_n   : out std_logic;  -- 127MHz
    cal_mode         : out STD_LOGIC_VECTOR ( 0 to 0 ) -- Cal Mode
   );
end GULF_Eval_Board_top;

architecture Behavioral of GULF_Eval_Board_top is

--------Signals--------
 -- Clock --
signal i_FCLK_CLK0 : std_logic ; --Processor clock
signal clk_src_synch : std_logic ; -- Source Synchronous clock from GULF

-- Data transfer --
signal requst_addr_0 :  STD_LOGIC_VECTOR ( 6 downto 0 );
signal responds_data_0 :  STD_LOGIC_VECTOR ( 31 downto 0 );
signal write_addr_0 :  STD_LOGIC_VECTOR ( 6 downto 0 );
signal write_data_0 :  STD_LOGIC_VECTOR ( 31 downto 0 );
signal read_roll_0 : STD_LOGIC_VECTOR ( 31 downto 0 );
signal read_error_0 : STD_LOGIC_VECTOR ( 1 downto 0 );
signal write_roll_0 : STD_LOGIC_VECTOR ( 31 downto 0 );
signal write_error_0 : STD_LOGIC_VECTOR ( 1 downto 0 );

-- Data transfer for PL --
signal write_addr_s : STD_LOGIC_VECTOR ( 6 downto 0 );
signal write_data_s :  STD_LOGIC_VECTOR ( 31 downto 0 );
signal write_enable_s : std_logic;
signal write_roll_s : STD_LOGIC_VECTOR ( 31 downto 0 );
signal write_error_s : STD_LOGIC_VECTOR ( 1 downto 0 );
signal write_error_enable_s : std_logic;

begin
        
---- Wrapper ----
u_dut: entity work.GULF_Eval_Board_wrapper
    port map(
        DDR_addr => DDR_addr,
        DDR_ba => DDR_ba,
        DDR_cas_n => DDR_cas_n,
        DDR_ck_n => DDR_ck_n,
        DDR_ck_p =>DDR_ck_p,
        DDR_cke =>DDR_cke, 
        DDR_cs_n => DDR_cs_n,
        DDR_dm => DDR_dm,
        DDR_dq => DDR_dq,
        DDR_dqs_n => DDR_dqs_n, 
        DDR_dqs_p => DDR_dqs_p,
        DDR_odt => DDR_odt,
        DDR_ras_n => DDR_ras_n,
        DDR_reset_n => DDR_reset_n,
        DDR_we_n => DDR_we_n,
        FCLK_CLK0_0 => i_FCLK_CLK0,
        FIXED_IO_ddr_vrn => FIXED_IO_ddr_vrn,
        FIXED_IO_ddr_vrp => FIXED_IO_ddr_vrp,
        FIXED_IO_mio => FIXED_IO_mio,
        FIXED_IO_ps_clk => FIXED_IO_ps_clk,
        FIXED_IO_ps_porb =>  FIXED_IO_ps_porb,
        FIXED_IO_ps_srstb => FIXED_IO_ps_srstb,
        spi_io0_io => spi_io0_io,
        spi_io1_io => spi_io1_io,
        spi_sck_io => spi_sck_io,
        spi_ss_io => spi_ss_io,
        hdmi_in_ddc_scl_io => hdmi_in_ddc_scl_io,
        hdmi_in_ddc_sda_io => hdmi_in_ddc_sda_io,
        requst_addr_0 => requst_addr_0,
        responds_data_0 => responds_data_0,
        write_addr_0 => write_addr_0,
        write_data_0 => write_data_0,
        write_error_0 => write_error_0,
        read_roll_0 => read_roll_0,
        write_roll_0 => write_roll_0,
        read_error_0 => read_error_0,
        gpio_io_o_0(0) => cal_mode(0) 
    );

---- Memory map ----
u_mm : entity work.memory_map port map(
    rst_i => rst_i,
    clk_i => clk_i,

    write_addr_in => write_addr_s,
    write_data_in => write_data_s,
    write_enable => write_enable_s,
    write_roll => write_roll_s,

    read_addr_in  => requst_addr_0,
    read_data_out => responds_data_0,
    read_roll => read_roll_0

); 

---- Error Memory map ----
u_emm : entity work.error_memory_map port map(
    rst_i => rst_i,
    clk_i => clk_i,
    
    write_error_in => write_error_s,
    read_error_out => read_error_0
);

---- Alignment / Decode / Data Processing ----
u_eval_fw : entity work.eval_fw port map(
    clk_i   => clk_i,
    clk_src_sync_i => clk_src_synch,
    rst_i => rst_i,
    data_in_p => hdmi_in_data_1_p,
    data_in_n => hdmi_in_data_1_n,  
    start_i => start_i,
    data_wr_out => write_data_s,
    wr_en_out => write_enable_s,
    addr_wr_out => write_addr_s,
    wr_ro_out => write_roll_s,
    err_code_out => write_error_s
);

---- Input LVDS Source Sync Clock ----
IBUFDS_inst_clk : IBUFDS
    generic map (
     DIFF_TERM => FALSE, -- Differential Termination
     IBUF_LOW_PWR => TRUE, -- Low power (TRUE) vs. performance (FALSE) setting for referenced I/O standards
     IOSTANDARD => "DEFAULT")
    port map (
     O => clk_src_synch, -- Buffer output
     I => hdmi_in_clk_p, -- Diff_p buffer input (connect directly to top-level port)
     IB => hdmi_in_clk_n -- Diff_n buffer input (connect directly to top-level port)
    );

---- Output LVDS System Clock ----    
OBUFDS_inst_clk : OBUFDS
    generic map (
     IOSTANDARD => "DEFAULT", -- Specify the output I/O standard
     SLEW => "SLOW") -- Specify the output slew rate
    port map (
     O => hdmi_out_clk_p, -- Diff_p output (connect directly to top-level port)
     OB => hdmi_out_clk_n, -- Diff_n output (connect directly to top-level port)
     I => clk_i -- Buffer input
    );

end Behavioral;

--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
--Date        : Fri Jul 29 14:43:59 2022
--Host        : DESKTOP-84VSQ0D running 64-bit major release  (build 9200)
--Command     : generate_target GULF_Eval_Board_wrapper.bd
--Design      : GULF_Eval_Board_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity GULF_Eval_Board_wrapper is
  port (
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
    FCLK_CLK0_0 : out STD_LOGIC;
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    gpio_io_o_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    hdmi_in_ddc_scl_io : inout STD_LOGIC;
    hdmi_in_ddc_sda_io : inout STD_LOGIC;
    read_error_0 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    read_roll_0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    requst_addr_0 : out STD_LOGIC_VECTOR ( 6 downto 0 );
    responds_data_0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    spi_io0_io : inout STD_LOGIC;
    spi_io1_io : inout STD_LOGIC;
    spi_sck_io : inout STD_LOGIC;
    spi_ss_io : inout STD_LOGIC;
    write_addr_0 : out STD_LOGIC_VECTOR ( 6 downto 0 );
    write_data_0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    write_error_0 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    write_roll_0 : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
end GULF_Eval_Board_wrapper;

architecture STRUCTURE of GULF_Eval_Board_wrapper is
  component GULF_Eval_Board is
  port (
    DDR_cas_n : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    spi_io0_i : in STD_LOGIC;
    spi_io0_o : out STD_LOGIC;
    spi_io0_t : out STD_LOGIC;
    spi_io1_i : in STD_LOGIC;
    spi_io1_o : out STD_LOGIC;
    spi_io1_t : out STD_LOGIC;
    spi_sck_i : in STD_LOGIC;
    spi_sck_o : out STD_LOGIC;
    spi_sck_t : out STD_LOGIC;
    spi_ss_i : in STD_LOGIC;
    spi_ss_o : out STD_LOGIC;
    spi_ss_t : out STD_LOGIC;
    hdmi_in_ddc_scl_i : in STD_LOGIC;
    hdmi_in_ddc_scl_o : out STD_LOGIC;
    hdmi_in_ddc_scl_t : out STD_LOGIC;
    hdmi_in_ddc_sda_i : in STD_LOGIC;
    hdmi_in_ddc_sda_o : out STD_LOGIC;
    hdmi_in_ddc_sda_t : out STD_LOGIC;
    FCLK_CLK0_0 : out STD_LOGIC;
    gpio_io_o_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    responds_data_0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    read_roll_0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    read_error_0 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    requst_addr_0 : out STD_LOGIC_VECTOR ( 6 downto 0 );
    write_addr_0 : out STD_LOGIC_VECTOR ( 6 downto 0 );
    write_data_0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    write_roll_0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    write_error_0 : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component GULF_Eval_Board;
  component IOBUF is
  port (
    I : in STD_LOGIC;
    O : out STD_LOGIC;
    T : in STD_LOGIC;
    IO : inout STD_LOGIC
  );
  end component IOBUF;
  signal hdmi_in_ddc_scl_i : STD_LOGIC;
  signal hdmi_in_ddc_scl_o : STD_LOGIC;
  signal hdmi_in_ddc_scl_t : STD_LOGIC;
  signal hdmi_in_ddc_sda_i : STD_LOGIC;
  signal hdmi_in_ddc_sda_o : STD_LOGIC;
  signal hdmi_in_ddc_sda_t : STD_LOGIC;
  signal spi_io0_i : STD_LOGIC;
  signal spi_io0_o : STD_LOGIC;
  signal spi_io0_t : STD_LOGIC;
  signal spi_io1_i : STD_LOGIC;
  signal spi_io1_o : STD_LOGIC;
  signal spi_io1_t : STD_LOGIC;
  signal spi_sck_i : STD_LOGIC;
  signal spi_sck_o : STD_LOGIC;
  signal spi_sck_t : STD_LOGIC;
  signal spi_ss_i : STD_LOGIC;
  signal spi_ss_o : STD_LOGIC;
  signal spi_ss_t : STD_LOGIC;
begin
GULF_Eval_Board_i: component GULF_Eval_Board
     port map (
      DDR_addr(14 downto 0) => DDR_addr(14 downto 0),
      DDR_ba(2 downto 0) => DDR_ba(2 downto 0),
      DDR_cas_n => DDR_cas_n,
      DDR_ck_n => DDR_ck_n,
      DDR_ck_p => DDR_ck_p,
      DDR_cke => DDR_cke,
      DDR_cs_n => DDR_cs_n,
      DDR_dm(3 downto 0) => DDR_dm(3 downto 0),
      DDR_dq(31 downto 0) => DDR_dq(31 downto 0),
      DDR_dqs_n(3 downto 0) => DDR_dqs_n(3 downto 0),
      DDR_dqs_p(3 downto 0) => DDR_dqs_p(3 downto 0),
      DDR_odt => DDR_odt,
      DDR_ras_n => DDR_ras_n,
      DDR_reset_n => DDR_reset_n,
      DDR_we_n => DDR_we_n,
      FCLK_CLK0_0 => FCLK_CLK0_0,
      FIXED_IO_ddr_vrn => FIXED_IO_ddr_vrn,
      FIXED_IO_ddr_vrp => FIXED_IO_ddr_vrp,
      FIXED_IO_mio(53 downto 0) => FIXED_IO_mio(53 downto 0),
      FIXED_IO_ps_clk => FIXED_IO_ps_clk,
      FIXED_IO_ps_porb => FIXED_IO_ps_porb,
      FIXED_IO_ps_srstb => FIXED_IO_ps_srstb,
      gpio_io_o_0(0) => gpio_io_o_0(0),
      hdmi_in_ddc_scl_i => hdmi_in_ddc_scl_i,
      hdmi_in_ddc_scl_o => hdmi_in_ddc_scl_o,
      hdmi_in_ddc_scl_t => hdmi_in_ddc_scl_t,
      hdmi_in_ddc_sda_i => hdmi_in_ddc_sda_i,
      hdmi_in_ddc_sda_o => hdmi_in_ddc_sda_o,
      hdmi_in_ddc_sda_t => hdmi_in_ddc_sda_t,
      read_error_0(1 downto 0) => read_error_0(1 downto 0),
      read_roll_0(31 downto 0) => read_roll_0(31 downto 0),
      requst_addr_0(6 downto 0) => requst_addr_0(6 downto 0),
      responds_data_0(31 downto 0) => responds_data_0(31 downto 0),
      spi_io0_i => spi_io0_i,
      spi_io0_o => spi_io0_o,
      spi_io0_t => spi_io0_t,
      spi_io1_i => spi_io1_i,
      spi_io1_o => spi_io1_o,
      spi_io1_t => spi_io1_t,
      spi_sck_i => spi_sck_i,
      spi_sck_o => spi_sck_o,
      spi_sck_t => spi_sck_t,
      spi_ss_i => spi_ss_i,
      spi_ss_o => spi_ss_o,
      spi_ss_t => spi_ss_t,
      write_addr_0(6 downto 0) => write_addr_0(6 downto 0),
      write_data_0(31 downto 0) => write_data_0(31 downto 0),
      write_error_0(1 downto 0) => write_error_0(1 downto 0),
      write_roll_0(31 downto 0) => write_roll_0(31 downto 0)
    );
hdmi_in_ddc_scl_iobuf: component IOBUF
     port map (
      I => hdmi_in_ddc_scl_o,
      IO => hdmi_in_ddc_scl_io,
      O => hdmi_in_ddc_scl_i,
      T => hdmi_in_ddc_scl_t
    );
hdmi_in_ddc_sda_iobuf: component IOBUF
     port map (
      I => hdmi_in_ddc_sda_o,
      IO => hdmi_in_ddc_sda_io,
      O => hdmi_in_ddc_sda_i,
      T => hdmi_in_ddc_sda_t
    );
spi_io0_iobuf: component IOBUF
     port map (
      I => spi_io0_o,
      IO => spi_io0_io,
      O => spi_io0_i,
      T => spi_io0_t
    );
spi_io1_iobuf: component IOBUF
     port map (
      I => spi_io1_o,
      IO => spi_io1_io,
      O => spi_io1_i,
      T => spi_io1_t
    );
spi_sck_iobuf: component IOBUF
     port map (
      I => spi_sck_o,
      IO => spi_sck_io,
      O => spi_sck_i,
      T => spi_sck_t
    );
spi_ss_iobuf: component IOBUF
     port map (
      I => spi_ss_o,
      IO => spi_ss_io,
      O => spi_ss_i,
      T => spi_ss_t
    );
end STRUCTURE;

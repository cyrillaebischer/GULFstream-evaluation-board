-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Tue Jul 26 16:54:55 2022
-- Host        : DESKTOP-84VSQ0D running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/julie/Desktop/git/Bachelor/GULF_Eval_Board/GULF_Eval_Board.srcs/sources_1/bd/GULF_Eval_Board/ip/GULF_Eval_Board_axi_data_transfer_1_0/GULF_Eval_Board_axi_data_transfer_1_0_stub.vhdl
-- Design      : GULF_Eval_Board_axi_data_transfer_1_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity GULF_Eval_Board_axi_data_transfer_1_0 is
  Port ( 
    requst_addr : out STD_LOGIC_VECTOR ( 6 downto 0 );
    responds_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    write_addr : out STD_LOGIC_VECTOR ( 6 downto 0 );
    write_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    write_roll : out STD_LOGIC_VECTOR ( 31 downto 0 );
    read_roll : in STD_LOGIC_VECTOR ( 31 downto 0 );
    write_error : out STD_LOGIC_VECTOR ( 1 downto 0 );
    read_error : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC
  );

end GULF_Eval_Board_axi_data_transfer_1_0;

architecture stub of GULF_Eval_Board_axi_data_transfer_1_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "requst_addr[6:0],responds_data[31:0],write_addr[6:0],write_data[31:0],write_roll[31:0],read_roll[31:0],write_error[1:0],read_error[1:0],s00_axi_awaddr[4:0],s00_axi_awprot[2:0],s00_axi_awvalid,s00_axi_awready,s00_axi_wdata[31:0],s00_axi_wstrb[3:0],s00_axi_wvalid,s00_axi_wready,s00_axi_bresp[1:0],s00_axi_bvalid,s00_axi_bready,s00_axi_araddr[4:0],s00_axi_arprot[2:0],s00_axi_arvalid,s00_axi_arready,s00_axi_rdata[31:0],s00_axi_rresp[1:0],s00_axi_rvalid,s00_axi_rready,s00_axi_aclk,s00_axi_aresetn";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "axi_data_transfer_v3_0,Vivado 2018.2";
begin
end;

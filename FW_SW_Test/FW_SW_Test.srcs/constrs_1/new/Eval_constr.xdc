#Clock 1.282.. GHz
set_property -dict {PACKAGE_PIN H16 IOSTANDARD LVCMOS33} [get_ports clk_i]
create_clock -period 0.78 -name sys_clk_pin -waveform {0.000 0.39} -add [get_ports clk_i]

## Buttons
#set_property -dict {PACKAGE_PIN D19 IOSTANDARD LVCMOS33} [get_ports {btns_4bits_tri_i[0]}]
set_property -dict {PACKAGE_PIN D20 IOSTANDARD LVCMOS33} [get_ports rst_i]
#set_property -dict {PACKAGE_PIN L20 IOSTANDARD LVCMOS33} [get_ports {btns_4bits_tri_i[2]}]
#set_property -dict {PACKAGE_PIN L19 IOSTANDARD LVCMOS33} [get_ports {btns_4bits_tri_i[3]}]

## HDMI signals
#create_clock -period 8.334 -waveform {0.000 4.167} [get_ports hdmi_in_clk_p]

## HDMI RX
set_property -dict {PACKAGE_PIN P19 IOSTANDARD TMDS_33} [get_ports hdmi_in_clk_n]; #lvds SrcClk_n, clk_in_n
set_property -dict {PACKAGE_PIN N18 IOSTANDARD TMDS_33} [get_ports hdmi_in_clk_p]; #lvds SrcClk_p, clk_in_p
#set_property -dict {PACKAGE_PIN W20 IOSTANDARD TMDS_33} [get_ports {hdmi_in_data_2_n}]; #lvds Tx2n
#set_property -dict {PACKAGE_PIN V20 IOSTANDARD TMDS_33} [get_ports {hdmi_in_data_2_p}]; #lvds Tx2p
#set_property -dict {PACKAGE_PIN U20 IOSTANDARD TMDS_33} [get_ports {hdmi_in_data_3_n}]; #lvds Tx3n
#set_property -dict {PACKAGE_PIN T20 IOSTANDARD TMDS_33} [get_ports {hdmi_in_data_3_p}]; #lvds Tx3p
#set_property -dict {PACKAGE_PIN P20 IOSTANDARD TMDS_33} [get_ports {hdmi_in_data_4_n}]; #lvds Tx4n
#set_property -dict {PACKAGE_PIN N20 IOSTANDARD TMDS_33} [get_ports {hdmi_in_data_4_p}]; #lvds Tx4p
set_property -dict {PACKAGE_PIN T19 IOSTANDARD LVCMOS33} [get_ports {start_i}];
set_property -dict {PACKAGE_PIN U14 IOSTANDARD LVCMOS33} [get_ports {hdmi_in_ddc_scl_io}]; #I2C SCl
set_property -dict {PACKAGE_PIN U15 IOSTANDARD LVCMOS33} [get_ports {hdmi_in_ddc_sda_io}]; #I2C SDA

## HDMI TX
set_property -dict {PACKAGE_PIN L17 IOSTANDARD TMDS_33} [get_ports {hdmi_out_clk_n}]; #lvds SysClk_n
set_property -dict {PACKAGE_PIN L16 IOSTANDARD TMDS_33} [get_ports {hdmi_out_clk_p}]; #lvds SysClk_p
set_property -dict {PACKAGE_PIN K18 IOSTANDARD LVCMOS33} [get_ports {spi_ss_io}]; #CSLDDAC
set_property -dict {PACKAGE_PIN K17 IOSTANDARD LVCMOS33} [get_ports {spi_io0_io}]; #SDIDAC
set_property -dict {PACKAGE_PIN J19 IOSTANDARD LVCMOS33} [get_ports {spi_sck_io}]; #SCKDAC
set_property -dict {PACKAGE_PIN K19 IOSTANDARD LVCMOS33} [get_ports {cal_mode}]; #CalMode
set_property -dict {PACKAGE_PIN H18 IOSTANDARD TMDS_33} [get_ports {hdmi_in_data_1_n}]; ##lvds Tx1n
set_property -dict {PACKAGE_PIN J18 IOSTANDARD TMDS_33} [get_ports {hdmi_in_data_1_p}]; ##lvds Tx1p
#set_property -dict {PACKAGE_PIN R19 IOSTANDARD LVCMOS33} [get_ports {hdmi_out_hpd[0]}];

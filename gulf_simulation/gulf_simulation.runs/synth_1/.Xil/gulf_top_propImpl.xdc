set_property SRC_FILE_INFO {cfile:{C:/Users/Cyrill/Documents/S6/BA-GULFstream/Pynq Setup/pynq_setup_gulf/pynq_setup_gulf.srcs/constrs_1/new/physical.xdc} rfile:../../../pynq_setup_gulf.srcs/constrs_1/new/physical.xdc id:1} [current_design]
set_property src_info {type:XDC file:1 line:34 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN D19 IOSTANDARD LVCMOS33} [get_ports en_i]
set_property src_info {type:XDC file:1 line:35 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN D20 IOSTANDARD LVCMOS33} [get_ports rst_i]
set_property src_info {type:XDC file:1 line:165 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN P19   IOSTANDARD TMDS_33  } [get_ports { sysclk_in_n }]; #IO_L13N_T2_MRCC_34 Sch=hdmi_rx_clk_n
set_property src_info {type:XDC file:1 line:166 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN N18   IOSTANDARD TMDS_33  } [get_ports { sysclk_in_p }]; #IO_L13P_T2_MRCC_34 Sch=hdmi_rx_clk_p
set_property src_info {type:XDC file:1 line:171 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN P20   IOSTANDARD TMDS_33  } [get_ports { data_out_n }]; #IO_L14N_T2_SRCC_34 Sch=hdmi_rx_d_n[2]
set_property src_info {type:XDC file:1 line:172 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN N20   IOSTANDARD TMDS_33  } [get_ports { data_out_p }]; #IO_L14P_T2_SRCC_34 Sch=hdmi_rx_d_p[2]
set_property src_info {type:XDC file:1 line:188 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN R19   IOSTANDARD LVCMOS33 } [get_ports { start_o }]; #IO_0_34 Sch=hdmi_tx_hpdn
set_property src_info {type:XDC file:1 line:196 export:INPUT save:INPUT read:READ} [current_design]
set_property MARK_DEBUG false [get_nets clk_sv]
set_property src_info {type:XDC file:1 line:197 export:INPUT save:INPUT read:READ} [current_design]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property src_info {type:XDC file:1 line:198 export:INPUT save:INPUT read:READ} [current_design]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property src_info {type:XDC file:1 line:199 export:INPUT save:INPUT read:READ} [current_design]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
set_property src_info {type:XDC file:1 line:200 export:INPUT save:INPUT read:READ} [current_design]
connect_debug_port dbg_hub/clk [get_nets clk_sv]
set_property src_info {type:XDC file:1 line:202 export:INPUT save:INPUT read:READ} [current_design]
connect_debug_port u_ila_0/clk [get_nets [list clk_s_BUFG]]
set_property src_info {type:XDC file:1 line:203 export:INPUT save:INPUT read:READ} [current_design]
connect_debug_port dbg_hub/clk [get_nets clk_s_BUFG]
set_property src_info {type:XDC file:1 line:205 export:INPUT save:INPUT read:READ} [current_design]
connect_debug_port u_ila_0/clk [get_nets [list clk_i_IBUF]]
set_property src_info {type:XDC file:1 line:206 export:INPUT save:INPUT read:READ} [current_design]
connect_debug_port dbg_hub/clk [get_nets clk_i_IBUF]
set_property src_info {type:XDC file:1 line:208 export:INPUT save:INPUT read:READ} [current_design]
set_property MARK_DEBUG false [get_nets clk_s_BUFG]
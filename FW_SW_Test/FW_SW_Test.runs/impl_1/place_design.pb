
O
*Debug cores have already been implemented
153*	chipscopeZ16-240h px? 
Q
Command: %s
53*	vivadotcl2 
place_design2default:defaultZ4-113h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7z0202default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7z0202default:defaultZ17-349h px? 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px? 
V
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px? 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px? 
p
,Running DRC as a precondition to command %s
22*	vivadotcl2 
place_design2default:defaultZ4-22h px? 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px? 
V
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px? 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px? 
U

Starting %s Task
103*constraints2
Placer2default:defaultZ18-103h px? 
}
BMultithreading enabled for place_design using a maximum of %s CPUs12*	placeflow2
22default:defaultZ30-611h px? 
v

Phase %s%s
101*constraints2
1 2default:default2)
Placer Initialization2default:defaultZ18-101h px? 
?

Phase %s%s
101*constraints2
1.1 2default:default29
%Placer Initialization Netlist Sorting2default:defaultZ18-101h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:012default:default2 
00:00:00.0402default:default2
1452.3442default:default2
0.0002default:defaultZ17-268h px? 
Z
EPhase 1.1 Placer Initialization Netlist Sorting | Checksum: c05589f0
*commonh px? 
?

%s
*constraints2s
_Time (s): cpu = 00:00:01 ; elapsed = 00:00:00.058 . Memory (MB): peak = 1452.344 ; gain = 0.0002default:defaulth px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0302default:default2
1452.3442default:default2
0.0002default:defaultZ17-268h px? 
?

Phase %s%s
101*constraints2
1.2 2default:default2F
2IO Placement/ Clock Placement/ Build Placer Device2default:defaultZ18-101h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
h
SPhase 1.2 IO Placement/ Clock Placement/ Build Placer Device | Checksum: 10e665443
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:08 ; elapsed = 00:00:07 . Memory (MB): peak = 1452.344 ; gain = 0.0002default:defaulth px? 
}

Phase %s%s
101*constraints2
1.3 2default:default2.
Build Placer Netlist Model2default:defaultZ18-101h px? 
P
;Phase 1.3 Build Placer Netlist Model | Checksum: 1a3ffc65d
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:14 ; elapsed = 00:00:10 . Memory (MB): peak = 1461.078 ; gain = 8.7342default:defaulth px? 
z

Phase %s%s
101*constraints2
1.4 2default:default2+
Constrain Clocks/Macros2default:defaultZ18-101h px? 
M
8Phase 1.4 Constrain Clocks/Macros | Checksum: 1a3ffc65d
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:14 ; elapsed = 00:00:11 . Memory (MB): peak = 1461.078 ; gain = 8.7342default:defaulth px? 
I
4Phase 1 Placer Initialization | Checksum: 1a3ffc65d
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:14 ; elapsed = 00:00:11 . Memory (MB): peak = 1461.078 ; gain = 8.7342default:defaulth px? 
q

Phase %s%s
101*constraints2
2 2default:default2$
Global Placement2default:defaultZ18-101h px? 
p

Phase %s%s
101*constraints2
2.1 2default:default2!
Floorplanning2default:defaultZ18-101h px? 
C
.Phase 2.1 Floorplanning | Checksum: 1568aea46
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:16 ; elapsed = 00:00:12 . Memory (MB): peak = 1461.078 ; gain = 8.7342default:defaulth px? 


Phase %s%s
101*constraints2
2.2 2default:default20
Physical Synthesis In Placer2default:defaultZ18-101h px? 
?
=Pass %s. Identified %s candidate %s for fanout optimization.
76*physynth2
12default:default2
32default:default2
nets2default:defaultZ32-76h px? 
?
'Processed net %s. Replicated %s times.
81*physynth2?
au_dut/GULF_Eval_Board_i/axi_data_transfer_1/U0/axi_data_transfer_v3_0_S00_AXI_inst/requst_addr[1]au_dut/GULF_Eval_Board_i/axi_data_transfer_1/U0/axi_data_transfer_v3_0_S00_AXI_inst/requst_addr[1]2default:default2
112default:default8Z32-81h px? 
?
'Processed net %s. Replicated %s times.
81*physynth2?
au_dut/GULF_Eval_Board_i/axi_data_transfer_1/U0/axi_data_transfer_v3_0_S00_AXI_inst/requst_addr[0]au_dut/GULF_Eval_Board_i/axi_data_transfer_1/U0/axi_data_transfer_v3_0_S00_AXI_inst/requst_addr[0]2default:default2
112default:default8Z32-81h px? 
?
'Processed net %s. Replicated %s times.
81*physynth2?
au_dut/GULF_Eval_Board_i/axi_data_transfer_1/U0/axi_data_transfer_v3_0_S00_AXI_inst/requst_addr[2]au_dut/GULF_Eval_Board_i/axi_data_transfer_1/U0/axi_data_transfer_v3_0_S00_AXI_inst/requst_addr[2]2default:default2
52default:default8Z32-81h px? 
?
$Optimized %s %s. Created %s new %s.
216*physynth2
32default:default2
nets2default:default2
272default:default2
	instances2default:defaultZ32-232h px? 
?
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
32default:default2!
nets or cells2default:default2
272default:default2
cells2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0952default:default2
1461.0782default:default2
0.0002default:defaultZ17-268h px? 
?
DNet %s could not be optimized because driver %s could not be cloned
117*physynth2?
?mem_debuig/U0/ila_core_inst/ila_trace_memory_inst/SUBCORE_RAM_BLK_MEM_1.trace_block_memory/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/bindec_a.bindec_inst_a/ena_array[1]?mem_debuig/U0/ila_core_inst/ila_trace_memory_inst/SUBCORE_RAM_BLK_MEM_1.trace_block_memory/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/bindec_a.bindec_inst_a/ena_array[1]2default:default2?
?mem_debuig/U0/ila_core_inst/ila_trace_memory_inst/SUBCORE_RAM_BLK_MEM_1.trace_block_memory/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/bindec_a.bindec_inst_a/DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1	?mem_debuig/U0/ila_core_inst/ila_trace_memory_inst/SUBCORE_RAM_BLK_MEM_1.trace_block_memory/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/bindec_a.bindec_inst_a/DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_12default:default8Z32-117h px? 
?
DNet %s could not be optimized because driver %s could not be cloned
117*physynth2?
?mem_debuig/U0/ila_core_inst/ila_trace_memory_inst/SUBCORE_RAM_BLK_MEM_1.trace_block_memory/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/bindec_a.bindec_inst_a/ena_array[0]?mem_debuig/U0/ila_core_inst/ila_trace_memory_inst/SUBCORE_RAM_BLK_MEM_1.trace_block_memory/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/bindec_a.bindec_inst_a/ena_array[0]2default:default2?
?mem_debuig/U0/ila_core_inst/ila_trace_memory_inst/SUBCORE_RAM_BLK_MEM_1.trace_block_memory/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/bindec_a.bindec_inst_a/DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__0	?mem_debuig/U0/ila_core_inst/ila_trace_memory_inst/SUBCORE_RAM_BLK_MEM_1.trace_block_memory/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/bindec_a.bindec_inst_a/DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__02default:default8Z32-117h px? 
?
DNet %s could not be optimized because driver %s could not be cloned
117*physynth2?
>mem_debuig/U0/ila_core_inst/xsdb_memory_read_inst/enb_array[1]>mem_debuig/U0/ila_core_inst/xsdb_memory_read_inst/enb_array[1]2default:default2?
imem_debuig/U0/ila_core_inst/xsdb_memory_read_inst/DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__0	imem_debuig/U0/ila_core_inst/xsdb_memory_read_inst/DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__02default:default8Z32-117h px? 
?
DNet %s could not be optimized because driver %s could not be cloned
117*physynth2?
6mem_debuig/U0/ila_core_inst/xsdb_memory_read_inst/D[0]6mem_debuig/U0/ila_core_inst/xsdb_memory_read_inst/D[0]2default:default2?
fmem_debuig/U0/ila_core_inst/xsdb_memory_read_inst/DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_3	fmem_debuig/U0/ila_core_inst/xsdb_memory_read_inst/DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_32default:default8Z32-117h px? 
?
DNet %s could not be optimized because driver %s could not be cloned
117*physynth2?
>mem_debuig/U0/ila_core_inst/xsdb_memory_read_inst/enb_array[0]>mem_debuig/U0/ila_core_inst/xsdb_memory_read_inst/enb_array[0]2default:default2?
fmem_debuig/U0/ila_core_inst/xsdb_memory_read_inst/DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2	fmem_debuig/U0/ila_core_inst/xsdb_memory_read_inst/DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_22default:default8Z32-117h px? 
?
^Cloning is not feasible on the instance %s as the input net %s to the instance isDontTouchNet
362*physynth2?
Smem_debuig/U0/ila_core_inst/u_ila_cap_ctrl/u_cap_addrgen/i_intcap.CAP_ADDR_O_reg[5]	Smem_debuig/U0/ila_core_inst/u_ila_cap_ctrl/u_cap_addrgen/i_intcap.CAP_ADDR_O_reg[5]2default:default2?
Emem_debuig/U0/ila_core_inst/u_ila_cap_ctrl/u_cap_addrgen/icap_addr[5]Emem_debuig/U0/ila_core_inst/u_ila_cap_ctrl/u_cap_addrgen/icap_addr[5]2default:default8Z32-698h px? 
?
DNet %s could not be optimized because driver %s could not be cloned
117*physynth2?
?mem_debuig/U0/ila_core_inst/u_ila_cap_ctrl/u_cap_addrgen/out[5]?mem_debuig/U0/ila_core_inst/u_ila_cap_ctrl/u_cap_addrgen/out[5]2default:default2?
Smem_debuig/U0/ila_core_inst/u_ila_cap_ctrl/u_cap_addrgen/i_intcap.CAP_ADDR_O_reg[5]	Smem_debuig/U0/ila_core_inst/u_ila_cap_ctrl/u_cap_addrgen/i_intcap.CAP_ADDR_O_reg[5]2default:default8Z32-117h px? 
?
^Cloning is not feasible on the instance %s as the input net %s to the instance isDontTouchNet
362*physynth2?
Tmem_debuig/U0/ila_core_inst/u_ila_cap_ctrl/u_cap_addrgen/i_intcap.CAP_ADDR_O_reg[10]	Tmem_debuig/U0/ila_core_inst/u_ila_cap_ctrl/u_cap_addrgen/i_intcap.CAP_ADDR_O_reg[10]2default:default2?
Fmem_debuig/U0/ila_core_inst/u_ila_cap_ctrl/u_cap_addrgen/icap_addr[10]Fmem_debuig/U0/ila_core_inst/u_ila_cap_ctrl/u_cap_addrgen/icap_addr[10]2default:default8Z32-698h px? 
?
DNet %s could not be optimized because driver %s could not be cloned
117*physynth2?
@mem_debuig/U0/ila_core_inst/u_ila_cap_ctrl/u_cap_addrgen/out[10]@mem_debuig/U0/ila_core_inst/u_ila_cap_ctrl/u_cap_addrgen/out[10]2default:default2?
Tmem_debuig/U0/ila_core_inst/u_ila_cap_ctrl/u_cap_addrgen/i_intcap.CAP_ADDR_O_reg[10]	Tmem_debuig/U0/ila_core_inst/u_ila_cap_ctrl/u_cap_addrgen/i_intcap.CAP_ADDR_O_reg[10]2default:default8Z32-117h px? 
?
^Cloning is not feasible on the instance %s as the input net %s to the instance isDontTouchNet
362*physynth2?
Smem_debuig/U0/ila_core_inst/u_ila_cap_ctrl/u_cap_addrgen/i_intcap.CAP_ADDR_O_reg[9]	Smem_debuig/U0/ila_core_inst/u_ila_cap_ctrl/u_cap_addrgen/i_intcap.CAP_ADDR_O_reg[9]2default:default2?
Emem_debuig/U0/ila_core_inst/u_ila_cap_ctrl/u_cap_addrgen/icap_addr[9]Emem_debuig/U0/ila_core_inst/u_ila_cap_ctrl/u_cap_addrgen/icap_addr[9]2default:default8Z32-698h px? 
?
DNet %s could not be optimized because driver %s could not be cloned
117*physynth2?
?mem_debuig/U0/ila_core_inst/u_ila_cap_ctrl/u_cap_addrgen/out[9]?mem_debuig/U0/ila_core_inst/u_ila_cap_ctrl/u_cap_addrgen/out[9]2default:default2?
Smem_debuig/U0/ila_core_inst/u_ila_cap_ctrl/u_cap_addrgen/i_intcap.CAP_ADDR_O_reg[9]	Smem_debuig/U0/ila_core_inst/u_ila_cap_ctrl/u_cap_addrgen/i_intcap.CAP_ADDR_O_reg[9]2default:default8Z32-117h px? 
?
^Cloning is not feasible on the instance %s as the input net %s to the instance isDontTouchNet
362*physynth2?
Smem_debuig/U0/ila_core_inst/u_ila_cap_ctrl/u_cap_addrgen/i_intcap.CAP_ADDR_O_reg[8]	Smem_debuig/U0/ila_core_inst/u_ila_cap_ctrl/u_cap_addrgen/i_intcap.CAP_ADDR_O_reg[8]2default:default2?
Emem_debuig/U0/ila_core_inst/u_ila_cap_ctrl/u_cap_addrgen/icap_addr[8]Emem_debuig/U0/ila_core_inst/u_ila_cap_ctrl/u_cap_addrgen/icap_addr[8]2default:default8Z32-698h px? 
?
DNet %s could not be optimized because driver %s could not be cloned
117*physynth2?
?mem_debuig/U0/ila_core_inst/u_ila_cap_ctrl/u_cap_addrgen/out[8]?mem_debuig/U0/ila_core_inst/u_ila_cap_ctrl/u_cap_addrgen/out[8]2default:default2?
Smem_debuig/U0/ila_core_inst/u_ila_cap_ctrl/u_cap_addrgen/i_intcap.CAP_ADDR_O_reg[8]	Smem_debuig/U0/ila_core_inst/u_ila_cap_ctrl/u_cap_addrgen/i_intcap.CAP_ADDR_O_reg[8]2default:default8Z32-117h px? 
?
^Cloning is not feasible on the instance %s as the input net %s to the instance isDontTouchNet
362*physynth2?
Tmem_debuig/U0/ila_core_inst/u_ila_cap_ctrl/u_cap_addrgen/i_intcap.CAP_ADDR_O_reg[11]	Tmem_debuig/U0/ila_core_inst/u_ila_cap_ctrl/u_cap_addrgen/i_intcap.CAP_ADDR_O_reg[11]2default:default2?
Fmem_debuig/U0/ila_core_inst/u_ila_cap_ctrl/u_cap_addrgen/icap_addr[11]Fmem_debuig/U0/ila_core_inst/u_ila_cap_ctrl/u_cap_addrgen/icap_addr[11]2default:default8Z32-698h px? 
?
DNet %s could not be optimized because driver %s could not be cloned
117*physynth2?
@mem_debuig/U0/ila_core_inst/u_ila_cap_ctrl/u_cap_addrgen/out[11]@mem_debuig/U0/ila_core_inst/u_ila_cap_ctrl/u_cap_addrgen/out[11]2default:default2?
Tmem_debuig/U0/ila_core_inst/u_ila_cap_ctrl/u_cap_addrgen/i_intcap.CAP_ADDR_O_reg[11]	Tmem_debuig/U0/ila_core_inst/u_ila_cap_ctrl/u_cap_addrgen/i_intcap.CAP_ADDR_O_reg[11]2default:default8Z32-117h px? 
?
^Cloning is not feasible on the instance %s as the input net %s to the instance isDontTouchNet
362*physynth2?
Smem_debuig/U0/ila_core_inst/u_ila_cap_ctrl/u_cap_addrgen/i_intcap.CAP_ADDR_O_reg[7]	Smem_debuig/U0/ila_core_inst/u_ila_cap_ctrl/u_cap_addrgen/i_intcap.CAP_ADDR_O_reg[7]2default:default2?
Emem_debuig/U0/ila_core_inst/u_ila_cap_ctrl/u_cap_addrgen/icap_addr[7]Emem_debuig/U0/ila_core_inst/u_ila_cap_ctrl/u_cap_addrgen/icap_addr[7]2default:default8Z32-698h px? 
?
DNet %s could not be optimized because driver %s could not be cloned
117*physynth2?
?mem_debuig/U0/ila_core_inst/u_ila_cap_ctrl/u_cap_addrgen/out[7]?mem_debuig/U0/ila_core_inst/u_ila_cap_ctrl/u_cap_addrgen/out[7]2default:default2?
Smem_debuig/U0/ila_core_inst/u_ila_cap_ctrl/u_cap_addrgen/i_intcap.CAP_ADDR_O_reg[7]	Smem_debuig/U0/ila_core_inst/u_ila_cap_ctrl/u_cap_addrgen/i_intcap.CAP_ADDR_O_reg[7]2default:default8Z32-117h px? 
?
^Cloning is not feasible on the instance %s as the input net %s to the instance isDontTouchNet
362*physynth2?
Smem_debuig/U0/ila_core_inst/u_ila_cap_ctrl/u_cap_addrgen/i_intcap.CAP_ADDR_O_reg[4]	Smem_debuig/U0/ila_core_inst/u_ila_cap_ctrl/u_cap_addrgen/i_intcap.CAP_ADDR_O_reg[4]2default:default2?
Emem_debuig/U0/ila_core_inst/u_ila_cap_ctrl/u_cap_addrgen/icap_addr[4]Emem_debuig/U0/ila_core_inst/u_ila_cap_ctrl/u_cap_addrgen/icap_addr[4]2default:default8Z32-698h px? 
?
DNet %s could not be optimized because driver %s could not be cloned
117*physynth2?
?mem_debuig/U0/ila_core_inst/u_ila_cap_ctrl/u_cap_addrgen/out[4]?mem_debuig/U0/ila_core_inst/u_ila_cap_ctrl/u_cap_addrgen/out[4]2default:default2?
Smem_debuig/U0/ila_core_inst/u_ila_cap_ctrl/u_cap_addrgen/i_intcap.CAP_ADDR_O_reg[4]	Smem_debuig/U0/ila_core_inst/u_ila_cap_ctrl/u_cap_addrgen/i_intcap.CAP_ADDR_O_reg[4]2default:default8Z32-117h px? 
?
^Cloning is not feasible on the instance %s as the input net %s to the instance isDontTouchNet
362*physynth2?
Smem_debuig/U0/ila_core_inst/u_ila_cap_ctrl/u_cap_addrgen/i_intcap.CAP_ADDR_O_reg[6]	Smem_debuig/U0/ila_core_inst/u_ila_cap_ctrl/u_cap_addrgen/i_intcap.CAP_ADDR_O_reg[6]2default:default2?
Emem_debuig/U0/ila_core_inst/u_ila_cap_ctrl/u_cap_addrgen/icap_addr[6]Emem_debuig/U0/ila_core_inst/u_ila_cap_ctrl/u_cap_addrgen/icap_addr[6]2default:default8Z32-698h px? 
?
DNet %s could not be optimized because driver %s could not be cloned
117*physynth2?
?mem_debuig/U0/ila_core_inst/u_ila_cap_ctrl/u_cap_addrgen/out[6]?mem_debuig/U0/ila_core_inst/u_ila_cap_ctrl/u_cap_addrgen/out[6]2default:default2?
Smem_debuig/U0/ila_core_inst/u_ila_cap_ctrl/u_cap_addrgen/i_intcap.CAP_ADDR_O_reg[6]	Smem_debuig/U0/ila_core_inst/u_ila_cap_ctrl/u_cap_addrgen/i_intcap.CAP_ADDR_O_reg[6]2default:default8Z32-117h px? 
?
^Cloning is not feasible on the instance %s as the input net %s to the instance isDontTouchNet
362*physynth2?
Smem_debuig/U0/ila_core_inst/u_ila_cap_ctrl/u_cap_addrgen/i_intcap.CAP_ADDR_O_reg[1]	Smem_debuig/U0/ila_core_inst/u_ila_cap_ctrl/u_cap_addrgen/i_intcap.CAP_ADDR_O_reg[1]2default:default2?
Emem_debuig/U0/ila_core_inst/u_ila_cap_ctrl/u_cap_addrgen/icap_addr[1]Emem_debuig/U0/ila_core_inst/u_ila_cap_ctrl/u_cap_addrgen/icap_addr[1]2default:default8Z32-698h px? 
?
DNet %s could not be optimized because driver %s could not be cloned
117*physynth2?
?mem_debuig/U0/ila_core_inst/u_ila_cap_ctrl/u_cap_addrgen/out[1]?mem_debuig/U0/ila_core_inst/u_ila_cap_ctrl/u_cap_addrgen/out[1]2default:default2?
Smem_debuig/U0/ila_core_inst/u_ila_cap_ctrl/u_cap_addrgen/i_intcap.CAP_ADDR_O_reg[1]	Smem_debuig/U0/ila_core_inst/u_ila_cap_ctrl/u_cap_addrgen/i_intcap.CAP_ADDR_O_reg[1]2default:default8Z32-117h px? 
?
^Cloning is not feasible on the instance %s as the input net %s to the instance isDontTouchNet
362*physynth2?
Smem_debuig/U0/ila_core_inst/u_ila_cap_ctrl/u_cap_addrgen/i_intcap.CAP_ADDR_O_reg[2]	Smem_debuig/U0/ila_core_inst/u_ila_cap_ctrl/u_cap_addrgen/i_intcap.CAP_ADDR_O_reg[2]2default:default2?
Emem_debuig/U0/ila_core_inst/u_ila_cap_ctrl/u_cap_addrgen/icap_addr[2]Emem_debuig/U0/ila_core_inst/u_ila_cap_ctrl/u_cap_addrgen/icap_addr[2]2default:default8Z32-698h px? 
?
DNet %s could not be optimized because driver %s could not be cloned
117*physynth2?
?mem_debuig/U0/ila_core_inst/u_ila_cap_ctrl/u_cap_addrgen/out[2]?mem_debuig/U0/ila_core_inst/u_ila_cap_ctrl/u_cap_addrgen/out[2]2default:default2?
Smem_debuig/U0/ila_core_inst/u_ila_cap_ctrl/u_cap_addrgen/i_intcap.CAP_ADDR_O_reg[2]	Smem_debuig/U0/ila_core_inst/u_ila_cap_ctrl/u_cap_addrgen/i_intcap.CAP_ADDR_O_reg[2]2default:default8Z32-117h px? 
?
^Cloning is not feasible on the instance %s as the input net %s to the instance isDontTouchNet
362*physynth2?
Smem_debuig/U0/ila_core_inst/u_ila_cap_ctrl/u_cap_addrgen/i_intcap.CAP_ADDR_O_reg[0]	Smem_debuig/U0/ila_core_inst/u_ila_cap_ctrl/u_cap_addrgen/i_intcap.CAP_ADDR_O_reg[0]2default:default2?
Emem_debuig/U0/ila_core_inst/u_ila_cap_ctrl/u_cap_addrgen/icap_addr[0]Emem_debuig/U0/ila_core_inst/u_ila_cap_ctrl/u_cap_addrgen/icap_addr[0]2default:default8Z32-698h px? 
?
DNet %s could not be optimized because driver %s could not be cloned
117*physynth2?
?mem_debuig/U0/ila_core_inst/u_ila_cap_ctrl/u_cap_addrgen/out[0]?mem_debuig/U0/ila_core_inst/u_ila_cap_ctrl/u_cap_addrgen/out[0]2default:default2?
Smem_debuig/U0/ila_core_inst/u_ila_cap_ctrl/u_cap_addrgen/i_intcap.CAP_ADDR_O_reg[0]	Smem_debuig/U0/ila_core_inst/u_ila_cap_ctrl/u_cap_addrgen/i_intcap.CAP_ADDR_O_reg[0]2default:default8Z32-117h px? 
?
^Cloning is not feasible on the instance %s as the input net %s to the instance isDontTouchNet
362*physynth2?
Smem_debuig/U0/ila_core_inst/u_ila_cap_ctrl/u_cap_addrgen/i_intcap.CAP_ADDR_O_reg[3]	Smem_debuig/U0/ila_core_inst/u_ila_cap_ctrl/u_cap_addrgen/i_intcap.CAP_ADDR_O_reg[3]2default:default2?
Emem_debuig/U0/ila_core_inst/u_ila_cap_ctrl/u_cap_addrgen/icap_addr[3]Emem_debuig/U0/ila_core_inst/u_ila_cap_ctrl/u_cap_addrgen/icap_addr[3]2default:default8Z32-698h px? 
?
DNet %s could not be optimized because driver %s could not be cloned
117*physynth2?
?mem_debuig/U0/ila_core_inst/u_ila_cap_ctrl/u_cap_addrgen/out[3]?mem_debuig/U0/ila_core_inst/u_ila_cap_ctrl/u_cap_addrgen/out[3]2default:default2?
Smem_debuig/U0/ila_core_inst/u_ila_cap_ctrl/u_cap_addrgen/i_intcap.CAP_ADDR_O_reg[3]	Smem_debuig/U0/ila_core_inst/u_ila_cap_ctrl/u_cap_addrgen/i_intcap.CAP_ADDR_O_reg[3]2default:default8Z32-117h px? 
?
;Identified %s candidate %s for critical-cell optimization.
46*physynth2
122default:default2
nets2default:defaultZ32-46h px? 
?
'Processed net %s. Replicated %s times.
81*physynth2?
6mem_debuig/U0/ila_core_inst/xsdb_memory_read_inst/Q[4]6mem_debuig/U0/ila_core_inst/xsdb_memory_read_inst/Q[4]2default:default2
12default:default8Z32-81h px? 
?
'Processed net %s. Replicated %s times.
81*physynth2?
6mem_debuig/U0/ila_core_inst/xsdb_memory_read_inst/Q[0]6mem_debuig/U0/ila_core_inst/xsdb_memory_read_inst/Q[0]2default:default2
12default:default8Z32-81h px? 
?
'Processed net %s. Replicated %s times.
81*physynth2?
7mem_debuig/U0/ila_core_inst/xsdb_memory_read_inst/Q[10]7mem_debuig/U0/ila_core_inst/xsdb_memory_read_inst/Q[10]2default:default2
12default:default8Z32-81h px? 
?
'Processed net %s. Replicated %s times.
81*physynth2?
6mem_debuig/U0/ila_core_inst/xsdb_memory_read_inst/Q[5]6mem_debuig/U0/ila_core_inst/xsdb_memory_read_inst/Q[5]2default:default2
12default:default8Z32-81h px? 
?
'Processed net %s. Replicated %s times.
81*physynth2?
6mem_debuig/U0/ila_core_inst/xsdb_memory_read_inst/Q[9]6mem_debuig/U0/ila_core_inst/xsdb_memory_read_inst/Q[9]2default:default2
12default:default8Z32-81h px? 
?
'Processed net %s. Replicated %s times.
81*physynth2?
7mem_debuig/U0/ila_core_inst/xsdb_memory_read_inst/Q[11]7mem_debuig/U0/ila_core_inst/xsdb_memory_read_inst/Q[11]2default:default2
12default:default8Z32-81h px? 
?
'Processed net %s. Replicated %s times.
81*physynth2?
6mem_debuig/U0/ila_core_inst/xsdb_memory_read_inst/Q[1]6mem_debuig/U0/ila_core_inst/xsdb_memory_read_inst/Q[1]2default:default2
12default:default8Z32-81h px? 
?
'Processed net %s. Replicated %s times.
81*physynth2?
6mem_debuig/U0/ila_core_inst/xsdb_memory_read_inst/Q[2]6mem_debuig/U0/ila_core_inst/xsdb_memory_read_inst/Q[2]2default:default2
12default:default8Z32-81h px? 
?
'Processed net %s. Replicated %s times.
81*physynth2?
6mem_debuig/U0/ila_core_inst/xsdb_memory_read_inst/Q[6]6mem_debuig/U0/ila_core_inst/xsdb_memory_read_inst/Q[6]2default:default2
12default:default8Z32-81h px? 
?
'Processed net %s. Replicated %s times.
81*physynth2?
6mem_debuig/U0/ila_core_inst/xsdb_memory_read_inst/Q[7]6mem_debuig/U0/ila_core_inst/xsdb_memory_read_inst/Q[7]2default:default2
12default:default8Z32-81h px? 
?
'Processed net %s. Replicated %s times.
81*physynth2?
6mem_debuig/U0/ila_core_inst/xsdb_memory_read_inst/Q[8]6mem_debuig/U0/ila_core_inst/xsdb_memory_read_inst/Q[8]2default:default2
12default:default8Z32-81h px? 
?
$Optimized %s %s. Created %s new %s.
216*physynth2
112default:default2
nets2default:default2
112default:default2
	instances2default:defaultZ32-232h px? 
?
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
112default:default2!
nets or cells2default:default2
112default:default2
cells2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0592default:default2
1461.0782default:default2
0.0002default:defaultZ17-268h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0282default:default2
1461.0782default:default2
0.0002default:defaultZ17-268h px? 
B
-
Summary of Physical Synthesis Optimizations
*commonh px? 
B
-============================================
*commonh px? 


*commonh px? 


*commonh px? 
?
~-----------------------------------------------------------------------------------------------------------------------------
*commonh px? 
?
?|  Optimization       |  Added Cells  |  Removed Cells  |  Optimized Cells/Nets  |  Dont Touch  |  Iterations  |  Elapsed   |
-----------------------------------------------------------------------------------------------------------------------------
*commonh px? 
?
?|  Very High Fanout   |           27  |              0  |                     3  |           0  |           1  |  00:00:05  |
|  Critical Cell      |           11  |              0  |                    11  |          12  |           1  |  00:00:01  |
|  Total              |           38  |              0  |                    14  |          12  |           2  |  00:00:06  |
-----------------------------------------------------------------------------------------------------------------------------
*commonh px? 


*commonh px? 


*commonh px? 
R
=Phase 2.2 Physical Synthesis In Placer | Checksum: 18bb8a887
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:53 ; elapsed = 00:00:35 . Memory (MB): peak = 1461.078 ; gain = 8.7342default:defaulth px? 
D
/Phase 2 Global Placement | Checksum: 16e98b36b
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:56 ; elapsed = 00:00:37 . Memory (MB): peak = 1461.078 ; gain = 8.7342default:defaulth px? 
q

Phase %s%s
101*constraints2
3 2default:default2$
Detail Placement2default:defaultZ18-101h px? 
}

Phase %s%s
101*constraints2
3.1 2default:default2.
Commit Multi Column Macros2default:defaultZ18-101h px? 
P
;Phase 3.1 Commit Multi Column Macros | Checksum: 16e98b36b
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:57 ; elapsed = 00:00:37 . Memory (MB): peak = 1461.078 ; gain = 8.7342default:defaulth px? 


Phase %s%s
101*constraints2
3.2 2default:default20
Commit Most Macros & LUTRAMs2default:defaultZ18-101h px? 
R
=Phase 3.2 Commit Most Macros & LUTRAMs | Checksum: 1279b520c
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:59 ; elapsed = 00:00:39 . Memory (MB): peak = 1461.078 ; gain = 8.7342default:defaulth px? 
y

Phase %s%s
101*constraints2
3.3 2default:default2*
Area Swap Optimization2default:defaultZ18-101h px? 
L
7Phase 3.3 Area Swap Optimization | Checksum: 139cdea33
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:59 ; elapsed = 00:00:39 . Memory (MB): peak = 1461.078 ; gain = 8.7342default:defaulth px? 
?

Phase %s%s
101*constraints2
3.4 2default:default22
Pipeline Register Optimization2default:defaultZ18-101h px? 
T
?Phase 3.4 Pipeline Register Optimization | Checksum: 1600c9f75
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:59 ; elapsed = 00:00:39 . Memory (MB): peak = 1461.078 ; gain = 8.7342default:defaulth px? 
x

Phase %s%s
101*constraints2
3.5 2default:default2)
Timing Path Optimizer2default:defaultZ18-101h px? 
K
6Phase 3.5 Timing Path Optimizer | Checksum: 1600c9f75
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:59 ; elapsed = 00:00:39 . Memory (MB): peak = 1461.078 ; gain = 8.7342default:defaulth px? 
t

Phase %s%s
101*constraints2
3.6 2default:default2%
Fast Optimization2default:defaultZ18-101h px? 
G
2Phase 3.6 Fast Optimization | Checksum: 1c0d7ba71
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:01:02 ; elapsed = 00:00:42 . Memory (MB): peak = 1461.078 ; gain = 8.7342default:defaulth px? 


Phase %s%s
101*constraints2
3.7 2default:default20
Small Shape Detail Placement2default:defaultZ18-101h px? 
R
=Phase 3.7 Small Shape Detail Placement | Checksum: 1ccda224c
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:01:17 ; elapsed = 00:00:56 . Memory (MB): peak = 1461.078 ; gain = 8.7342default:defaulth px? 
u

Phase %s%s
101*constraints2
3.8 2default:default2&
Re-assign LUT pins2default:defaultZ18-101h px? 
H
3Phase 3.8 Re-assign LUT pins | Checksum: 1498952f8
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:01:18 ; elapsed = 00:00:57 . Memory (MB): peak = 1461.078 ; gain = 8.7342default:defaulth px? 
?

Phase %s%s
101*constraints2
3.9 2default:default22
Pipeline Register Optimization2default:defaultZ18-101h px? 
T
?Phase 3.9 Pipeline Register Optimization | Checksum: 12fe705f9
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:01:18 ; elapsed = 00:00:57 . Memory (MB): peak = 1461.078 ; gain = 8.7342default:defaulth px? 
u

Phase %s%s
101*constraints2
3.10 2default:default2%
Fast Optimization2default:defaultZ18-101h px? 
H
3Phase 3.10 Fast Optimization | Checksum: 101855f01
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:01:30 ; elapsed = 00:01:08 . Memory (MB): peak = 1461.078 ; gain = 8.7342default:defaulth px? 
D
/Phase 3 Detail Placement | Checksum: 101855f01
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:01:31 ; elapsed = 00:01:08 . Memory (MB): peak = 1461.078 ; gain = 8.7342default:defaulth px? 
?

Phase %s%s
101*constraints2
4 2default:default2<
(Post Placement Optimization and Clean-Up2default:defaultZ18-101h px? 
{

Phase %s%s
101*constraints2
4.1 2default:default2,
Post Commit Optimization2default:defaultZ18-101h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
?

Phase %s%s
101*constraints2
4.1.1 2default:default2/
Post Placement Optimization2default:defaultZ18-101h px? 
V
APost Placement Optimization Initialization | Checksum: 249850b60
*commonh px? 
u

Phase %s%s
101*constraints2
4.1.1.1 2default:default2"
BUFG Insertion2default:defaultZ18-101h px? 
?
PProcessed net %s, BUFG insertion was skipped due to placement/routing conflicts.32*	placeflow2

rst_i_IBUF2default:defaultZ46-33h px? 
?
?BUFG insertion identified %s candidate nets, %s success, %s skipped for placement/routing, %s skipped for timing, %s skipped for netlist change reason.30*	placeflow2
12default:default2
02default:default2
12default:default2
02default:default2
02default:defaultZ46-31h px? 
H
3Phase 4.1.1.1 BUFG Insertion | Checksum: 249850b60
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:01:39 ; elapsed = 00:01:13 . Memory (MB): peak = 1523.762 ; gain = 71.4182default:defaulth px? 
?
hPost Placement Timing Summary WNS=%s. For the most accurate timing information please run report_timing.610*place2
-3.4992default:defaultZ30-746h px? 
S
>Phase 4.1.1 Post Placement Optimization | Checksum: 155ce2a5c
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:02:13 ; elapsed = 00:01:47 . Memory (MB): peak = 1523.762 ; gain = 71.4182default:defaulth px? 
N
9Phase 4.1 Post Commit Optimization | Checksum: 155ce2a5c
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:02:13 ; elapsed = 00:01:47 . Memory (MB): peak = 1523.762 ; gain = 71.4182default:defaulth px? 
y

Phase %s%s
101*constraints2
4.2 2default:default2*
Post Placement Cleanup2default:defaultZ18-101h px? 
L
7Phase 4.2 Post Placement Cleanup | Checksum: 155ce2a5c
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:02:14 ; elapsed = 00:01:47 . Memory (MB): peak = 1523.762 ; gain = 71.4182default:defaulth px? 
s

Phase %s%s
101*constraints2
4.3 2default:default2$
Placer Reporting2default:defaultZ18-101h px? 
F
1Phase 4.3 Placer Reporting | Checksum: 155ce2a5c
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:02:14 ; elapsed = 00:01:47 . Memory (MB): peak = 1523.762 ; gain = 71.4182default:defaulth px? 
z

Phase %s%s
101*constraints2
4.4 2default:default2+
Final Placement Cleanup2default:defaultZ18-101h px? 
L
7Phase 4.4 Final Placement Cleanup | Checksum: f9f4370e
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:02:14 ; elapsed = 00:01:47 . Memory (MB): peak = 1523.762 ; gain = 71.4182default:defaulth px? 
[
FPhase 4 Post Placement Optimization and Clean-Up | Checksum: f9f4370e
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:02:14 ; elapsed = 00:01:47 . Memory (MB): peak = 1523.762 ; gain = 71.4182default:defaulth px? 
=
(Ending Placer Task | Checksum: 7ef6982c
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:02:14 ; elapsed = 00:01:47 . Memory (MB): peak = 1523.762 ; gain = 71.4182default:defaulth px? 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
1252default:default2
92default:default2
02default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
place_design2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
place_design: 2default:default2
00:02:182default:default2
00:01:522default:default2
1523.7622default:default2
71.4182default:defaultZ17-268h px? 
H
&Writing timing data to binary archive.266*timingZ38-480h px? 
D
Writing placer database...
1603*designutilsZ20-1893h px? 
=
Writing XDEF routing.
211*designutilsZ20-211h px? 
J
#Writing XDEF routing logical nets.
209*designutilsZ20-209h px? 
J
#Writing XDEF routing special nets.
210*designutilsZ20-210h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2)
Write XDEF Complete: 2default:default2
00:00:072default:default2
00:00:022default:default2
1529.0902default:default2
5.3282default:defaultZ17-268h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2?
?C:/Users/Cyrill/Documents/S6/BA-GULFstream/Final/gulfstream-evaluation-board/FW_SW_Test/FW_SW_Test.runs/impl_1/GULF_Eval_Board_top_placed.dcp2default:defaultZ17-1381h px? 
n
%s4*runtcl2R
>Executing : report_io -file GULF_Eval_Board_top_io_placed.rpt
2default:defaulth px? 
?
kreport_io: Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.084 . Memory (MB): peak = 1529.090 ; gain = 0.000
*commonh px? 
?
%s4*runtcl2?
~Executing : report_utilization -file GULF_Eval_Board_top_utilization_placed.rpt -pb GULF_Eval_Board_top_utilization_placed.pb
2default:defaulth px? 
?
treport_utilization: Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.341 . Memory (MB): peak = 1529.090 ; gain = 0.000
*commonh px? 
?
%s4*runtcl2o
[Executing : report_control_sets -verbose -file GULF_Eval_Board_top_control_sets_placed.rpt
2default:defaulth px? 
?
ureport_control_sets: Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.156 . Memory (MB): peak = 1529.090 ; gain = 0.000
*commonh px? 


End Record
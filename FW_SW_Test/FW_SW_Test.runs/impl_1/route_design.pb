
Q
Command: %s
53*	vivadotcl2 
route_design2default:defaultZ4-113h px? 
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
p
,Running DRC as a precondition to command %s
22*	vivadotcl2 
route_design2default:defaultZ4-22h px? 
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
V

Starting %s Task
103*constraints2
Routing2default:defaultZ18-103h px? 
}
BMultithreading enabled for route_design using a maximum of %s CPUs17*	routeflow2
22default:defaultZ35-254h px? 
p

Phase %s%s
101*constraints2
1 2default:default2#
Build RT Design2default:defaultZ18-101h px? 
C
.Phase 1 Build RT Design | Checksum: 142d43856
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:35 ; elapsed = 00:00:30 . Memory (MB): peak = 1607.051 ; gain = 77.9612default:defaulth px? 
v

Phase %s%s
101*constraints2
2 2default:default2)
Router Initialization2default:defaultZ18-101h px? 
o

Phase %s%s
101*constraints2
2.1 2default:default2 
Create Timer2default:defaultZ18-101h px? 
B
-Phase 2.1 Create Timer | Checksum: 142d43856
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:36 ; elapsed = 00:00:30 . Memory (MB): peak = 1607.051 ; gain = 77.9612default:defaulth px? 
{

Phase %s%s
101*constraints2
2.2 2default:default2,
Fix Topology Constraints2default:defaultZ18-101h px? 
N
9Phase 2.2 Fix Topology Constraints | Checksum: 142d43856
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:36 ; elapsed = 00:00:31 . Memory (MB): peak = 1613.906 ; gain = 84.8162default:defaulth px? 
t

Phase %s%s
101*constraints2
2.3 2default:default2%
Pre Route Cleanup2default:defaultZ18-101h px? 
G
2Phase 2.3 Pre Route Cleanup | Checksum: 142d43856
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:36 ; elapsed = 00:00:31 . Memory (MB): peak = 1613.906 ; gain = 84.8162default:defaulth px? 
p

Phase %s%s
101*constraints2
2.4 2default:default2!
Update Timing2default:defaultZ18-101h px? 
C
.Phase 2.4 Update Timing | Checksum: 116efa16e
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:00:46 ; elapsed = 00:00:37 . Memory (MB): peak = 1647.820 ; gain = 118.7302default:defaulth px? 
?
Intermediate Timing Summary %s164*route2M
9| WNS=-3.590 | TNS=-5754.183| WHS=-0.921 | THS=-194.528|
2default:defaultZ35-416h px? 
}

Phase %s%s
101*constraints2
2.5 2default:default2.
Update Timing for Bus Skew2default:defaultZ18-101h px? 
r

Phase %s%s
101*constraints2
2.5.1 2default:default2!
Update Timing2default:defaultZ18-101h px? 
D
/Phase 2.5.1 Update Timing | Checksum: eac523df
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:00:49 ; elapsed = 00:00:39 . Memory (MB): peak = 1670.758 ; gain = 141.6682default:defaulth px? 
?
Intermediate Timing Summary %s164*route2L
8| WNS=-3.590 | TNS=-5352.383| WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
P
;Phase 2.5 Update Timing for Bus Skew | Checksum: 12b229352
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:00:49 ; elapsed = 00:00:39 . Memory (MB): peak = 1678.840 ; gain = 149.7502default:defaulth px? 
I
4Phase 2 Router Initialization | Checksum: 1dd62d5e1
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:00:49 ; elapsed = 00:00:39 . Memory (MB): peak = 1678.840 ; gain = 149.7502default:defaulth px? 
p

Phase %s%s
101*constraints2
3 2default:default2#
Initial Routing2default:defaultZ18-101h px? 
C
.Phase 3 Initial Routing | Checksum: 27bd1649f
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:19 ; elapsed = 00:00:55 . Memory (MB): peak = 1717.641 ; gain = 188.5512default:defaulth px? 
s

Phase %s%s
101*constraints2
4 2default:default2&
Rip-up And Reroute2default:defaultZ18-101h px? 
u

Phase %s%s
101*constraints2
4.1 2default:default2&
Global Iteration 02default:defaultZ18-101h px? 
?
Intermediate Timing Summary %s164*route2L
8| WNS=-4.838 | TNS=-6505.070| WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
H
3Phase 4.1 Global Iteration 0 | Checksum: 1054d40fc
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:02:53 ; elapsed = 00:01:57 . Memory (MB): peak = 1717.641 ; gain = 188.5512default:defaulth px? 
u

Phase %s%s
101*constraints2
4.2 2default:default2&
Global Iteration 12default:defaultZ18-101h px? 
?
Intermediate Timing Summary %s164*route2L
8| WNS=-4.655 | TNS=-6497.547| WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
H
3Phase 4.2 Global Iteration 1 | Checksum: 21f48307a
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:03:55 ; elapsed = 00:02:45 . Memory (MB): peak = 1728.953 ; gain = 199.8632default:defaulth px? 
u

Phase %s%s
101*constraints2
4.3 2default:default2&
Global Iteration 22default:defaultZ18-101h px? 
?
Intermediate Timing Summary %s164*route2L
8| WNS=-4.628 | TNS=-6491.360| WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
H
3Phase 4.3 Global Iteration 2 | Checksum: 17d90f75d
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:05:03 ; elapsed = 00:03:34 . Memory (MB): peak = 1730.188 ; gain = 201.0982default:defaulth px? 
F
1Phase 4 Rip-up And Reroute | Checksum: 17d90f75d
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:05:03 ; elapsed = 00:03:34 . Memory (MB): peak = 1730.188 ; gain = 201.0982default:defaulth px? 
|

Phase %s%s
101*constraints2
5 2default:default2/
Delay and Skew Optimization2default:defaultZ18-101h px? 
p

Phase %s%s
101*constraints2
5.1 2default:default2!
Delay CleanUp2default:defaultZ18-101h px? 
r

Phase %s%s
101*constraints2
5.1.1 2default:default2!
Update Timing2default:defaultZ18-101h px? 
E
0Phase 5.1.1 Update Timing | Checksum: 1f43729c6
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:05:04 ; elapsed = 00:03:35 . Memory (MB): peak = 1730.188 ; gain = 201.0982default:defaulth px? 
?
Intermediate Timing Summary %s164*route2L
8| WNS=-4.628 | TNS=-6091.062| WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
C
.Phase 5.1 Delay CleanUp | Checksum: 167a7c418
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:05:05 ; elapsed = 00:03:36 . Memory (MB): peak = 1730.188 ; gain = 201.0982default:defaulth px? 
z

Phase %s%s
101*constraints2
5.2 2default:default2+
Clock Skew Optimization2default:defaultZ18-101h px? 
M
8Phase 5.2 Clock Skew Optimization | Checksum: 167a7c418
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:05:06 ; elapsed = 00:03:36 . Memory (MB): peak = 1730.188 ; gain = 201.0982default:defaulth px? 
O
:Phase 5 Delay and Skew Optimization | Checksum: 167a7c418
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:05:06 ; elapsed = 00:03:36 . Memory (MB): peak = 1730.188 ; gain = 201.0982default:defaulth px? 
n

Phase %s%s
101*constraints2
6 2default:default2!
Post Hold Fix2default:defaultZ18-101h px? 
p

Phase %s%s
101*constraints2
6.1 2default:default2!
Hold Fix Iter2default:defaultZ18-101h px? 
r

Phase %s%s
101*constraints2
6.1.1 2default:default2!
Update Timing2default:defaultZ18-101h px? 
E
0Phase 6.1.1 Update Timing | Checksum: 1739f3718
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:05:07 ; elapsed = 00:03:37 . Memory (MB): peak = 1730.188 ; gain = 201.0982default:defaulth px? 
?
Intermediate Timing Summary %s164*route2L
8| WNS=-4.628 | TNS=-6085.391| WHS=-0.459 | THS=-4.487 |
2default:defaultZ35-416h px? 
B
-Phase 6.1 Hold Fix Iter | Checksum: f3f144d6
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:05:10 ; elapsed = 00:03:38 . Memory (MB): peak = 1730.188 ; gain = 201.0982default:defaulth px? 
?
?The router encountered %s pins that are both setup-critical and hold-critical and tried to fix hold violations at the expense of setup slack. Such pins are:
%s201*route2
5062default:default2?
?	mem_debuig/U0/ila_core_inst/ila_trace_memory_inst/SUBCORE_RAM_BLK_MEM_1.trace_block_memory/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[14].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram/ADDRARDADDR[14]
	mem_debuig/U0/ila_core_inst/ila_trace_memory_inst/SUBCORE_RAM_BLK_MEM_1.trace_block_memory/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[14].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram/ADDRARDADDR[14]
	mem_debuig/U0/ila_core_inst/ila_trace_memory_inst/SUBCORE_RAM_BLK_MEM_1.trace_block_memory/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[14].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram/ADDRARDADDR[12]
	mem_debuig/U0/ila_core_inst/ila_trace_memory_inst/SUBCORE_RAM_BLK_MEM_1.trace_block_memory/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[14].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram/ADDRARDADDR[12]
	mem_debuig/U0/ila_core_inst/ila_trace_memory_inst/SUBCORE_RAM_BLK_MEM_1.trace_block_memory/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[14].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram/ADDRARDADDR[8]
	mem_debuig/U0/ila_core_inst/ila_trace_memory_inst/SUBCORE_RAM_BLK_MEM_1.trace_block_memory/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[14].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram/ADDRARDADDR[8]
	mem_debuig/U0/ila_core_inst/ila_trace_memory_inst/SUBCORE_RAM_BLK_MEM_1.trace_block_memory/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[3].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram/ADDRARDADDR[8]
	mem_debuig/U0/ila_core_inst/ila_trace_memory_inst/SUBCORE_RAM_BLK_MEM_1.trace_block_memory/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[3].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram/ADDRARDADDR[8]
	mem_debuig/U0/ila_core_inst/ila_trace_memory_inst/SUBCORE_RAM_BLK_MEM_1.trace_block_memory/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[14].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram/ADDRARDADDR[7]
	mem_debuig/U0/ila_core_inst/ila_trace_memory_inst/SUBCORE_RAM_BLK_MEM_1.trace_block_memory/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[14].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram/ADDRARDADDR[7]
	.. and 496 more pins.
2default:defaultZ35-468h px? 
A
,Phase 6 Post Hold Fix | Checksum: 138d02ed4
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:05:10 ; elapsed = 00:03:39 . Memory (MB): peak = 1730.188 ; gain = 201.0982default:defaulth px? 
o

Phase %s%s
101*constraints2
7 2default:default2"
Route finalize2default:defaultZ18-101h px? 
B
-Phase 7 Route finalize | Checksum: 1314a3edb
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:05:10 ; elapsed = 00:03:39 . Memory (MB): peak = 1730.188 ; gain = 201.0982default:defaulth px? 
v

Phase %s%s
101*constraints2
8 2default:default2)
Verifying routed nets2default:defaultZ18-101h px? 
I
4Phase 8 Verifying routed nets | Checksum: 1314a3edb
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:05:11 ; elapsed = 00:03:39 . Memory (MB): peak = 1730.188 ; gain = 201.0982default:defaulth px? 
r

Phase %s%s
101*constraints2
9 2default:default2%
Depositing Routes2default:defaultZ18-101h px? 
E
0Phase 9 Depositing Routes | Checksum: 18793872a
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:05:12 ; elapsed = 00:03:41 . Memory (MB): peak = 1730.188 ; gain = 201.0982default:defaulth px? 
t

Phase %s%s
101*constraints2
10 2default:default2&
Post Router Timing2default:defaultZ18-101h px? 
q

Phase %s%s
101*constraints2
10.1 2default:default2!
Update Timing2default:defaultZ18-101h px? 
C
.Phase 10.1 Update Timing | Checksum: af7b5ef7
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:05:13 ; elapsed = 00:03:41 . Memory (MB): peak = 1730.188 ; gain = 201.0982default:defaulth px? 
?
Estimated Timing Summary %s
57*route2L
8| WNS=-4.628 | TNS=-6116.555| WHS=0.051  | THS=0.000  |
2default:defaultZ35-57h px? 
B
!Router estimated timing not met.
128*routeZ35-328h px? 
F
1Phase 10 Post Router Timing | Checksum: af7b5ef7
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:05:13 ; elapsed = 00:03:41 . Memory (MB): peak = 1730.188 ; gain = 201.0982default:defaulth px? 
@
Router Completed Successfully
2*	routeflowZ35-16h px? 
?

%s
*constraints2q
]Time (s): cpu = 00:05:14 ; elapsed = 00:03:41 . Memory (MB): peak = 1730.188 ; gain = 201.0982default:defaulth px? 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
1452default:default2
112default:default2
02default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
route_design2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
route_design: 2default:default2
00:05:202default:default2
00:03:462default:default2
1730.1882default:default2
201.0982default:defaultZ17-268h px? 
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
00:00:062default:default2
00:00:032default:default2
1730.1882default:default2
0.0002default:defaultZ17-268h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2?
?C:/Users/Cyrill/Documents/S6/BA-GULFstream/Final/gulfstream-evaluation-board/FW_SW_Test/FW_SW_Test.runs/impl_1/GULF_Eval_Board_top_routed.dcp2default:defaultZ17-1381h px? 
?
%s4*runtcl2?
?Executing : report_drc -file GULF_Eval_Board_top_drc_routed.rpt -pb GULF_Eval_Board_top_drc_routed.pb -rpx GULF_Eval_Board_top_drc_routed.rpx
2default:defaulth px? 
?
Command: %s
53*	vivadotcl2?
?report_drc -file GULF_Eval_Board_top_drc_routed.rpt -pb GULF_Eval_Board_top_drc_routed.pb -rpx GULF_Eval_Board_top_drc_routed.rpx2default:defaultZ4-113h px? 
>
IP Catalog is up to date.1232*coregenZ19-1839h px? 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px? 
?
#The results of DRC are in file %s.
168*coretcl2?
?C:/Users/Cyrill/Documents/S6/BA-GULFstream/Final/gulfstream-evaluation-board/FW_SW_Test/FW_SW_Test.runs/impl_1/GULF_Eval_Board_top_drc_routed.rpt?C:/Users/Cyrill/Documents/S6/BA-GULFstream/Final/gulfstream-evaluation-board/FW_SW_Test/FW_SW_Test.runs/impl_1/GULF_Eval_Board_top_drc_routed.rpt2default:default8Z2-168h px? 
\
%s completed successfully
29*	vivadotcl2

report_drc2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2 
report_drc: 2default:default2
00:00:092default:default2
00:00:052default:default2
1730.1882default:default2
0.0002default:defaultZ17-268h px? 
?
%s4*runtcl2?
?Executing : report_methodology -file GULF_Eval_Board_top_methodology_drc_routed.rpt -pb GULF_Eval_Board_top_methodology_drc_routed.pb -rpx GULF_Eval_Board_top_methodology_drc_routed.rpx
2default:defaulth px? 
?
Command: %s
53*	vivadotcl2?
?report_methodology -file GULF_Eval_Board_top_methodology_drc_routed.rpt -pb GULF_Eval_Board_top_methodology_drc_routed.pb -rpx GULF_Eval_Board_top_methodology_drc_routed.rpx2default:defaultZ4-113h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
Y
$Running Methodology with %s threads
74*drc2
22default:defaultZ23-133h px? 
?
2The results of Report Methodology are in file %s.
450*coretcl2?
?C:/Users/Cyrill/Documents/S6/BA-GULFstream/Final/gulfstream-evaluation-board/FW_SW_Test/FW_SW_Test.runs/impl_1/GULF_Eval_Board_top_methodology_drc_routed.rpt?C:/Users/Cyrill/Documents/S6/BA-GULFstream/Final/gulfstream-evaluation-board/FW_SW_Test/FW_SW_Test.runs/impl_1/GULF_Eval_Board_top_methodology_drc_routed.rpt2default:default8Z2-1520h px? 
d
%s completed successfully
29*	vivadotcl2&
report_methodology2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2(
report_methodology: 2default:default2
00:00:152default:default2
00:00:082default:default2
1733.3052default:default2
3.1172default:defaultZ17-268h px? 
?
%s4*runtcl2?
?Executing : report_power -file GULF_Eval_Board_top_power_routed.rpt -pb GULF_Eval_Board_top_power_summary_routed.pb -rpx GULF_Eval_Board_top_power_routed.rpx
2default:defaulth px? 
?
Command: %s
53*	vivadotcl2?
?report_power -file GULF_Eval_Board_top_power_routed.rpt -pb GULF_Eval_Board_top_power_summary_routed.pb -rpx GULF_Eval_Board_top_power_routed.rpx2default:defaultZ4-113h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
K
,Running Vector-less Activity Propagation...
51*powerZ33-51h px? 
P
3
Finished Running Vector-less Activity Propagation
1*powerZ33-1h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
1582default:default2
112default:default2
02default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
report_power2default:defaultZ4-42h px? 
?
%s4*runtcl2?
sExecuting : report_route_status -file GULF_Eval_Board_top_route_status.rpt -pb GULF_Eval_Board_top_route_status.pb
2default:defaulth px? 
?
%s4*runtcl2?
?Executing : report_timing_summary -max_paths 10 -file GULF_Eval_Board_top_timing_summary_routed.rpt -pb GULF_Eval_Board_top_timing_summary_routed.pb -rpx GULF_Eval_Board_top_timing_summary_routed.rpx -warn_on_violation 
2default:defaulth px? 
?
UpdateTimingParams:%s.
91*timing2R
> Speed grade: -1, Delay Type: min_max, Timing Stage: Requireds2default:defaultZ38-91h px? 
|
CMultithreading enabled for timing update using a maximum of %s CPUs155*timing2
22default:defaultZ38-191h px? 
?
rThe design failed to meet the timing requirements. Please see the %s report for details on the timing violations.
188*timing2"
timing summary2default:defaultZ38-282h px? 
?
}There are set_bus_skew constraint(s) in this design. Please run report_bus_skew to ensure that bus skew requirements are met.223*timingZ38-436h px? 
?
%s4*runtcl2p
\Executing : report_incremental_reuse -file GULF_Eval_Board_top_incremental_reuse_routed.rpt
2default:defaulth px? 
x
TNo incremental reuse to report, no incremental placement and routing data was found.278*	vivadotclZ4-545h px? 
?
%s4*runtcl2p
\Executing : report_clock_utilization -file GULF_Eval_Board_top_clock_utilization_routed.rpt
2default:defaulth px? 
?
%s4*runtcl2?
?Executing : report_bus_skew -warn_on_violation -file GULF_Eval_Board_top_bus_skew_routed.rpt -pb GULF_Eval_Board_top_bus_skew_routed.pb -rpx GULF_Eval_Board_top_bus_skew_routed.rpx
2default:defaulth px? 
?
UpdateTimingParams:%s.
91*timing2R
> Speed grade: -1, Delay Type: min_max, Timing Stage: Requireds2default:defaultZ38-91h px? 
|
CMultithreading enabled for timing update using a maximum of %s CPUs155*timing2
22default:defaultZ38-191h px? 
?
rThe design failed to meet the timing requirements. Please see the %s report for details on the timing violations.
188*timing2
bus skew2default:defaultZ38-282h px? 


End Record
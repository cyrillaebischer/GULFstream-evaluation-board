# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
create_project -in_memory -part xc7z020clg400-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir C:/Users/julie/Desktop/git/Bachelor/GULF_Eval_Board_for_GULF/GULF_Eval_Board_for_GULF.cache/wt [current_project]
set_property parent.project_path C:/Users/julie/Desktop/git/Bachelor/GULF_Eval_Board_for_GULF/GULF_Eval_Board_for_GULF.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_FIFO XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
set_property board_part tul.com.tw:pynq-z2:part0:1.0 [current_project]
set_property ip_repo_paths {
  c:/Users/julie/Desktop/git/Bachelor/ip_repo/axi_data_transfer_3.0
  c:/Users/julie/Desktop/git/Bachelor/ip_repo/axi_data_transfer_2.0
  c:/Users/julie/Desktop/git/GULFstream/ip_repo/axi_data_transfer_1.0
} [current_project]
set_property ip_output_repo c:/Users/julie/Desktop/git/Bachelor/GULF_Eval_Board/GULF_Eval_Board.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_vhdl -library xil_defaultlib {
  C:/Users/julie/Desktop/git/Bachelor/GULF_Eval_Board_for_GULF/GULF_Eval_Board_for_GULF.srcs/sources_1/new/UtilityPkg.vhd
  C:/Users/julie/Desktop/git/Bachelor/GULF_Eval_Board_for_GULF/GULF_Eval_Board_for_GULF.srcs/sources_1/new/Decode8b10b.vhd
  C:/Users/julie/Desktop/git/Bachelor/GULF_Eval_Board_for_GULF/GULF_Eval_Board_for_GULF.srcs/sources_1/bd/GULF_Eval_Board/hdl/GULF_Eval_Board_wrapper.vhd
  C:/Users/julie/Desktop/git/Bachelor/GULF_Eval_Board_for_GULF/GULF_Eval_Board_for_GULF.srcs/sources_1/new/memory_map.vhd
  C:/Users/julie/Desktop/git/Bachelor/GULF_Eval_Board_for_GULF/GULF_Eval_Board_for_GULF.srcs/sources_1/new/error_memory_map.vhd
  C:/Users/julie/Desktop/git/Bachelor/GULF_Eval_Board_for_GULF/GULF_Eval_Board_for_GULF.srcs/sources_1/new/eval_top.vhd
  C:/Users/julie/Desktop/git/Bachelor/GULF_Eval_Board_for_GULF/GULF_Eval_Board_for_GULF.srcs/sources_1/new/comma_synch.vhd
  C:/Users/julie/Desktop/git/Bachelor/GULF_Eval_Board_for_GULF/GULF_Eval_Board_for_GULF.srcs/sources_1/new/counter.vhd
  C:/Users/julie/Desktop/git/Bachelor/GULF_Eval_Board_for_GULF/GULF_Eval_Board_for_GULF.srcs/sources_1/new/data_wr_fsm.vhd
  C:/Users/julie/Desktop/git/Bachelor/GULF_Eval_Board_for_GULF/GULF_Eval_Board_for_GULF.srcs/sources_1/new/dff.vhd
  C:/Users/julie/Desktop/git/Bachelor/GULF_Eval_Board_for_GULF/GULF_Eval_Board_for_GULF.srcs/sources_1/new/sipo.vhd
  C:/Users/julie/Desktop/git/Bachelor/GULF_Eval_Board_for_GULF/GULF_Eval_Board_for_GULF.srcs/sources_1/new/GULF_Eval_Board_top.vhd
}
add_files C:/Users/julie/Desktop/git/Bachelor/GULF_Eval_Board_for_GULF/GULF_Eval_Board_for_GULF.srcs/sources_1/bd/GULF_Eval_Board/GULF_Eval_Board.bd
set_property used_in_implementation false [get_files -all c:/Users/julie/Desktop/git/Bachelor/GULF_Eval_Board_for_GULF/GULF_Eval_Board_for_GULF.srcs/sources_1/bd/GULF_Eval_Board/ip/GULF_Eval_Board_processing_system7_0_0/GULF_Eval_Board_processing_system7_0_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/julie/Desktop/git/Bachelor/GULF_Eval_Board_for_GULF/GULF_Eval_Board_for_GULF.srcs/sources_1/bd/GULF_Eval_Board/ip/GULF_Eval_Board_axi_quad_spi_0_0/GULF_Eval_Board_axi_quad_spi_0_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/julie/Desktop/git/Bachelor/GULF_Eval_Board_for_GULF/GULF_Eval_Board_for_GULF.srcs/sources_1/bd/GULF_Eval_Board/ip/GULF_Eval_Board_axi_quad_spi_0_0/GULF_Eval_Board_axi_quad_spi_0_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/julie/Desktop/git/Bachelor/GULF_Eval_Board_for_GULF/GULF_Eval_Board_for_GULF.srcs/sources_1/bd/GULF_Eval_Board/ip/GULF_Eval_Board_axi_quad_spi_0_0/GULF_Eval_Board_axi_quad_spi_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/julie/Desktop/git/Bachelor/GULF_Eval_Board_for_GULF/GULF_Eval_Board_for_GULF.srcs/sources_1/bd/GULF_Eval_Board/ip/GULF_Eval_Board_axi_quad_spi_0_0/GULF_Eval_Board_axi_quad_spi_0_0_clocks.xdc]
set_property used_in_implementation false [get_files -all c:/Users/julie/Desktop/git/Bachelor/GULF_Eval_Board_for_GULF/GULF_Eval_Board_for_GULF.srcs/sources_1/bd/GULF_Eval_Board/ip/GULF_Eval_Board_axi_iic_0_0/GULF_Eval_Board_axi_iic_0_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/julie/Desktop/git/Bachelor/GULF_Eval_Board_for_GULF/GULF_Eval_Board_for_GULF.srcs/sources_1/bd/GULF_Eval_Board/ip/GULF_Eval_Board_axi_iic_0_0/GULF_Eval_Board_axi_iic_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/julie/Desktop/git/Bachelor/GULF_Eval_Board_for_GULF/GULF_Eval_Board_for_GULF.srcs/sources_1/bd/GULF_Eval_Board/ip/GULF_Eval_Board_rst_ps7_0_100M_0/GULF_Eval_Board_rst_ps7_0_100M_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/julie/Desktop/git/Bachelor/GULF_Eval_Board_for_GULF/GULF_Eval_Board_for_GULF.srcs/sources_1/bd/GULF_Eval_Board/ip/GULF_Eval_Board_rst_ps7_0_100M_0/GULF_Eval_Board_rst_ps7_0_100M_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/julie/Desktop/git/Bachelor/GULF_Eval_Board_for_GULF/GULF_Eval_Board_for_GULF.srcs/sources_1/bd/GULF_Eval_Board/ip/GULF_Eval_Board_rst_ps7_0_100M_0/GULF_Eval_Board_rst_ps7_0_100M_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/julie/Desktop/git/Bachelor/GULF_Eval_Board_for_GULF/GULF_Eval_Board_for_GULF.srcs/sources_1/bd/GULF_Eval_Board/ip/GULF_Eval_Board_xbar_0/GULF_Eval_Board_xbar_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/julie/Desktop/git/Bachelor/GULF_Eval_Board_for_GULF/GULF_Eval_Board_for_GULF.srcs/sources_1/bd/GULF_Eval_Board/ip/GULF_Eval_Board_axi_gpio_0_0/GULF_Eval_Board_axi_gpio_0_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/julie/Desktop/git/Bachelor/GULF_Eval_Board_for_GULF/GULF_Eval_Board_for_GULF.srcs/sources_1/bd/GULF_Eval_Board/ip/GULF_Eval_Board_axi_gpio_0_0/GULF_Eval_Board_axi_gpio_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/julie/Desktop/git/Bachelor/GULF_Eval_Board_for_GULF/GULF_Eval_Board_for_GULF.srcs/sources_1/bd/GULF_Eval_Board/ip/GULF_Eval_Board_axi_gpio_0_0/GULF_Eval_Board_axi_gpio_0_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/julie/Desktop/git/Bachelor/GULF_Eval_Board_for_GULF/GULF_Eval_Board_for_GULF.srcs/sources_1/bd/GULF_Eval_Board/ip/GULF_Eval_Board_auto_pc_0/GULF_Eval_Board_auto_pc_0_ooc.xdc]
set_property used_in_implementation false [get_files -all C:/Users/julie/Desktop/git/Bachelor/GULF_Eval_Board_for_GULF/GULF_Eval_Board_for_GULF.srcs/sources_1/bd/GULF_Eval_Board/GULF_Eval_Board_ooc.xdc]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc C:/Users/julie/Desktop/git/Bachelor/GULF_Eval_Board_for_GULF/GULF_Eval_Board_for_GULF.srcs/constrs_1/new/Eval_constr.xdc
set_property used_in_implementation false [get_files C:/Users/julie/Desktop/git/Bachelor/GULF_Eval_Board_for_GULF/GULF_Eval_Board_for_GULF.srcs/constrs_1/new/Eval_constr.xdc]
set_property processing_order LATE [get_files C:/Users/julie/Desktop/git/Bachelor/GULF_Eval_Board_for_GULF/GULF_Eval_Board_for_GULF.srcs/constrs_1/new/Eval_constr.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
set_param ips.enableIPCacheLiteLoad 0
close [open __synthesis_is_running__ w]

synth_design -top GULF_Eval_Board_top -part xc7z020clg400-1


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef GULF_Eval_Board_top.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file GULF_Eval_Board_top_utilization_synth.rpt -pb GULF_Eval_Board_top_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
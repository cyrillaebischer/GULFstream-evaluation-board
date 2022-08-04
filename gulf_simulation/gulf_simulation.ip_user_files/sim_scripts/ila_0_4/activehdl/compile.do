vlib work
vlib activehdl

vlib activehdl/xil_defaultlib
vlib activehdl/xpm

vmap xil_defaultlib activehdl/xil_defaultlib
vmap xpm activehdl/xpm

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../pynq_setup_gulf.srcs/sources_1/ip/ila_0_4/hdl/verilog" "+incdir+../../../../pynq_setup_gulf.srcs/sources_1/ip/ila_0_4/hdl/verilog" \
"C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work xil_defaultlib -93 \
"../../../../pynq_setup_gulf.srcs/sources_1/ip/ila_0_4/sim/ila_0.vhd" \

vlog -work xil_defaultlib \
"glbl.v"


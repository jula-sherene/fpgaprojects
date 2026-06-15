vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vcom -work xil_defaultlib  -93  \
"C:/Users/julas/Downloads/modelsim/srcs/sources_1/new/NOT_GATE.vhd" \
"C:/Users/julas/Downloads/modelsim/srcs/sim_1/new/TB_NOT_GATE1.vhd" \



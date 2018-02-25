vlib work
vlib msim

vlib msim/xil_defaultlib
vlib msim/xpm

vmap xil_defaultlib msim/xil_defaultlib
vmap xpm msim/xpm

vlog -work xil_defaultlib -64 -sv "+incdir+../../../ipstatic" "+incdir+../../../ipstatic" \
"/home/salil/HDD/Xilinx2016/Vivado/2016.4/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -64 -93 \
"/home/salil/HDD/Xilinx2016/Vivado/2016.4/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib -64 "+incdir+../../../ipstatic" "+incdir+../../../ipstatic" \
"../../../../counter.srcs/sources_1/ip/clk_wiz_400/clk_wiz_400_clk_wiz.v" \
"../../../../counter.srcs/sources_1/ip/clk_wiz_400/clk_wiz_400.v" \

vlog -work xil_defaultlib "glbl.v"


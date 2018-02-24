vlib work
vlib activehdl

vlib activehdl/xil_defaultlib
vlib activehdl/xpm

vmap xil_defaultlib activehdl/xil_defaultlib
vmap xpm activehdl/xpm

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../ipstatic" "+incdir+../../../ipstatic" \
"/home/salil/HDD/Xilinx2016/Vivado/2016.4/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -93 \
"/home/salil/HDD/Xilinx2016/Vivado/2016.4/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../ipstatic" "+incdir+../../../ipstatic" \
"../../../../counter.srcs/sources_1/ip/clk_wiz_50/clk_wiz_50_clk_wiz.v" \
"../../../../counter.srcs/sources_1/ip/clk_wiz_50/clk_wiz_50.v" \

vlog -work xil_defaultlib "glbl.v"


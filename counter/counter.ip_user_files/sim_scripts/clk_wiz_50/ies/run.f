-makelib ies/xil_defaultlib -sv \
  "/home/salil/HDD/Xilinx2016/Vivado/2016.4/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
-endlib
-makelib ies/xpm \
  "/home/salil/HDD/Xilinx2016/Vivado/2016.4/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../../counter.srcs/sources_1/ip/clk_wiz_50/clk_wiz_50_clk_wiz.v" \
  "../../../../counter.srcs/sources_1/ip/clk_wiz_50/clk_wiz_50.v" \
-endlib
-makelib ies/xil_defaultlib \
  glbl.v
-endlib


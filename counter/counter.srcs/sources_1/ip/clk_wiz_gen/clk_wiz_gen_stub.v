// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (lin64) Build 1756540 Mon Jan 23 19:11:19 MST 2017
// Date        : Mon Feb 26 00:15:46 2018
// Host        : salil running 64-bit Ubuntu 17.10
// Command     : write_verilog -force -mode synth_stub
//               /home/salil/HDD/Work/ProgrammingModel/verilog-scratch/counter/counter.srcs/sources_1/ip/clk_wiz_gen/clk_wiz_gen_stub.v
// Design      : clk_wiz_gen
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module clk_wiz_gen(clk_out, reset, locked, clk_in1)
/* synthesis syn_black_box black_box_pad_pin="clk_out,reset,locked,clk_in1" */;
  output clk_out;
  input reset;
  output locked;
  input clk_in1;
endmodule

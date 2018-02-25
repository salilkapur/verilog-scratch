-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.4 (lin64) Build 1756540 Mon Jan 23 19:11:19 MST 2017
-- Date        : Sat Feb 24 23:27:33 2018
-- Host        : salil running 64-bit Ubuntu 17.10
-- Command     : write_vhdl -force -mode synth_stub
--               /home/salil/HDD/Work/ProgrammingModel/verilog-scratch/counter/counter.srcs/sources_1/ip/clk_wiz_400/clk_wiz_400_stub.vhdl
-- Design      : clk_wiz_400
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity clk_wiz_400 is
  Port ( 
    clk_out_400 : out STD_LOGIC;
    reset : in STD_LOGIC;
    locked : out STD_LOGIC;
    clk_in1 : in STD_LOGIC
  );

end clk_wiz_400;

architecture stub of clk_wiz_400 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_out_400,reset,locked,clk_in1";
begin
end;

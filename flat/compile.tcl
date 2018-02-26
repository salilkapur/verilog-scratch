# Synthesis script

# Read verilog source files
read_verilog -sv  counter_top.sv counter.sv display.sv
read_xdc          counter_constraints.xdc

# Run Synthesis
synth_design -top counter_top -part xc7a35tcpg236-1

# Report timing
report_timing -setup -file counter_setup_synth_report.txt
report_timing -hold  -file counter_hold_synth_report.txt

#write_sdf -force syn_output.sdf
#write_verilog -sdf_anno true -mode timesim -force syn_output.v

place_design
route_design
#write_sdf -force pnr_output.sdf
#write_verilog -sdf_anno true -mode timesim -force pnr_output.v

report_timing -setup -file counter_setup_synth_report.txt
report_timing -hold  -file counter_hold_synth_report.txt

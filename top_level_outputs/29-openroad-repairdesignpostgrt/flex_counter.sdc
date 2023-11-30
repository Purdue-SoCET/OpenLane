###############################################################################
# Created by write_sdc
###############################################################################
current_design flex_counter
###############################################################################
# Timing Constraints
###############################################################################
create_clock -name clk -period 10.0000 [get_ports {clk}]
set_clock_transition 0.1500 [get_clocks {clk}]
set_clock_uncertainty 0.2500 clk
set_propagated_clock [get_clocks {clk}]
set_input_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {clear}]
set_input_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {enable}]
set_input_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {nRST}]
set_input_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {rollover[0]}]
set_input_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {rollover[1]}]
set_input_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {rollover[2]}]
set_input_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {rollover[3]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {count[0]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {count[1]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {count[2]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {count[3]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {flag}]
###############################################################################
# Environment
###############################################################################
set_load -pin_load 0.0334 [get_ports {flag}]
set_load -pin_load 0.0334 [get_ports {count[3]}]
set_load -pin_load 0.0334 [get_ports {count[2]}]
set_load -pin_load 0.0334 [get_ports {count[1]}]
set_load -pin_load 0.0334 [get_ports {count[0]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {clear}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {clk}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {enable}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {nRST}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {rollover[3]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {rollover[2]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {rollover[1]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {rollover[0]}]
###############################################################################
# Design Rules
###############################################################################
set_max_transition 0.7500 [current_design]
set_max_fanout 10.0000 [current_design]

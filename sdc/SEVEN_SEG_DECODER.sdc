###############################################################################
# Created by write_sdc
# Mon Dec  5 17:17:08 2022
###############################################################################
current_design SEVEN_SEG_DECODER
###############################################################################
# Timing Constraints
###############################################################################
create_clock -name wb_clk_i -period 24.0000 
set_clock_uncertainty 0.2500 wb_clk_i
set_input_delay 4.8000 -clock [get_clocks {wb_clk_i}] -add_delay [get_ports {i[0]}]
set_input_delay 4.8000 -clock [get_clocks {wb_clk_i}] -add_delay [get_ports {i[1]}]
set_input_delay 4.8000 -clock [get_clocks {wb_clk_i}] -add_delay [get_ports {i[2]}]
set_input_delay 4.8000 -clock [get_clocks {wb_clk_i}] -add_delay [get_ports {i[3]}]
set_output_delay 4.8000 -clock [get_clocks {wb_clk_i}] -add_delay [get_ports {a}]
set_output_delay 4.8000 -clock [get_clocks {wb_clk_i}] -add_delay [get_ports {b}]
set_output_delay 4.8000 -clock [get_clocks {wb_clk_i}] -add_delay [get_ports {c}]
set_output_delay 4.8000 -clock [get_clocks {wb_clk_i}] -add_delay [get_ports {d}]
set_output_delay 4.8000 -clock [get_clocks {wb_clk_i}] -add_delay [get_ports {e}]
set_output_delay 4.8000 -clock [get_clocks {wb_clk_i}] -add_delay [get_ports {f}]
set_output_delay 4.8000 -clock [get_clocks {wb_clk_i}] -add_delay [get_ports {g}]
###############################################################################
# Environment
###############################################################################
set_load -pin_load 0.0729 [get_ports {a}]
set_load -pin_load 0.0729 [get_ports {b}]
set_load -pin_load 0.0729 [get_ports {c}]
set_load -pin_load 0.0729 [get_ports {d}]
set_load -pin_load 0.0729 [get_ports {e}]
set_load -pin_load 0.0729 [get_ports {f}]
set_load -pin_load 0.0729 [get_ports {g}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {i[3]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {i[2]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {i[1]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {i[0]}]
set_timing_derate -early 0.9500
set_timing_derate -late 1.0500
###############################################################################
# Design Rules
###############################################################################
set_max_fanout 4.0000 [current_design]


# Timing Specification Constraints

create_clock -name clk -period 20.000000ns -waveform {0.0ns 10.000000ns} [get_ports {clk}]
derive_pll_clocks
derive_clock_uncertainty

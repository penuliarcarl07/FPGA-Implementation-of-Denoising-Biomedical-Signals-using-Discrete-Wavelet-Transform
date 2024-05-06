onbreak resume
onerror resume
vsim -voptargs=+acc work.DWT_sym3_4_Level_tb

add wave sim:/DWT_sym3_4_Level_tb/u_DWT_sym3_4_Level/clk
add wave sim:/DWT_sym3_4_Level_tb/u_DWT_sym3_4_Level/reset
add wave sim:/DWT_sym3_4_Level_tb/u_DWT_sym3_4_Level/clk_enable
add wave sim:/DWT_sym3_4_Level_tb/u_DWT_sym3_4_Level/In1
add wave sim:/DWT_sym3_4_Level_tb/u_DWT_sym3_4_Level/ce_out
add wave sim:/DWT_sym3_4_Level_tb/u_DWT_sym3_4_Level/Out1
add wave sim:/DWT_sym3_4_Level_tb/Out1_ref
run -all

onbreak resume
onerror resume
vsim -voptargs=+acc work.DWT_coif1_3_Level_tb

add wave sim:/DWT_coif1_3_Level_tb/u_DWT_coif1_3_Level/clk
add wave sim:/DWT_coif1_3_Level_tb/u_DWT_coif1_3_Level/reset
add wave sim:/DWT_coif1_3_Level_tb/u_DWT_coif1_3_Level/clk_enable
add wave sim:/DWT_coif1_3_Level_tb/u_DWT_coif1_3_Level/In1
add wave sim:/DWT_coif1_3_Level_tb/u_DWT_coif1_3_Level/ce_out
add wave sim:/DWT_coif1_3_Level_tb/u_DWT_coif1_3_Level/Out1
add wave sim:/DWT_coif1_3_Level_tb/Out1_ref
run -all

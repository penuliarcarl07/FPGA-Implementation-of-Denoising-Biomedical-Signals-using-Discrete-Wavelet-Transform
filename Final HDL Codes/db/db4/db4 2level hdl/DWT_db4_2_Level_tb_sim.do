onbreak resume
onerror resume
vsim -voptargs=+acc work.DWT_db4_2_Level_tb

add wave sim:/DWT_db4_2_Level_tb/u_DWT_db4_2_Level/clk
add wave sim:/DWT_db4_2_Level_tb/u_DWT_db4_2_Level/reset
add wave sim:/DWT_db4_2_Level_tb/u_DWT_db4_2_Level/clk_enable
add wave sim:/DWT_db4_2_Level_tb/u_DWT_db4_2_Level/In1
add wave sim:/DWT_db4_2_Level_tb/u_DWT_db4_2_Level/ce_out
add wave sim:/DWT_db4_2_Level_tb/u_DWT_db4_2_Level/Out1
add wave sim:/DWT_db4_2_Level_tb/Out1_ref
run -all

onbreak resume
onerror resume
vsim -voptargs=+acc work.DWT_db2_5_level_tb

add wave sim:/DWT_db2_5_level_tb/u_DWT_db2_5_level/clk
add wave sim:/DWT_db2_5_level_tb/u_DWT_db2_5_level/reset
add wave sim:/DWT_db2_5_level_tb/u_DWT_db2_5_level/clk_enable
add wave sim:/DWT_db2_5_level_tb/u_DWT_db2_5_level/Input_Sound
add wave sim:/DWT_db2_5_level_tb/u_DWT_db2_5_level/ce_out
add wave sim:/DWT_db2_5_level_tb/u_DWT_db2_5_level/Out1
add wave sim:/DWT_db2_5_level_tb/Out1_ref
run -all

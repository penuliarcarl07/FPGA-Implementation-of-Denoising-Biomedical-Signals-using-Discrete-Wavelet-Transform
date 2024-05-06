onbreak resume
onerror resume
vsim -voptargs=+acc work.DWT_db2_3level_tb

add wave sim:/DWT_db2_3level_tb/u_DWT_db2_3level/clk
add wave sim:/DWT_db2_3level_tb/u_DWT_db2_3level/reset
add wave sim:/DWT_db2_3level_tb/u_DWT_db2_3level/clk_enable
add wave sim:/DWT_db2_3level_tb/u_DWT_db2_3level/In1
add wave sim:/DWT_db2_3level_tb/u_DWT_db2_3level/ce_out
add wave sim:/DWT_db2_3level_tb/u_DWT_db2_3level/Out1
add wave sim:/DWT_db2_3level_tb/Out1_ref
run -all

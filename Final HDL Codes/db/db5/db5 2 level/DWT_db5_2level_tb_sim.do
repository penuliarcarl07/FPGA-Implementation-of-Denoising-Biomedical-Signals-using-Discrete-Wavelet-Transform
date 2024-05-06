onbreak resume
onerror resume
vsim -voptargs=+acc work.DWT_db5_2level_tb

add wave sim:/DWT_db5_2level_tb/u_DWT_db5_2level/clk
add wave sim:/DWT_db5_2level_tb/u_DWT_db5_2level/reset
add wave sim:/DWT_db5_2level_tb/u_DWT_db5_2level/clk_enable
add wave sim:/DWT_db5_2level_tb/u_DWT_db5_2level/In_E
add wave sim:/DWT_db5_2level_tb/u_DWT_db5_2level/ce_out
add wave sim:/DWT_db5_2level_tb/u_DWT_db5_2level/Out1
add wave sim:/DWT_db5_2level_tb/Out1_ref
run -all

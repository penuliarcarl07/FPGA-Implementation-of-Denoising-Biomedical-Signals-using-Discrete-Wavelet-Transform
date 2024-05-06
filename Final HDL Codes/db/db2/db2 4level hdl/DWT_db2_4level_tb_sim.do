onbreak resume
onerror resume
vsim -voptargs=+acc work.DWT_db2_4level_tb

add wave sim:/DWT_db2_4level_tb/u_DWT_db2_4level/clk
add wave sim:/DWT_db2_4level_tb/u_DWT_db2_4level/reset
add wave sim:/DWT_db2_4level_tb/u_DWT_db2_4level/clk_enable
add wave sim:/DWT_db2_4level_tb/u_DWT_db2_4level/In1
add wave sim:/DWT_db2_4level_tb/u_DWT_db2_4level/ce_out
add wave sim:/DWT_db2_4level_tb/u_DWT_db2_4level/Out1
add wave sim:/DWT_db2_4level_tb/Out1_ref
run -all

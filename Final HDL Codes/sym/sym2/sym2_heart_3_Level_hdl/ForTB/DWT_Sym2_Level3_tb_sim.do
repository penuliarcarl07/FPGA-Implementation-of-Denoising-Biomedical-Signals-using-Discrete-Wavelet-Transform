onbreak resume
onerror resume
vsim -voptargs=+acc work.DWT_Sym2_Level3_tb

add wave sim:/DWT_Sym2_Level3_tb/u_DWT_Sym2_Level3/clk
add wave sim:/DWT_Sym2_Level3_tb/u_DWT_Sym2_Level3/reset
add wave sim:/DWT_Sym2_Level3_tb/u_DWT_Sym2_Level3/clk_enable
add wave sim:/DWT_Sym2_Level3_tb/u_DWT_Sym2_Level3/In1
add wave sim:/DWT_Sym2_Level3_tb/u_DWT_Sym2_Level3/ce_out
add wave sim:/DWT_Sym2_Level3_tb/u_DWT_Sym2_Level3/Out1
add wave sim:/DWT_Sym2_Level3_tb/Out1_ref
run -all

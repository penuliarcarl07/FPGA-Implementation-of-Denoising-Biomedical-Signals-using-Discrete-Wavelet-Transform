onbreak resume
onerror resume
vsim -voptargs=+acc work.DWT_Sym2_Level5_tb

add wave sim:/DWT_Sym2_Level5_tb/u_DWT_Sym2_Level5/clk
add wave sim:/DWT_Sym2_Level5_tb/u_DWT_Sym2_Level5/reset
add wave sim:/DWT_Sym2_Level5_tb/u_DWT_Sym2_Level5/clk_enable
add wave sim:/DWT_Sym2_Level5_tb/u_DWT_Sym2_Level5/In1
add wave sim:/DWT_Sym2_Level5_tb/u_DWT_Sym2_Level5/ce_out
add wave sim:/DWT_Sym2_Level5_tb/u_DWT_Sym2_Level5/Out1
add wave sim:/DWT_Sym2_Level5_tb/Out1_ref
run -all

onbreak resume
onerror resume
vsim -voptargs=+acc work.DWT_Sym2_Level4_tb

add wave sim:/DWT_Sym2_Level4_tb/u_DWT_Sym2_Level4/clk
add wave sim:/DWT_Sym2_Level4_tb/u_DWT_Sym2_Level4/reset
add wave sim:/DWT_Sym2_Level4_tb/u_DWT_Sym2_Level4/clk_enable
add wave sim:/DWT_Sym2_Level4_tb/u_DWT_Sym2_Level4/In1
add wave sim:/DWT_Sym2_Level4_tb/u_DWT_Sym2_Level4/ce_out
add wave sim:/DWT_Sym2_Level4_tb/u_DWT_Sym2_Level4/Denoised_Heart_Sound_Sym_2_Level_4
add wave sim:/DWT_Sym2_Level4_tb/Denoised_Heart_Sound_Sym_2_Level_4_ref
run -all

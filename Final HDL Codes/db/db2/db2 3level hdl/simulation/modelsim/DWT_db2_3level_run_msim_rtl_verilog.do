transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/hp/Desktop/ALTERA\ CAPSTONE/FINAL\ ARCHI\ HDL/FINAL_DB2/db2_3level {C:/Users/hp/Desktop/ALTERA CAPSTONE/FINAL ARCHI HDL/FINAL_DB2/db2_3level/Threshold_Estimator.v}
vlog -vlog01compat -work work +incdir+C:/Users/hp/Desktop/ALTERA\ CAPSTONE/FINAL\ ARCHI\ HDL/FINAL_DB2/db2_3level {C:/Users/hp/Desktop/ALTERA CAPSTONE/FINAL ARCHI HDL/FINAL_DB2/db2_3level/Soft_Thresholding2.v}
vlog -vlog01compat -work work +incdir+C:/Users/hp/Desktop/ALTERA\ CAPSTONE/FINAL\ ARCHI\ HDL/FINAL_DB2/db2_3level {C:/Users/hp/Desktop/ALTERA CAPSTONE/FINAL ARCHI HDL/FINAL_DB2/db2_3level/Soft_Thresholding1.v}
vlog -vlog01compat -work work +incdir+C:/Users/hp/Desktop/ALTERA\ CAPSTONE/FINAL\ ARCHI\ HDL/FINAL_DB2/db2_3level {C:/Users/hp/Desktop/ALTERA CAPSTONE/FINAL ARCHI HDL/FINAL_DB2/db2_3level/Soft_Thresholding.v}
vlog -vlog01compat -work work +incdir+C:/Users/hp/Desktop/ALTERA\ CAPSTONE/FINAL\ ARCHI\ HDL/FINAL_DB2/db2_3level {C:/Users/hp/Desktop/ALTERA CAPSTONE/FINAL ARCHI HDL/FINAL_DB2/db2_3level/Median2.v}
vlog -vlog01compat -work work +incdir+C:/Users/hp/Desktop/ALTERA\ CAPSTONE/FINAL\ ARCHI\ HDL/FINAL_DB2/db2_3level {C:/Users/hp/Desktop/ALTERA CAPSTONE/FINAL ARCHI HDL/FINAL_DB2/db2_3level/LoR_Odd_block1.v}
vlog -vlog01compat -work work +incdir+C:/Users/hp/Desktop/ALTERA\ CAPSTONE/FINAL\ ARCHI\ HDL/FINAL_DB2/db2_3level {C:/Users/hp/Desktop/ALTERA CAPSTONE/FINAL ARCHI HDL/FINAL_DB2/db2_3level/LoR_Odd_block.v}
vlog -vlog01compat -work work +incdir+C:/Users/hp/Desktop/ALTERA\ CAPSTONE/FINAL\ ARCHI\ HDL/FINAL_DB2/db2_3level {C:/Users/hp/Desktop/ALTERA CAPSTONE/FINAL ARCHI HDL/FINAL_DB2/db2_3level/LoR_Odd.v}
vlog -vlog01compat -work work +incdir+C:/Users/hp/Desktop/ALTERA\ CAPSTONE/FINAL\ ARCHI\ HDL/FINAL_DB2/db2_3level {C:/Users/hp/Desktop/ALTERA CAPSTONE/FINAL ARCHI HDL/FINAL_DB2/db2_3level/LoR_Even_block1.v}
vlog -vlog01compat -work work +incdir+C:/Users/hp/Desktop/ALTERA\ CAPSTONE/FINAL\ ARCHI\ HDL/FINAL_DB2/db2_3level {C:/Users/hp/Desktop/ALTERA CAPSTONE/FINAL ARCHI HDL/FINAL_DB2/db2_3level/LoR_Even_block.v}
vlog -vlog01compat -work work +incdir+C:/Users/hp/Desktop/ALTERA\ CAPSTONE/FINAL\ ARCHI\ HDL/FINAL_DB2/db2_3level {C:/Users/hp/Desktop/ALTERA CAPSTONE/FINAL ARCHI HDL/FINAL_DB2/db2_3level/LoR_Even.v}
vlog -vlog01compat -work work +incdir+C:/Users/hp/Desktop/ALTERA\ CAPSTONE/FINAL\ ARCHI\ HDL/FINAL_DB2/db2_3level {C:/Users/hp/Desktop/ALTERA CAPSTONE/FINAL ARCHI HDL/FINAL_DB2/db2_3level/LoD_Odd_block1.v}
vlog -vlog01compat -work work +incdir+C:/Users/hp/Desktop/ALTERA\ CAPSTONE/FINAL\ ARCHI\ HDL/FINAL_DB2/db2_3level {C:/Users/hp/Desktop/ALTERA CAPSTONE/FINAL ARCHI HDL/FINAL_DB2/db2_3level/LoD_Odd_block.v}
vlog -vlog01compat -work work +incdir+C:/Users/hp/Desktop/ALTERA\ CAPSTONE/FINAL\ ARCHI\ HDL/FINAL_DB2/db2_3level {C:/Users/hp/Desktop/ALTERA CAPSTONE/FINAL ARCHI HDL/FINAL_DB2/db2_3level/LoD_Odd.v}
vlog -vlog01compat -work work +incdir+C:/Users/hp/Desktop/ALTERA\ CAPSTONE/FINAL\ ARCHI\ HDL/FINAL_DB2/db2_3level {C:/Users/hp/Desktop/ALTERA CAPSTONE/FINAL ARCHI HDL/FINAL_DB2/db2_3level/LoD_Even_block1.v}
vlog -vlog01compat -work work +incdir+C:/Users/hp/Desktop/ALTERA\ CAPSTONE/FINAL\ ARCHI\ HDL/FINAL_DB2/db2_3level {C:/Users/hp/Desktop/ALTERA CAPSTONE/FINAL ARCHI HDL/FINAL_DB2/db2_3level/LoD_Even_block.v}
vlog -vlog01compat -work work +incdir+C:/Users/hp/Desktop/ALTERA\ CAPSTONE/FINAL\ ARCHI\ HDL/FINAL_DB2/db2_3level {C:/Users/hp/Desktop/ALTERA CAPSTONE/FINAL ARCHI HDL/FINAL_DB2/db2_3level/LoD_Even.v}
vlog -vlog01compat -work work +incdir+C:/Users/hp/Desktop/ALTERA\ CAPSTONE/FINAL\ ARCHI\ HDL/FINAL_DB2/db2_3level {C:/Users/hp/Desktop/ALTERA CAPSTONE/FINAL ARCHI HDL/FINAL_DB2/db2_3level/HiR_Odd_block1.v}
vlog -vlog01compat -work work +incdir+C:/Users/hp/Desktop/ALTERA\ CAPSTONE/FINAL\ ARCHI\ HDL/FINAL_DB2/db2_3level {C:/Users/hp/Desktop/ALTERA CAPSTONE/FINAL ARCHI HDL/FINAL_DB2/db2_3level/HiR_Odd_block.v}
vlog -vlog01compat -work work +incdir+C:/Users/hp/Desktop/ALTERA\ CAPSTONE/FINAL\ ARCHI\ HDL/FINAL_DB2/db2_3level {C:/Users/hp/Desktop/ALTERA CAPSTONE/FINAL ARCHI HDL/FINAL_DB2/db2_3level/HiR_Odd.v}
vlog -vlog01compat -work work +incdir+C:/Users/hp/Desktop/ALTERA\ CAPSTONE/FINAL\ ARCHI\ HDL/FINAL_DB2/db2_3level {C:/Users/hp/Desktop/ALTERA CAPSTONE/FINAL ARCHI HDL/FINAL_DB2/db2_3level/HiR_Even_block1.v}
vlog -vlog01compat -work work +incdir+C:/Users/hp/Desktop/ALTERA\ CAPSTONE/FINAL\ ARCHI\ HDL/FINAL_DB2/db2_3level {C:/Users/hp/Desktop/ALTERA CAPSTONE/FINAL ARCHI HDL/FINAL_DB2/db2_3level/HiR_Even_block.v}
vlog -vlog01compat -work work +incdir+C:/Users/hp/Desktop/ALTERA\ CAPSTONE/FINAL\ ARCHI\ HDL/FINAL_DB2/db2_3level {C:/Users/hp/Desktop/ALTERA CAPSTONE/FINAL ARCHI HDL/FINAL_DB2/db2_3level/HiR_Even.v}
vlog -vlog01compat -work work +incdir+C:/Users/hp/Desktop/ALTERA\ CAPSTONE/FINAL\ ARCHI\ HDL/FINAL_DB2/db2_3level {C:/Users/hp/Desktop/ALTERA CAPSTONE/FINAL ARCHI HDL/FINAL_DB2/db2_3level/HiD_Odd_block1.v}
vlog -vlog01compat -work work +incdir+C:/Users/hp/Desktop/ALTERA\ CAPSTONE/FINAL\ ARCHI\ HDL/FINAL_DB2/db2_3level {C:/Users/hp/Desktop/ALTERA CAPSTONE/FINAL ARCHI HDL/FINAL_DB2/db2_3level/HiD_Odd_block.v}
vlog -vlog01compat -work work +incdir+C:/Users/hp/Desktop/ALTERA\ CAPSTONE/FINAL\ ARCHI\ HDL/FINAL_DB2/db2_3level {C:/Users/hp/Desktop/ALTERA CAPSTONE/FINAL ARCHI HDL/FINAL_DB2/db2_3level/HiD_Odd.v}
vlog -vlog01compat -work work +incdir+C:/Users/hp/Desktop/ALTERA\ CAPSTONE/FINAL\ ARCHI\ HDL/FINAL_DB2/db2_3level {C:/Users/hp/Desktop/ALTERA CAPSTONE/FINAL ARCHI HDL/FINAL_DB2/db2_3level/HiD_Even_block1.v}
vlog -vlog01compat -work work +incdir+C:/Users/hp/Desktop/ALTERA\ CAPSTONE/FINAL\ ARCHI\ HDL/FINAL_DB2/db2_3level {C:/Users/hp/Desktop/ALTERA CAPSTONE/FINAL ARCHI HDL/FINAL_DB2/db2_3level/HiD_Even_block.v}
vlog -vlog01compat -work work +incdir+C:/Users/hp/Desktop/ALTERA\ CAPSTONE/FINAL\ ARCHI\ HDL/FINAL_DB2/db2_3level {C:/Users/hp/Desktop/ALTERA CAPSTONE/FINAL ARCHI HDL/FINAL_DB2/db2_3level/HiD_Even.v}
vlog -vlog01compat -work work +incdir+C:/Users/hp/Desktop/ALTERA\ CAPSTONE/FINAL\ ARCHI\ HDL/FINAL_DB2/db2_3level {C:/Users/hp/Desktop/ALTERA CAPSTONE/FINAL ARCHI HDL/FINAL_DB2/db2_3level/DWT_db2_3level_tc.v}
vlog -vlog01compat -work work +incdir+C:/Users/hp/Desktop/ALTERA\ CAPSTONE/FINAL\ ARCHI\ HDL/FINAL_DB2/db2_3level {C:/Users/hp/Desktop/ALTERA CAPSTONE/FINAL ARCHI HDL/FINAL_DB2/db2_3level/DWT_db2_3level.v}
vlog -vlog01compat -work work +incdir+C:/Users/hp/Desktop/ALTERA\ CAPSTONE/FINAL\ ARCHI\ HDL/FINAL_DB2/db2_3level {C:/Users/hp/Desktop/ALTERA CAPSTONE/FINAL ARCHI HDL/FINAL_DB2/db2_3level/Data_Sorter9.v}
vlog -vlog01compat -work work +incdir+C:/Users/hp/Desktop/ALTERA\ CAPSTONE/FINAL\ ARCHI\ HDL/FINAL_DB2/db2_3level {C:/Users/hp/Desktop/ALTERA CAPSTONE/FINAL ARCHI HDL/FINAL_DB2/db2_3level/Data_Sorter8.v}
vlog -vlog01compat -work work +incdir+C:/Users/hp/Desktop/ALTERA\ CAPSTONE/FINAL\ ARCHI\ HDL/FINAL_DB2/db2_3level {C:/Users/hp/Desktop/ALTERA CAPSTONE/FINAL ARCHI HDL/FINAL_DB2/db2_3level/Data_Sorter7.v}
vlog -vlog01compat -work work +incdir+C:/Users/hp/Desktop/ALTERA\ CAPSTONE/FINAL\ ARCHI\ HDL/FINAL_DB2/db2_3level {C:/Users/hp/Desktop/ALTERA CAPSTONE/FINAL ARCHI HDL/FINAL_DB2/db2_3level/Data_Sorter6.v}
vlog -vlog01compat -work work +incdir+C:/Users/hp/Desktop/ALTERA\ CAPSTONE/FINAL\ ARCHI\ HDL/FINAL_DB2/db2_3level {C:/Users/hp/Desktop/ALTERA CAPSTONE/FINAL ARCHI HDL/FINAL_DB2/db2_3level/Data_Sorter5.v}
vlog -vlog01compat -work work +incdir+C:/Users/hp/Desktop/ALTERA\ CAPSTONE/FINAL\ ARCHI\ HDL/FINAL_DB2/db2_3level {C:/Users/hp/Desktop/ALTERA CAPSTONE/FINAL ARCHI HDL/FINAL_DB2/db2_3level/Data_Sorter4.v}
vlog -vlog01compat -work work +incdir+C:/Users/hp/Desktop/ALTERA\ CAPSTONE/FINAL\ ARCHI\ HDL/FINAL_DB2/db2_3level {C:/Users/hp/Desktop/ALTERA CAPSTONE/FINAL ARCHI HDL/FINAL_DB2/db2_3level/Data_Sorter3.v}
vlog -vlog01compat -work work +incdir+C:/Users/hp/Desktop/ALTERA\ CAPSTONE/FINAL\ ARCHI\ HDL/FINAL_DB2/db2_3level {C:/Users/hp/Desktop/ALTERA CAPSTONE/FINAL ARCHI HDL/FINAL_DB2/db2_3level/Data_Sorter24.v}
vlog -vlog01compat -work work +incdir+C:/Users/hp/Desktop/ALTERA\ CAPSTONE/FINAL\ ARCHI\ HDL/FINAL_DB2/db2_3level {C:/Users/hp/Desktop/ALTERA CAPSTONE/FINAL ARCHI HDL/FINAL_DB2/db2_3level/Data_Sorter23.v}
vlog -vlog01compat -work work +incdir+C:/Users/hp/Desktop/ALTERA\ CAPSTONE/FINAL\ ARCHI\ HDL/FINAL_DB2/db2_3level {C:/Users/hp/Desktop/ALTERA CAPSTONE/FINAL ARCHI HDL/FINAL_DB2/db2_3level/Data_Sorter22.v}
vlog -vlog01compat -work work +incdir+C:/Users/hp/Desktop/ALTERA\ CAPSTONE/FINAL\ ARCHI\ HDL/FINAL_DB2/db2_3level {C:/Users/hp/Desktop/ALTERA CAPSTONE/FINAL ARCHI HDL/FINAL_DB2/db2_3level/Data_Sorter21.v}
vlog -vlog01compat -work work +incdir+C:/Users/hp/Desktop/ALTERA\ CAPSTONE/FINAL\ ARCHI\ HDL/FINAL_DB2/db2_3level {C:/Users/hp/Desktop/ALTERA CAPSTONE/FINAL ARCHI HDL/FINAL_DB2/db2_3level/Data_Sorter20.v}
vlog -vlog01compat -work work +incdir+C:/Users/hp/Desktop/ALTERA\ CAPSTONE/FINAL\ ARCHI\ HDL/FINAL_DB2/db2_3level {C:/Users/hp/Desktop/ALTERA CAPSTONE/FINAL ARCHI HDL/FINAL_DB2/db2_3level/Data_Sorter2.v}
vlog -vlog01compat -work work +incdir+C:/Users/hp/Desktop/ALTERA\ CAPSTONE/FINAL\ ARCHI\ HDL/FINAL_DB2/db2_3level {C:/Users/hp/Desktop/ALTERA CAPSTONE/FINAL ARCHI HDL/FINAL_DB2/db2_3level/Data_Sorter19.v}
vlog -vlog01compat -work work +incdir+C:/Users/hp/Desktop/ALTERA\ CAPSTONE/FINAL\ ARCHI\ HDL/FINAL_DB2/db2_3level {C:/Users/hp/Desktop/ALTERA CAPSTONE/FINAL ARCHI HDL/FINAL_DB2/db2_3level/Data_Sorter18.v}
vlog -vlog01compat -work work +incdir+C:/Users/hp/Desktop/ALTERA\ CAPSTONE/FINAL\ ARCHI\ HDL/FINAL_DB2/db2_3level {C:/Users/hp/Desktop/ALTERA CAPSTONE/FINAL ARCHI HDL/FINAL_DB2/db2_3level/Data_Sorter17.v}
vlog -vlog01compat -work work +incdir+C:/Users/hp/Desktop/ALTERA\ CAPSTONE/FINAL\ ARCHI\ HDL/FINAL_DB2/db2_3level {C:/Users/hp/Desktop/ALTERA CAPSTONE/FINAL ARCHI HDL/FINAL_DB2/db2_3level/Data_Sorter16.v}
vlog -vlog01compat -work work +incdir+C:/Users/hp/Desktop/ALTERA\ CAPSTONE/FINAL\ ARCHI\ HDL/FINAL_DB2/db2_3level {C:/Users/hp/Desktop/ALTERA CAPSTONE/FINAL ARCHI HDL/FINAL_DB2/db2_3level/Data_Sorter15.v}
vlog -vlog01compat -work work +incdir+C:/Users/hp/Desktop/ALTERA\ CAPSTONE/FINAL\ ARCHI\ HDL/FINAL_DB2/db2_3level {C:/Users/hp/Desktop/ALTERA CAPSTONE/FINAL ARCHI HDL/FINAL_DB2/db2_3level/Data_Sorter14.v}
vlog -vlog01compat -work work +incdir+C:/Users/hp/Desktop/ALTERA\ CAPSTONE/FINAL\ ARCHI\ HDL/FINAL_DB2/db2_3level {C:/Users/hp/Desktop/ALTERA CAPSTONE/FINAL ARCHI HDL/FINAL_DB2/db2_3level/Data_Sorter13.v}
vlog -vlog01compat -work work +incdir+C:/Users/hp/Desktop/ALTERA\ CAPSTONE/FINAL\ ARCHI\ HDL/FINAL_DB2/db2_3level {C:/Users/hp/Desktop/ALTERA CAPSTONE/FINAL ARCHI HDL/FINAL_DB2/db2_3level/Data_Sorter12.v}
vlog -vlog01compat -work work +incdir+C:/Users/hp/Desktop/ALTERA\ CAPSTONE/FINAL\ ARCHI\ HDL/FINAL_DB2/db2_3level {C:/Users/hp/Desktop/ALTERA CAPSTONE/FINAL ARCHI HDL/FINAL_DB2/db2_3level/Data_Sorter11.v}
vlog -vlog01compat -work work +incdir+C:/Users/hp/Desktop/ALTERA\ CAPSTONE/FINAL\ ARCHI\ HDL/FINAL_DB2/db2_3level {C:/Users/hp/Desktop/ALTERA CAPSTONE/FINAL ARCHI HDL/FINAL_DB2/db2_3level/Data_Sorter10.v}
vlog -vlog01compat -work work +incdir+C:/Users/hp/Desktop/ALTERA\ CAPSTONE/FINAL\ ARCHI\ HDL/FINAL_DB2/db2_3level {C:/Users/hp/Desktop/ALTERA CAPSTONE/FINAL ARCHI HDL/FINAL_DB2/db2_3level/Data_Sorter1.v}
vlog -vlog01compat -work work +incdir+C:/Users/hp/Desktop/ALTERA\ CAPSTONE/FINAL\ ARCHI\ HDL/FINAL_DB2/db2_3level {C:/Users/hp/Desktop/ALTERA CAPSTONE/FINAL ARCHI HDL/FINAL_DB2/db2_3level/alpha3rd_Level_Recon.v}
vlog -vlog01compat -work work +incdir+C:/Users/hp/Desktop/ALTERA\ CAPSTONE/FINAL\ ARCHI\ HDL/FINAL_DB2/db2_3level {C:/Users/hp/Desktop/ALTERA CAPSTONE/FINAL ARCHI HDL/FINAL_DB2/db2_3level/alpha3rd_Level_Decomp.v}
vlog -vlog01compat -work work +incdir+C:/Users/hp/Desktop/ALTERA\ CAPSTONE/FINAL\ ARCHI\ HDL/FINAL_DB2/db2_3level {C:/Users/hp/Desktop/ALTERA CAPSTONE/FINAL ARCHI HDL/FINAL_DB2/db2_3level/alpha2nd_Level_Recon.v}
vlog -vlog01compat -work work +incdir+C:/Users/hp/Desktop/ALTERA\ CAPSTONE/FINAL\ ARCHI\ HDL/FINAL_DB2/db2_3level {C:/Users/hp/Desktop/ALTERA CAPSTONE/FINAL ARCHI HDL/FINAL_DB2/db2_3level/alpha2nd_Level_Decomp.v}
vlog -vlog01compat -work work +incdir+C:/Users/hp/Desktop/ALTERA\ CAPSTONE/FINAL\ ARCHI\ HDL/FINAL_DB2/db2_3level {C:/Users/hp/Desktop/ALTERA CAPSTONE/FINAL ARCHI HDL/FINAL_DB2/db2_3level/alpha1st_Level_Recon.v}
vlog -vlog01compat -work work +incdir+C:/Users/hp/Desktop/ALTERA\ CAPSTONE/FINAL\ ARCHI\ HDL/FINAL_DB2/db2_3level {C:/Users/hp/Desktop/ALTERA CAPSTONE/FINAL ARCHI HDL/FINAL_DB2/db2_3level/alpha1st_Level_Decomp.v}
vlog -vlog01compat -work work +incdir+C:/Users/hp/Desktop/ALTERA\ CAPSTONE/FINAL\ ARCHI\ HDL/FINAL_DB2/db2_3level {C:/Users/hp/Desktop/ALTERA CAPSTONE/FINAL ARCHI HDL/FINAL_DB2/db2_3level/Absolute_Value1.v}

vlog -vlog01compat -work work +incdir+C:/Users/hp/Desktop/ALTERA\ CAPSTONE/FINAL\ ARCHI\ HDL/FINAL_DB2/db2_3level {C:/Users/hp/Desktop/ALTERA CAPSTONE/FINAL ARCHI HDL/FINAL_DB2/db2_3level/DWT_db2_3level_tb.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -voptargs="+acc"  DWT_db2_3level_tb

add wave *
view structure
view signals
run -all

// -------------------------------------------------------------
// 
// File Name: hdl_prj\hdlsrc\db2_level5_final_hdlsss\DWT_db2_5_level.v
// Created: 2024-04-18 06:57:11
// 
// Generated by MATLAB 9.10 and HDL Coder 3.18
// 
// 
// -- -------------------------------------------------------------
// -- Rate and Clocking Details
// -- -------------------------------------------------------------
// Model base rate: 2.26757e-05
// Target subsystem base rate: 2.26757e-05
// 
// 
// Clock Enable  Sample Time
// -- -------------------------------------------------------------
// ce_out        2.26757e-05
// -- -------------------------------------------------------------
// 
// 
// Output Signal                 Clock Enable  Sample Time
// -- -------------------------------------------------------------
// Out1                          ce_out        2.26757e-05
// -- -------------------------------------------------------------
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: DWT_db2_5_level
// Source Path: db2_level5_final_hdlsss/DWT_db2_5_level
// Hierarchy Level: 0
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module DWT_db2_5_level
          (clk,
           reset,
           clk_enable,
           Input_Sound,
           ce_out,
           Out1);


  input   clk;
  input   reset;
  input   clk_enable;
  input   [15:0] Input_Sound;  // ufix16_En23
  output  ce_out;
  output  signed [15:0] Out1;  // sfix16_En22


  wire enb;
  wire enb_1_30_1;
  wire enb_1_30_0;
  wire enb_1_30_4;
  wire enb_1_1_1;
  wire signed [15:0] alpha1st_Level_Decomp1_out1;  // sfix16_En24
  wire signed [15:0] alpha1st_Level_Decomp1_out2;  // sfix16_En22
  wire signed [15:0] alpha1st_Level_Decomp2_out1;  // sfix16_En27
  wire [15:0] alpha1st_Level_Decomp2_out2;  // ufix16_En24
  wire [15:0] Threshold_Estimator_out1;  // ufix16_En27
  wire signed [15:0] Soft_Thresholding1_out1;  // sfix16_En27
  wire signed [15:0] Soft_Thresholding2_out1;  // sfix16_En28
  wire signed [15:0] alpha1st_Level_Decomp3_out1;  // sfix16_En27
  wire [15:0] alpha1st_Level_Decomp3_out2;  // ufix16_En24
  wire signed [15:0] Soft_Thresholding3_out1;  // sfix16_En28
  wire signed [15:0] alpha1st_Level_Decomp4_out1;  // sfix16_En27
  wire [15:0] alpha1st_Level_Decomp4_out2;  // ufix16_En24
  wire signed [15:0] Soft_Thresholding4_out1;  // sfix16_En28
  wire signed [15:0] alpha1st_Level_Decomp5_out1;  // sfix16_En27
  wire [15:0] alpha1st_Level_Decomp5_out2;  // ufix16_En24
  wire signed [15:0] Soft_Thresholding5_out1;  // sfix16_En28
  wire signed [15:0] alpha1st_Level_Recon_out1;  // sfix16_En23
  wire signed [15:0] alpha1st_Level_Recon1_out1;  // sfix16_En23
  wire signed [15:0] alpha1st_Level_Recon2_out1;  // sfix16_En23
  wire signed [15:0] alpha1st_Level_Recon3_out1;  // sfix16_En22
  wire signed [15:0] alpha1st_Level_Recon4_out1;  // sfix16_En22


  DWT_db2_5_level_tc u_DWT_db2_5_level_tc (.clk(clk),
                                           .reset(reset),
                                           .clk_enable(clk_enable),
                                           .enb(enb),
                                           .enb_1_1_1(enb_1_1_1),
                                           .enb_1_30_0(enb_1_30_0),
                                           .enb_1_30_1(enb_1_30_1),
                                           .enb_1_30_4(enb_1_30_4)
                                           );

  alpha1st_Level_Decomp1 u_1st_Level_Decomp1 (.clk(clk),
                                              .reset(reset),
                                              .enb(enb),
                                              .enb_1_30_1(enb_1_30_1),
                                              .enb_1_30_0(enb_1_30_0),
                                              .Input_Sound(Input_Sound),  // ufix16_En23
                                              .Out_HiD(alpha1st_Level_Decomp1_out1),  // sfix16_En24
                                              .Out_LoD(alpha1st_Level_Decomp1_out2)  // sfix16_En22
                                              );
  alpha1st_Level_Decomp2 u_1st_Level_Decomp2 (.clk(clk),
                                              .reset(reset),
                                              .enb(enb),
                                              .enb_1_30_1(enb_1_30_1),
                                              .enb_1_30_0(enb_1_30_0),
                                              .enb_1_30_4(enb_1_30_4),
                                              .Input_Sound(alpha1st_Level_Decomp1_out2),  // sfix16_En22
                                              .Out_HiD(alpha1st_Level_Decomp2_out1),  // sfix16_En27
                                              .Out_LoD(alpha1st_Level_Decomp2_out2)  // ufix16_En24
                                              );
  Threshold_Estimator u_Threshold_Estimator (.clk(clk),
                                             .reset(reset),
                                             .enb(enb),
                                             .Signal_w(alpha1st_Level_Decomp2_out1),  // sfix16_En27
                                             .Threshold(Threshold_Estimator_out1)  // ufix16_En27
                                             );
  Soft_Thresholding1 u_Soft_Thresholding1 (.clk(clk),
                                           .reset(reset),
                                           .enb(enb),
                                           .Signal_w(alpha1st_Level_Decomp1_out1),  // sfix16_En24
                                           .Threshold1(Threshold_Estimator_out1),  // ufix16_En27
                                           .New_Threshold(Soft_Thresholding1_out1)  // sfix16_En27
                                           );
  Soft_Thresholding2 u_Soft_Thresholding2 (.clk(clk),
                                           .reset(reset),
                                           .enb(enb),
                                           .Signal_w(alpha1st_Level_Decomp2_out1),  // sfix16_En27
                                           .Threshold1(Threshold_Estimator_out1),  // ufix16_En27
                                           .New_Threshold(Soft_Thresholding2_out1)  // sfix16_En28
                                           );
  alpha1st_Level_Decomp3 u_1st_Level_Decomp3 (.clk(clk),
                                              .reset(reset),
                                              .enb(enb),
                                              .enb_1_30_1(enb_1_30_1),
                                              .enb_1_30_0(enb_1_30_0),
                                              .enb_1_30_4(enb_1_30_4),
                                              .Input_Sound(alpha1st_Level_Decomp2_out2),  // ufix16_En24
                                              .Out_HiD(alpha1st_Level_Decomp3_out1),  // sfix16_En27
                                              .Out_LoD(alpha1st_Level_Decomp3_out2)  // ufix16_En24
                                              );
  Soft_Thresholding3 u_Soft_Thresholding3 (.clk(clk),
                                           .reset(reset),
                                           .enb(enb),
                                           .Signal_w(alpha1st_Level_Decomp3_out1),  // sfix16_En27
                                           .Threshold1(Threshold_Estimator_out1),  // ufix16_En27
                                           .New_Threshold(Soft_Thresholding3_out1)  // sfix16_En28
                                           );
  alpha1st_Level_Decomp4 u_1st_Level_Decomp4 (.clk(clk),
                                              .reset(reset),
                                              .enb(enb),
                                              .enb_1_30_1(enb_1_30_1),
                                              .enb_1_30_0(enb_1_30_0),
                                              .enb_1_30_4(enb_1_30_4),
                                              .Input_Sound(alpha1st_Level_Decomp3_out2),  // ufix16_En24
                                              .Out_HiD(alpha1st_Level_Decomp4_out1),  // sfix16_En27
                                              .Out_LoD(alpha1st_Level_Decomp4_out2)  // ufix16_En24
                                              );
  Soft_Thresholding4 u_Soft_Thresholding4 (.clk(clk),
                                           .reset(reset),
                                           .enb(enb),
                                           .Signal_w(alpha1st_Level_Decomp4_out1),  // sfix16_En27
                                           .Threshold1(Threshold_Estimator_out1),  // ufix16_En27
                                           .New_Threshold(Soft_Thresholding4_out1)  // sfix16_En28
                                           );
  alpha1st_Level_Decomp5 u_1st_Level_Decomp5 (.clk(clk),
                                              .reset(reset),
                                              .enb(enb),
                                              .enb_1_30_1(enb_1_30_1),
                                              .enb_1_30_0(enb_1_30_0),
                                              .enb_1_30_4(enb_1_30_4),
                                              .Input_Sound(alpha1st_Level_Decomp4_out2),  // ufix16_En24
                                              .Out_HiD(alpha1st_Level_Decomp5_out1),  // sfix16_En27
                                              .Out_LoD(alpha1st_Level_Decomp5_out2)  // ufix16_En24
                                              );
  Soft_Thresholding5 u_Soft_Thresholding5 (.clk(clk),
                                           .reset(reset),
                                           .enb(enb),
                                           .Signal_w(alpha1st_Level_Decomp5_out1),  // sfix16_En27
                                           .Threshold1(Threshold_Estimator_out1),  // ufix16_En27
                                           .New_Threshold(Soft_Thresholding5_out1)  // sfix16_En28
                                           );
  alpha1st_Level_Recon u_1st_Level_Recon (.clk(clk),
                                          .reset(reset),
                                          .enb(enb),
                                          .In_HiD(Soft_Thresholding5_out1),  // sfix16_En28
                                          .In_LoD(alpha1st_Level_Decomp5_out2),  // ufix16_En24
                                          .Out(alpha1st_Level_Recon_out1)  // sfix16_En23
                                          );
  alpha1st_Level_Recon1 u_1st_Level_Recon1 (.clk(clk),
                                            .reset(reset),
                                            .enb(enb),
                                            .In_HiD(Soft_Thresholding4_out1),  // sfix16_En28
                                            .In_LoD(alpha1st_Level_Recon_out1),  // sfix16_En23
                                            .Out(alpha1st_Level_Recon1_out1)  // sfix16_En23
                                            );
  alpha1st_Level_Recon2 u_1st_Level_Recon2 (.clk(clk),
                                            .reset(reset),
                                            .enb(enb),
                                            .In_HiD(Soft_Thresholding3_out1),  // sfix16_En28
                                            .In_LoD(alpha1st_Level_Recon1_out1),  // sfix16_En23
                                            .Out(alpha1st_Level_Recon2_out1)  // sfix16_En23
                                            );
  alpha1st_Level_Recon3 u_1st_Level_Recon3 (.clk(clk),
                                            .reset(reset),
                                            .enb(enb),
                                            .In_HiD(Soft_Thresholding2_out1),  // sfix16_En28
                                            .In_LoD(alpha1st_Level_Recon2_out1),  // sfix16_En23
                                            .Out(alpha1st_Level_Recon3_out1)  // sfix16_En22
                                            );
  alpha1st_Level_Recon4 u_1st_Level_Recon4 (.clk(clk),
                                            .reset(reset),
                                            .enb(enb),
                                            .In_HiD(Soft_Thresholding1_out1),  // sfix16_En27
                                            .In_LoD(alpha1st_Level_Recon3_out1),  // sfix16_En22
                                            .Out(alpha1st_Level_Recon4_out1)  // sfix16_En22
                                            );
  assign Out1 = alpha1st_Level_Recon4_out1;

  assign ce_out = enb_1_1_1;

endmodule  // DWT_db2_5_level

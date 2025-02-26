// -------------------------------------------------------------
// 
// File Name: hdl_prj\hdlsrc\db5_2level_final_hdl\DWT_db5_2level.v
// Created: 2024-04-17 05:55:27
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
// Module: DWT_db5_2level
// Source Path: db5_2level_final_hdl/DWT_db5_2level
// Hierarchy Level: 0
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module DWT_db5_2level
          (clk,
           reset,
           clk_enable,
           In_E,
           ce_out,
           Out1);


  input   clk;
  input   reset;
  input   clk_enable;
  input   [15:0] In_E;  // ufix16_En23
  output  ce_out;
  output  signed [15:0] Out1;  // sfix16_En22


  wire enb;
  wire enb_1_30_1;
  wire enb_1_30_0;
  wire enb_1_30_4;
  wire enb_1_1_1;
  wire signed [15:0] alpha1st_Level_Decomp5_out1;  // sfix16_En24
  wire signed [15:0] alpha1st_Level_Decomp5_out2;  // sfix16_En23
  wire signed [15:0] alpha1st_Level_Decomp6_out1;  // sfix16_En27
  wire signed [15:0] alpha1st_Level_Decomp6_out2;  // sfix16_En23
  wire [15:0] Threshold_Estimator_out1;  // ufix16_En27
  wire signed [15:0] Soft_Thresholding5_out1;  // sfix16_En26
  wire signed [15:0] Soft_Thresholding6_out1;  // sfix16_En27
  wire signed [15:0] alpha1st_Level_Recon_out1;  // sfix16_En23
  wire signed [15:0] alpha1st_Level_Recon1_out1;  // sfix16_En22


  DWT_db5_2level_tc u_DWT_db5_2level_tc (.clk(clk),
                                         .reset(reset),
                                         .clk_enable(clk_enable),
                                         .enb(enb),
                                         .enb_1_1_1(enb_1_1_1),
                                         .enb_1_30_0(enb_1_30_0),
                                         .enb_1_30_1(enb_1_30_1),
                                         .enb_1_30_4(enb_1_30_4)
                                         );

  alpha1st_Level_Decomp5 u_1st_Level_Decomp5 (.clk(clk),
                                              .reset(reset),
                                              .enb(enb),
                                              .enb_1_30_1(enb_1_30_1),
                                              .enb_1_30_0(enb_1_30_0),
                                              .In_E(In_E),  // ufix16_En23
                                              .Out_HiD(alpha1st_Level_Decomp5_out1),  // sfix16_En24
                                              .Out_LoD(alpha1st_Level_Decomp5_out2)  // sfix16_En23
                                              );
  alpha1st_Level_Decomp6 u_1st_Level_Decomp6 (.clk(clk),
                                              .reset(reset),
                                              .enb(enb),
                                              .enb_1_30_1(enb_1_30_1),
                                              .enb_1_30_0(enb_1_30_0),
                                              .enb_1_30_4(enb_1_30_4),
                                              .In_E(alpha1st_Level_Decomp5_out2),  // sfix16_En23
                                              .Out_HiD(alpha1st_Level_Decomp6_out1),  // sfix16_En27
                                              .Out_LoD(alpha1st_Level_Decomp6_out2)  // sfix16_En23
                                              );
  Threshold_Estimator u_Threshold_Estimator (.clk(clk),
                                             .reset(reset),
                                             .enb(enb),
                                             .Signal_w(alpha1st_Level_Decomp6_out1),  // sfix16_En27
                                             .Threshold(Threshold_Estimator_out1)  // ufix16_En27
                                             );
  Soft_Thresholding5 u_Soft_Thresholding5 (.clk(clk),
                                           .reset(reset),
                                           .enb(enb),
                                           .Signal_w(alpha1st_Level_Decomp5_out1),  // sfix16_En24
                                           .Threshold1(Threshold_Estimator_out1),  // ufix16_En27
                                           .New_Threshold(Soft_Thresholding5_out1)  // sfix16_En26
                                           );
  Soft_Thresholding6 u_Soft_Thresholding6 (.clk(clk),
                                           .reset(reset),
                                           .enb(enb),
                                           .Signal_w(alpha1st_Level_Decomp6_out1),  // sfix16_En27
                                           .Threshold1(Threshold_Estimator_out1),  // ufix16_En27
                                           .New_Threshold(Soft_Thresholding6_out1)  // sfix16_En27
                                           );
  alpha1st_Level_Recon u_1st_Level_Recon (.clk(clk),
                                          .reset(reset),
                                          .enb(enb),
                                          .In_HiD(Soft_Thresholding6_out1),  // sfix16_En27
                                          .In_LoD(alpha1st_Level_Decomp6_out2),  // sfix16_En23
                                          .Out(alpha1st_Level_Recon_out1)  // sfix16_En23
                                          );
  alpha1st_Level_Recon1 u_1st_Level_Recon1 (.clk(clk),
                                            .reset(reset),
                                            .enb(enb),
                                            .In_HiD(Soft_Thresholding5_out1),  // sfix16_En26
                                            .In_LoD(alpha1st_Level_Recon_out1),  // sfix16_En23
                                            .Out(alpha1st_Level_Recon1_out1)  // sfix16_En22
                                            );
  assign Out1 = alpha1st_Level_Recon1_out1;

  assign ce_out = enb_1_1_1;

endmodule  // DWT_db5_2level


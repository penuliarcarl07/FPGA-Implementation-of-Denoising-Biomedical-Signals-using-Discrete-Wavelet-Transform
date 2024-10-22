// -------------------------------------------------------------
// 
// File Name: hdlsrc\final_heart_sym2_level3_fixed\DWT_sym2_3_Level.v
// Created: 2024-04-17 00:25:34
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
// Module: DWT_sym2_3_Level
// Source Path: final_heart_sym2_level3_fixed/DWT_sym2_3_Level
// Hierarchy Level: 0
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module DWT_sym2_3_Level
          (clk,
           reset,
           clk_enable,
           In1,
           ce_out,
           Out1);


  input   clk;
  input   reset;
  input   clk_enable;
  input   [15:0] In1;  // ufix16_En23
  output  ce_out;
  output  signed [15:0] Out1;  // sfix16_En22


  wire enb;
  wire enb_1_30_1;
  wire enb_1_30_0;
  wire enb_1_1_1;
  reg [15:0] Downsample2_bypass_reg;  // ufix16
  wire [15:0] Downsample2_out1;  // ufix16_En23
  reg [15:0] Rate_Transition2_out1;  // ufix16_En23
  reg [15:0] Delay_out1;  // ufix16_En23
  reg [15:0] Downsample4_bypass_reg;  // ufix16
  wire [15:0] Downsample4_out1;  // ufix16_En23
  reg [15:0] Rate_Transition3_out1;  // ufix16_En23
  wire signed [15:0] alpha1st_Level_Decomp_out1;  // sfix16_En24
  wire signed [15:0] alpha1st_Level_Decomp_out2;  // sfix16_En22
  reg signed [15:0] Downsample1_bypass_reg;  // sfix16
  wire signed [15:0] Downsample1_out1;  // sfix16_En22
  reg signed [15:0] Rate_Transition1_out1;  // sfix16_En22
  reg signed [15:0] Delay1_out1;  // sfix16_En22
  reg signed [15:0] Downsample3_bypass_reg;  // sfix16
  wire signed [15:0] Downsample3_out1;  // sfix16_En22
  reg signed [15:0] Rate_Transition4_out1;  // sfix16_En22
  wire signed [15:0] alpha1st_Level_Decomp1_out1;  // sfix16_En26
  wire [15:0] alpha1st_Level_Decomp1_out2;  // ufix16_En24
  wire [15:0] Threshold_Estimator_out1;  // ufix16_En25
  wire signed [15:0] Soft_Thresholding2_out1;  // sfix16_En28
  wire signed [15:0] Soft_Thresholding1_out1;  // sfix16_En27
  reg [15:0] Downsample5_bypass_reg;  // ufix16
  wire [15:0] Downsample5_out1;  // ufix16_En24
  reg [15:0] Rate_Transition5_out1;  // ufix16_En24
  reg [15:0] Delay2_out1;  // ufix16_En24
  reg [15:0] Downsample6_bypass_reg;  // ufix16
  wire [15:0] Downsample6_out1;  // ufix16_En24
  reg [15:0] Rate_Transition6_out1;  // ufix16_En24
  wire signed [15:0] alpha1st_Level_Decomp2_out1;  // sfix16_En27
  wire [15:0] alpha1st_Level_Decomp2_out2;  // ufix16_En24
  wire signed [15:0] Soft_Thresholding3_out1;  // sfix16_En27
  wire signed [15:0] alpha1st_Level_Recon_out1;  // sfix16_En23
  wire signed [15:0] alpha1st_Level_Recon1_out1;  // sfix16_En22
  wire signed [15:0] Denoised_Heart_Sound_Sym_2_Level_3;  // sfix16_En22


  DWT_sym2_3_Level_tc u_DWT_sym2_3_Level_tc (.clk(clk),
                                             .reset(reset),
                                             .clk_enable(clk_enable),
                                             .enb(enb),
                                             .enb_1_1_1(enb_1_1_1),
                                             .enb_1_30_0(enb_1_30_0),
                                             .enb_1_30_1(enb_1_30_1)
                                             );

  // Downsample2: Downsample by 30, Sample offset 0 
  // Downsample bypass register
  always @(posedge clk)
    begin : Downsample2_bypass_process
      if (reset == 1'b1) begin
        Downsample2_bypass_reg <= 16'b0000000000000000;
      end
      else begin
        if (enb_1_30_1) begin
          Downsample2_bypass_reg <= In1;
        end
      end
    end

  assign Downsample2_out1 = (enb_1_30_1 == 1'b1 ? In1 :
              Downsample2_bypass_reg);


  always @(posedge clk)
    begin : Rate_Transition2_process
      if (reset == 1'b1) begin
        Rate_Transition2_out1 <= 16'b0000000000000000;
      end
      else begin
        if (enb_1_30_0) begin
          Rate_Transition2_out1 <= Downsample2_out1;
        end
      end
    end


  always @(posedge clk)
    begin : Delay_process
      if (reset == 1'b1) begin
        Delay_out1 <= 16'b0000000000000000;
      end
      else begin
        if (enb) begin
          Delay_out1 <= In1;
        end
      end
    end


  // Downsample4: Downsample by 30, Sample offset 0 
  // Downsample bypass register
  always @(posedge clk)
    begin : Downsample4_bypass_process
      if (reset == 1'b1) begin
        Downsample4_bypass_reg <= 16'b0000000000000000;
      end
      else begin
        if (enb_1_30_1) begin
          Downsample4_bypass_reg <= Delay_out1;
        end
      end
    end

  assign Downsample4_out1 = (enb_1_30_1 == 1'b1 ? Delay_out1 :
              Downsample4_bypass_reg);


  always @(posedge clk)
    begin : Rate_Transition3_process
      if (reset == 1'b1) begin
        Rate_Transition3_out1 <= 16'b0000000000000000;
      end
      else begin
        if (enb_1_30_0) begin
          Rate_Transition3_out1 <= Downsample4_out1;
        end
      end
    end


  alpha1st_Level_Decomp u_1st_Level_Decomp (.clk(clk),
                                            .reset(reset),
                                            .enb(enb),
                                            .In_E(Rate_Transition2_out1),  // ufix16_En23
                                            .In_O(Rate_Transition3_out1),  // ufix16_En23
                                            .Out_HiD(alpha1st_Level_Decomp_out1),  // sfix16_En24
                                            .Out_LoD(alpha1st_Level_Decomp_out2)  // sfix16_En22
                                            );
  // Downsample1: Downsample by 30, Sample offset 0 
  // Downsample bypass register
  always @(posedge clk)
    begin : Downsample1_bypass_process
      if (reset == 1'b1) begin
        Downsample1_bypass_reg <= 16'sb0000000000000000;
      end
      else begin
        if (enb_1_30_1) begin
          Downsample1_bypass_reg <= alpha1st_Level_Decomp_out2;
        end
      end
    end

  assign Downsample1_out1 = (enb_1_30_1 == 1'b1 ? alpha1st_Level_Decomp_out2 :
              Downsample1_bypass_reg);


  always @(posedge clk)
    begin : Rate_Transition1_process
      if (reset == 1'b1) begin
        Rate_Transition1_out1 <= 16'sb0000000000000000;
      end
      else begin
        if (enb_1_30_0) begin
          Rate_Transition1_out1 <= Downsample1_out1;
        end
      end
    end


  always @(posedge clk)
    begin : Delay1_process
      if (reset == 1'b1) begin
        Delay1_out1 <= 16'sb0000000000000000;
      end
      else begin
        if (enb) begin
          Delay1_out1 <= alpha1st_Level_Decomp_out2;
        end
      end
    end


  // Downsample3: Downsample by 30, Sample offset 0 
  // Downsample bypass register
  always @(posedge clk)
    begin : Downsample3_bypass_process
      if (reset == 1'b1) begin
        Downsample3_bypass_reg <= 16'sb0000000000000000;
      end
      else begin
        if (enb_1_30_1) begin
          Downsample3_bypass_reg <= Delay1_out1;
        end
      end
    end

  assign Downsample3_out1 = (enb_1_30_1 == 1'b1 ? Delay1_out1 :
              Downsample3_bypass_reg);


  always @(posedge clk)
    begin : Rate_Transition4_process
      if (reset == 1'b1) begin
        Rate_Transition4_out1 <= 16'sb0000000000000000;
      end
      else begin
        if (enb_1_30_0) begin
          Rate_Transition4_out1 <= Downsample3_out1;
        end
      end
    end


  alpha1st_Level_Decomp1 u_1st_Level_Decomp1 (.clk(clk),
                                              .reset(reset),
                                              .enb(enb),
                                              .In_E(Rate_Transition1_out1),  // sfix16_En22
                                              .In_O(Rate_Transition4_out1),  // sfix16_En22
                                              .Out_HiD(alpha1st_Level_Decomp1_out1),  // sfix16_En26
                                              .Out_LoD(alpha1st_Level_Decomp1_out2)  // ufix16_En24
                                              );
  Threshold_Estimator u_Threshold_Estimator (.clk(clk),
                                             .reset(reset),
                                             .enb(enb),
                                             .Signal_w(alpha1st_Level_Decomp1_out1),  // sfix16_En26
                                             .Threshold(Threshold_Estimator_out1)  // ufix16_En25
                                             );
  Soft_Thresholding2 u_Soft_Thresholding2 (.clk(clk),
                                           .reset(reset),
                                           .enb(enb),
                                           .Signal_w(alpha1st_Level_Decomp_out1),  // sfix16_En24
                                           .Threshold1(Threshold_Estimator_out1),  // ufix16_En25
                                           .New_Threshold(Soft_Thresholding2_out1)  // sfix16_En28
                                           );
  Soft_Thresholding1 u_Soft_Thresholding1 (.clk(clk),
                                           .reset(reset),
                                           .enb(enb),
                                           .Signal_w(alpha1st_Level_Decomp1_out1),  // sfix16_En26
                                           .Threshold1(Threshold_Estimator_out1),  // ufix16_En25
                                           .New_Threshold(Soft_Thresholding1_out1)  // sfix16_En27
                                           );
  // Downsample5: Downsample by 30, Sample offset 0 
  // Downsample bypass register
  always @(posedge clk)
    begin : Downsample5_bypass_process
      if (reset == 1'b1) begin
        Downsample5_bypass_reg <= 16'b0000000000000000;
      end
      else begin
        if (enb_1_30_1) begin
          Downsample5_bypass_reg <= alpha1st_Level_Decomp1_out2;
        end
      end
    end

  assign Downsample5_out1 = (enb_1_30_1 == 1'b1 ? alpha1st_Level_Decomp1_out2 :
              Downsample5_bypass_reg);


  always @(posedge clk)
    begin : Rate_Transition5_process
      if (reset == 1'b1) begin
        Rate_Transition5_out1 <= 16'b0000000000000000;
      end
      else begin
        if (enb_1_30_0) begin
          Rate_Transition5_out1 <= Downsample5_out1;
        end
      end
    end


  always @(posedge clk)
    begin : Delay2_process
      if (reset == 1'b1) begin
        Delay2_out1 <= 16'b0000000000000000;
      end
      else begin
        if (enb) begin
          Delay2_out1 <= alpha1st_Level_Decomp1_out2;
        end
      end
    end


  // Downsample6: Downsample by 30, Sample offset 0 
  // Downsample bypass register
  always @(posedge clk)
    begin : Downsample6_bypass_process
      if (reset == 1'b1) begin
        Downsample6_bypass_reg <= 16'b0000000000000000;
      end
      else begin
        if (enb_1_30_1) begin
          Downsample6_bypass_reg <= Delay2_out1;
        end
      end
    end

  assign Downsample6_out1 = (enb_1_30_1 == 1'b1 ? Delay2_out1 :
              Downsample6_bypass_reg);


  always @(posedge clk)
    begin : Rate_Transition6_process
      if (reset == 1'b1) begin
        Rate_Transition6_out1 <= 16'b0000000000000000;
      end
      else begin
        if (enb_1_30_0) begin
          Rate_Transition6_out1 <= Downsample6_out1;
        end
      end
    end


  alpha1st_Level_Decomp2 u_1st_Level_Decomp2 (.clk(clk),
                                              .reset(reset),
                                              .enb(enb),
                                              .In_E(Rate_Transition5_out1),  // ufix16_En24
                                              .In_O(Rate_Transition6_out1),  // ufix16_En24
                                              .Out_HiD(alpha1st_Level_Decomp2_out1),  // sfix16_En27
                                              .Out_LoD(alpha1st_Level_Decomp2_out2)  // ufix16_En24
                                              );
  Soft_Thresholding3 u_Soft_Thresholding3 (.clk(clk),
                                           .reset(reset),
                                           .enb(enb),
                                           .Signal_w(alpha1st_Level_Decomp2_out1),  // sfix16_En27
                                           .Threshold1(Threshold_Estimator_out1),  // ufix16_En25
                                           .New_Threshold(Soft_Thresholding3_out1)  // sfix16_En27
                                           );
  alpha1st_Level_Recon u_1st_Level_Recon (.clk(clk),
                                          .reset(reset),
                                          .enb(enb),
                                          .In_HiD(Soft_Thresholding3_out1),  // sfix16_En27
                                          .In_LoD(alpha1st_Level_Decomp2_out2),  // ufix16_En24
                                          .Out(alpha1st_Level_Recon_out1)  // sfix16_En23
                                          );
  alpha1st_Level_Recon1 u_1st_Level_Recon1 (.clk(clk),
                                            .reset(reset),
                                            .enb(enb),
                                            .In_HiD(Soft_Thresholding1_out1),  // sfix16_En27
                                            .In_LoD(alpha1st_Level_Recon_out1),  // sfix16_En23
                                            .Out(alpha1st_Level_Recon1_out1)  // sfix16_En22
                                            );
  alpha1st_Level_Recon2 u_1st_Level_Recon2 (.clk(clk),
                                            .reset(reset),
                                            .enb(enb),
                                            .In_HiD(Soft_Thresholding2_out1),  // sfix16_En28
                                            .In_LoD(alpha1st_Level_Recon1_out1),  // sfix16_En22
                                            .Out(Denoised_Heart_Sound_Sym_2_Level_3)  // sfix16_En22
                                            );
  assign Out1 = Denoised_Heart_Sound_Sym_2_Level_3;

  assign ce_out = enb_1_1_1;

endmodule  // DWT_sym2_3_Level


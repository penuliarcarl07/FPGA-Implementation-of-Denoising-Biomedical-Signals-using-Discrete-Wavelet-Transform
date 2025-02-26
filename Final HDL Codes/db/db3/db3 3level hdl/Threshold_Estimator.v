// -------------------------------------------------------------
// 
// File Name: hdl_prj\hdlsrc\db3_3_Level_fixdt\Threshold_Estimator.v
// Created: 2024-04-17 22:28:38
// 
// Generated by MATLAB 9.10 and HDL Coder 3.18
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: Threshold_Estimator
// Source Path: db3_3_Level_fixdt/DWT_db3_3_Level/Threshold_Estimator
// Hierarchy Level: 1
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module Threshold_Estimator
          (clk,
           reset,
           enb,
           Signal_w,
           Threshold);


  input   clk;
  input   reset;
  input   enb;
  input   signed [15:0] Signal_w;  // sfix16_En26
  output  [15:0] Threshold;  // ufix16_En25


  wire [15:0] Absolute_Value1_out1;  // ufix16_En27
  wire [15:0] Median2_out1;  // ufix16_En27
  reg [15:0] Median2_out1_1;  // ufix16_En27
  wire [15:0] Length_out1;  // ufix16_En13
  reg [15:0] Length_out1_1;  // ufix16_En13
  wire [31:0] Multiply_mul_temp;  // ufix32_En40
  wire [15:0] Multiply_out1;  // ufix16_En25
  reg [15:0] Multiply_out1_1;  // ufix16_En25


  Absolute_Value1 u_Absolute_Value1 (.clk(clk),
                                     .reset(reset),
                                     .enb(enb),
                                     .Signal_w4(Signal_w),  // sfix16_En26
                                     .Out_Abs(Absolute_Value1_out1)  // ufix16_En27
                                     );
  Median2 u_Median2 (.clk(clk),
                     .reset(reset),
                     .enb(enb),
                     .Signal_w3(Absolute_Value1_out1),  // ufix16_En27
                     .Median(Median2_out1)  // ufix16_En27
                     );
  always @(posedge clk)
    begin : HwModeRegister_process
      if (reset == 1'b1) begin
        Median2_out1_1 <= 16'b0000000000000000;
      end
      else begin
        if (enb) begin
          Median2_out1_1 <= Median2_out1;
        end
      end
    end



  assign Length_out1 = 16'b1001110111111010;


  always @(posedge clk)
    begin : HwModeRegister1_process
      if (reset == 1'b1) begin
        Length_out1_1 <= 16'b0000000000000000;
      end
      else begin
        if (enb) begin
          Length_out1_1 <= Length_out1;
        end
      end
    end



  assign Multiply_mul_temp = Median2_out1_1 * Length_out1_1;
  assign Multiply_out1 = Multiply_mul_temp[30:15];


  always @(posedge clk)
    begin : PipelineRegister_process
      if (reset == 1'b1) begin
        Multiply_out1_1 <= 16'b0000000000000000;
      end
      else begin
        if (enb) begin
          Multiply_out1_1 <= Multiply_out1;
        end
      end
    end



  assign Threshold = Multiply_out1_1;

endmodule  // Threshold_Estimator


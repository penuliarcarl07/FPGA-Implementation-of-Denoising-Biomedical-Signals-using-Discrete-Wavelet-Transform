// -------------------------------------------------------------
// 
// File Name: hdl_prj\hdlsrc\final_heart_sym3_3_Level_fixed\Absolute_Value1.v
// Created: 2024-04-18 17:46:00
// 
// Generated by MATLAB 9.10 and HDL Coder 3.18
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: Absolute_Value1
// Source Path: final_heart_sym3_3_Level_fixed/DWT_sym3_3_Level/Threshold_Estimator/Absolute_Value1
// Hierarchy Level: 2
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module Absolute_Value1
          (clk,
           reset,
           enb,
           Signal_w4,
           Out_Abs);


  input   clk;
  input   reset;
  input   enb;
  input   signed [15:0] Signal_w4;  // sfix16_En27
  output  [15:0] Out_Abs;  // ufix16_En28


  wire signed [15:0] Constant295_out1;  // sfix16_En4
  wire signed [38:0] Relational_Operator2_1_cast;  // sfix39_En27
  wire signed [38:0] Relational_Operator2_1_cast_1;  // sfix39_En27
  wire Relational_Operator2_relop1;
  reg signed [15:0] Signal_w4_1;  // sfix16_En27
  reg  [0:1] delayMatch_reg;  // ufix1 [2]
  wire [0:1] delayMatch_reg_next;  // ufix1 [2]
  wire Relational_Operator2_out1;
  wire switch_compare_1;
  reg signed [15:0] Signal_w4_2;  // sfix16_En27
  wire [15:0] Signal_w4_dtc;  // ufix16_En28
  wire signed [15:0] kconst;  // sfix16_En15
  reg signed [15:0] kconst_1;  // sfix16_En15
  wire signed [31:0] Gain2_mul_temp;  // sfix32_En42
  wire [15:0] Gain2_out1;  // ufix16_En28
  reg [15:0] Gain2_out1_1;  // ufix16_En28
  wire [15:0] Absolute_Switch_out1;  // ufix16_En28


  assign Constant295_out1 = 16'sb0000000000000000;


  assign Relational_Operator2_1_cast = {{23{Signal_w4[15]}}, Signal_w4};
  assign Relational_Operator2_1_cast_1 = {Constant295_out1, 23'b00000000000000000000000};
  assign Relational_Operator2_relop1 = Relational_Operator2_1_cast < Relational_Operator2_1_cast_1;


  always @(posedge clk)
    begin : reduced_process
      if (reset == 1'b1) begin
        Signal_w4_1 <= 16'sb0000000000000000;
      end
      else begin
        if (enb) begin
          Signal_w4_1 <= Signal_w4;
        end
      end
    end



  always @(posedge clk)
    begin : delayMatch_process
      if (reset == 1'b1) begin
        delayMatch_reg[0] <= 1'b0;
        delayMatch_reg[1] <= 1'b0;
      end
      else begin
        if (enb) begin
          delayMatch_reg[0] <= delayMatch_reg_next[0];
          delayMatch_reg[1] <= delayMatch_reg_next[1];
        end
      end
    end

  assign Relational_Operator2_out1 = delayMatch_reg[1];
  assign delayMatch_reg_next[0] = Relational_Operator2_relop1;
  assign delayMatch_reg_next[1] = delayMatch_reg[0];



  assign switch_compare_1 = Relational_Operator2_out1 == 1'b1;



  always @(posedge clk)
    begin : reduced_1_process
      if (reset == 1'b1) begin
        Signal_w4_2 <= 16'sb0000000000000000;
      end
      else begin
        if (enb) begin
          Signal_w4_2 <= Signal_w4_1;
        end
      end
    end



  assign Signal_w4_dtc = {Signal_w4_2[14:0], 1'b0};



  assign kconst = 16'sb1000000000000000;



  always @(posedge clk)
    begin : HwModeRegister_process
      if (reset == 1'b1) begin
        kconst_1 <= 16'sb0000000000000000;
      end
      else begin
        if (enb) begin
          kconst_1 <= kconst;
        end
      end
    end



  assign Gain2_mul_temp = kconst_1 * Signal_w4_1;
  assign Gain2_out1 = Gain2_mul_temp[29:14];


  always @(posedge clk)
    begin : PipelineRegister_process
      if (reset == 1'b1) begin
        Gain2_out1_1 <= 16'b0000000000000000;
      end
      else begin
        if (enb) begin
          Gain2_out1_1 <= Gain2_out1;
        end
      end
    end



  assign Absolute_Switch_out1 = (switch_compare_1 == 1'b0 ? Signal_w4_dtc :
              Gain2_out1_1);


  assign Out_Abs = Absolute_Switch_out1;

endmodule  // Absolute_Value1


// -------------------------------------------------------------
// 
// File Name: hdl_prj\hdlsrc\db2_level5_final_hdlsss\Absolute_Value.v
// Created: 2024-04-18 06:57:11
// 
// Generated by MATLAB 9.10 and HDL Coder 3.18
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: Absolute_Value
// Source Path: db2_level5_final_hdlsss/DWT_db2_5_level/Threshold_Estimator/Absolute_Value
// Hierarchy Level: 2
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module Absolute_Value
          (clk,
           reset,
           enb,
           Signal_w,
           Out_Abs);


  input   clk;
  input   reset;
  input   enb;
  input   signed [15:0] Signal_w;  // sfix16_En27
  output  [15:0] Out_Abs;  // ufix16_En28


  wire signed [15:0] Constant295_out1;  // sfix16_En4
  wire signed [38:0] Relational_Operator2_1_cast;  // sfix39_En27
  wire signed [38:0] Relational_Operator2_1_cast_1;  // sfix39_En27
  wire Relational_Operator2_relop1;
  wire signed [15:0] Relational_Operator2_relop1_dtc;  // int16
  reg signed [15:0] Signal_w_1;  // sfix16_En27
  wire signed [15:0] kconst;  // sfix16_En15
  reg signed [15:0] kconst_1;  // sfix16_En15
  wire signed [31:0] Gain2_mul_temp;  // sfix32_En42
  wire [15:0] Gain2_out1;  // ufix16_En24
  reg signed [15:0] delayMatch_reg [0:1];  // sfix16 [2]
  wire signed [15:0] delayMatch_reg_next [0:1];  // sfix16 [2]
  wire signed [15:0] Relational_Operator2_out1;  // int16
  wire switch_compare_1;
  reg signed [15:0] Signal_w_2;  // sfix16_En27
  wire [15:0] Signal_w_dtc;  // ufix16_En28
  reg [15:0] Gain2_out1_1;  // ufix16_En24
  wire [15:0] Gain2_out1_dtc;  // ufix16_En28
  wire [15:0] Absolute_Switch_out1;  // ufix16_En28


  assign Constant295_out1 = 16'sb0000000000000000;


  assign Relational_Operator2_1_cast = {{23{Signal_w[15]}}, Signal_w};
  assign Relational_Operator2_1_cast_1 = {Constant295_out1, 23'b00000000000000000000000};
  assign Relational_Operator2_relop1 = Relational_Operator2_1_cast < Relational_Operator2_1_cast_1;


  assign Relational_Operator2_relop1_dtc = {15'b0, Relational_Operator2_relop1};



  always @(posedge clk)
    begin : reduced_process
      if (reset == 1'b1) begin
        Signal_w_1 <= 16'sb0000000000000000;
      end
      else begin
        if (enb) begin
          Signal_w_1 <= Signal_w;
        end
      end
    end



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



  assign Gain2_mul_temp = kconst_1 * Signal_w_1;
  assign Gain2_out1 = {{2{Gain2_mul_temp[31]}}, Gain2_mul_temp[31:18]};


  always @(posedge clk)
    begin : delayMatch_process
      if (reset == 1'b1) begin
        delayMatch_reg[0] <= 16'sb0000000000000000;
        delayMatch_reg[1] <= 16'sb0000000000000000;
      end
      else begin
        if (enb) begin
          delayMatch_reg[0] <= delayMatch_reg_next[0];
          delayMatch_reg[1] <= delayMatch_reg_next[1];
        end
      end
    end

  assign Relational_Operator2_out1 = delayMatch_reg[1];
  assign delayMatch_reg_next[0] = Relational_Operator2_relop1_dtc;
  assign delayMatch_reg_next[1] = delayMatch_reg[0];



  assign switch_compare_1 = Relational_Operator2_out1 >= 16'sb0000000000000001;



  always @(posedge clk)
    begin : reduced_1_process
      if (reset == 1'b1) begin
        Signal_w_2 <= 16'sb0000000000000000;
      end
      else begin
        if (enb) begin
          Signal_w_2 <= Signal_w_1;
        end
      end
    end



  assign Signal_w_dtc = {Signal_w_2[14:0], 1'b0};



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



  assign Gain2_out1_dtc = {Gain2_out1_1[11:0], 4'b0000};



  assign Absolute_Switch_out1 = (switch_compare_1 == 1'b0 ? Signal_w_dtc :
              Gain2_out1_dtc);


  assign Out_Abs = Absolute_Switch_out1;

endmodule  // Absolute_Value

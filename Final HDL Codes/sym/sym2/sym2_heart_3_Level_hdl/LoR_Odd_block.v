// -------------------------------------------------------------
// 
// File Name: hdlsrc\final_heart_sym2_level3_fixed\LoR_Odd_block.v
// Created: 2024-04-17 00:25:34
// 
// Generated by MATLAB 9.10 and HDL Coder 3.18
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: LoR_Odd_block
// Source Path: final_heart_sym2_level3_fixed/DWT_sym2_3_Level/1st_Level_Recon1/LoR_Odd
// Hierarchy Level: 2
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module LoR_Odd_block
          (clk,
           reset,
           enb,
           In_LoR_o,
           Out_HiR_o);


  input   clk;
  input   reset;
  input   enb;
  input   signed [15:0] In_LoR_o;  // sfix16_En23
  output  signed [15:0] Out_HiR_o;  // sfix16_En23


  wire [15:0] Constant9_out1;  // ufix16_En16
  wire signed [16:0] Multiply_cast;  // sfix17_En16
  wire signed [32:0] Multiply_mul_temp;  // sfix33_En39
  wire signed [31:0] Multiply_cast_1;  // sfix32_En39
  wire signed [15:0] Multiply_out1;  // sfix16_En23
  wire signed [15:0] Constant11_out1;  // sfix16_En17
  reg signed [15:0] Delay_out1;  // sfix16_En23
  wire signed [31:0] Multiply1_mul_temp;  // sfix32_En40
  wire signed [15:0] Multiply1_out1;  // sfix16_En26
  reg signed [15:0] Delay3_out1;  // sfix16_En26
  wire signed [15:0] Add_add_cast;  // sfix16_En23
  wire signed [15:0] Add_out1;  // sfix16_En23


  assign Constant9_out1 = 16'b1101011000100110;


  assign Multiply_cast = {1'b0, Constant9_out1};
  assign Multiply_mul_temp = Multiply_cast * In_LoR_o;
  assign Multiply_cast_1 = Multiply_mul_temp[31:0];
  assign Multiply_out1 = Multiply_cast_1[31:16];


  assign Constant11_out1 = 16'sb1011110110111110;


  always @(posedge clk)
    begin : Delay_process
      if (reset == 1'b1) begin
        Delay_out1 <= 16'sb0000000000000000;
      end
      else begin
        if (enb) begin
          Delay_out1 <= In_LoR_o;
        end
      end
    end


  assign Multiply1_mul_temp = Constant11_out1 * Delay_out1;
  assign Multiply1_out1 = Multiply1_mul_temp[29:14];


  always @(posedge clk)
    begin : Delay3_process
      if (reset == 1'b1) begin
        Delay3_out1 <= 16'sb0000000000000000;
      end
      else begin
        if (enb) begin
          Delay3_out1 <= Multiply1_out1;
        end
      end
    end


  assign Add_add_cast = {{3{Delay3_out1[15]}}, Delay3_out1[15:3]};
  assign Add_out1 = Multiply_out1 + Add_add_cast;


  assign Out_HiR_o = Add_out1;

endmodule  // LoR_Odd_block

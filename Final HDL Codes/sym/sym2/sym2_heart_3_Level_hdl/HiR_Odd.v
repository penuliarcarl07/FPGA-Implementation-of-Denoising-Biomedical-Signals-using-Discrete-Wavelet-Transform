// -------------------------------------------------------------
// 
// File Name: hdlsrc\final_heart_sym2_level3_fixed\HiR_Odd.v
// Created: 2024-04-17 00:25:34
// 
// Generated by MATLAB 9.10 and HDL Coder 3.18
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: HiR_Odd
// Source Path: final_heart_sym2_level3_fixed/DWT_sym2_3_Level/1st_Level_Recon/HiR_Odd
// Hierarchy Level: 2
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module HiR_Odd
          (clk,
           reset,
           enb,
           In_HiR_o,
           Out_HiR_o);


  input   clk;
  input   reset;
  input   enb;
  input   signed [15:0] In_HiR_o;  // sfix16_En27
  output  signed [15:0] Out_HiR_o;  // sfix16_En29


  wire signed [15:0] Constant13_out1;  // sfix16_En17
  wire signed [31:0] Multiply_mul_temp;  // sfix32_En44
  wire signed [15:0] Multiply_out1;  // sfix16_En30
  wire signed [15:0] Constant15_out1;  // sfix16_En16
  reg signed [15:0] Delay_out1;  // sfix16_En27
  wire signed [31:0] Multiply1_mul_temp;  // sfix32_En43
  wire signed [15:0] Multiply1_out1;  // sfix16_En29
  reg signed [15:0] Delay3_out1;  // sfix16_En29
  wire signed [15:0] Add_add_cast;  // sfix16_En29
  wire signed [15:0] Add_out1;  // sfix16_En29


  assign Constant13_out1 = 16'sb1000110100111101;


  assign Multiply_mul_temp = Constant13_out1 * In_HiR_o;
  assign Multiply_out1 = Multiply_mul_temp[29:14];


  assign Constant15_out1 = 16'sb1000010001011101;


  always @(posedge clk)
    begin : Delay_process
      if (reset == 1'b1) begin
        Delay_out1 <= 16'sb0000000000000000;
      end
      else begin
        if (enb) begin
          Delay_out1 <= In_HiR_o;
        end
      end
    end


  assign Multiply1_mul_temp = Constant15_out1 * Delay_out1;
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


  assign Add_add_cast = {Multiply_out1[15], Multiply_out1[15:1]};
  assign Add_out1 = Add_add_cast + Delay3_out1;


  assign Out_HiR_o = Add_out1;

endmodule  // HiR_Odd

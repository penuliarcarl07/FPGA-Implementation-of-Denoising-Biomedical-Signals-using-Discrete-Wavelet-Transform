// -------------------------------------------------------------
// 
// File Name: hdlsrc\final_heart_sym2_level3_fixed\LoD_Odd.v
// Created: 2024-04-17 00:25:34
// 
// Generated by MATLAB 9.10 and HDL Coder 3.18
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: LoD_Odd
// Source Path: final_heart_sym2_level3_fixed/DWT_sym2_3_Level/1st_Level_Decomp/LoD_Odd
// Hierarchy Level: 2
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module LoD_Odd
          (clk,
           reset,
           enb,
           In_LoD_o,
           Out_LoD_o);


  input   clk;
  input   reset;
  input   enb;
  input   [15:0] In_LoD_o;  // ufix16_En23
  output  [15:0] Out_LoD_o;  // ufix16_En24


  wire [15:0] LoD_1_out1;  // ufix16_En18
  wire [31:0] Multiply_mul_temp;  // ufix32_En41
  wire [15:0] Multiply_out1;  // ufix16_En25
  wire [15:0] LoD_3_out1;  // ufix16_En17
  reg [15:0] Delay_out1;  // ufix16_En23
  wire [31:0] Multiply1_mul_temp;  // ufix32_En40
  wire [15:0] Multiply1_out1;  // ufix16_En24
  reg [15:0] Delay3_out1;  // ufix16_En24
  wire [15:0] Add_add_cast;  // ufix16_En24
  wire [15:0] Add_out1;  // ufix16_En24


  assign LoD_1_out1 = 16'b1110010110000110;


  assign Multiply_mul_temp = LoD_1_out1 * In_LoD_o;
  assign Multiply_out1 = Multiply_mul_temp[31:16];


  assign LoD_3_out1 = 16'b1111011101000111;


  always @(posedge clk)
    begin : Delay_process
      if (reset == 1'b1) begin
        Delay_out1 <= 16'b0000000000000000;
      end
      else begin
        if (enb) begin
          Delay_out1 <= In_LoD_o;
        end
      end
    end


  assign Multiply1_mul_temp = LoD_3_out1 * Delay_out1;
  assign Multiply1_out1 = Multiply1_mul_temp[31:16];


  always @(posedge clk)
    begin : Delay3_process
      if (reset == 1'b1) begin
        Delay3_out1 <= 16'b0000000000000000;
      end
      else begin
        if (enb) begin
          Delay3_out1 <= Multiply1_out1;
        end
      end
    end


  assign Add_add_cast = {1'b0, Multiply_out1[15:1]};
  assign Add_out1 = Add_add_cast + Delay3_out1;


  assign Out_LoD_o = Add_out1;

endmodule  // LoD_Odd


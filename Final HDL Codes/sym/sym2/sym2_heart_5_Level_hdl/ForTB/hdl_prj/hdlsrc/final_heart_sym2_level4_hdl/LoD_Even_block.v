// -------------------------------------------------------------
// 
// File Name: hdl_prj\hdlsrc\final_heart_sym2_level4_hdl\LoD_Even_block.v
// Created: 2024-04-17 11:34:26
// 
// Generated by MATLAB 9.10 and HDL Coder 3.18
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: LoD_Even_block
// Source Path: final_heart_sym2_level4_hdl/DWT_Sym2_Level4/1st_Level_Decomp1/LoD_Even
// Hierarchy Level: 2
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module LoD_Even_block
          (clk,
           reset,
           enb,
           In_LoD_e,
           Out_LoD_e);


  input   clk;
  input   reset;
  input   enb;
  input   signed [15:0] In_LoD_e;  // sfix16_En22
  output  signed [15:0] Out_LoD_e;  // sfix16_En23


  wire signed [15:0] LoD_0_out1;  // sfix16_En17
  reg signed [15:0] LoD_0_out1_1;  // sfix16_En17
  reg signed [15:0] In_LoD_e_1;  // sfix16_En22
  wire signed [31:0] Multiply_mul_temp;  // sfix32_En39
  wire signed [15:0] Multiply_out1;  // sfix16_En15
  reg signed [15:0] Multiply_out1_1;  // sfix16_En15
  wire [15:0] LoD_2_out1;  // ufix16_En16
  reg [15:0] LoD_2_out1_1;  // ufix16_En16
  reg signed [15:0] Rate_Transition_out1;  // sfix16_En22
  wire signed [16:0] Multiply1_cast;  // sfix17_En16
  wire signed [32:0] Multiply1_mul_temp;  // sfix33_En38
  wire signed [31:0] Multiply1_cast_1;  // sfix32_En38
  wire [15:0] Multiply1_out1;  // ufix16_En24
  reg [15:0] delayMatch_reg [0:1];  // ufix16 [2]
  wire [15:0] delayMatch_reg_next [0:1];  // ufix16_En24 [2]
  wire [15:0] Multiply1_out1_1;  // ufix16_En24
  wire signed [15:0] Add_add_cast;  // sfix16_En23
  wire signed [15:0] Add_add_cast_1;  // sfix16_En23
  wire signed [15:0] Add_out1;  // sfix16_En23


  assign LoD_0_out1 = 16'sb1011110110111110;


  always @(posedge clk)
    begin : HwModeRegister_process
      if (reset == 1'b1) begin
        LoD_0_out1_1 <= 16'sb0000000000000000;
      end
      else begin
        if (enb) begin
          LoD_0_out1_1 <= LoD_0_out1;
        end
      end
    end



  always @(posedge clk)
    begin : reduced_process
      if (reset == 1'b1) begin
        In_LoD_e_1 <= 16'sb0000000000000000;
      end
      else begin
        if (enb) begin
          In_LoD_e_1 <= In_LoD_e;
        end
      end
    end


  assign Multiply_mul_temp = LoD_0_out1_1 * In_LoD_e_1;
  assign Multiply_out1 = {{8{Multiply_mul_temp[31]}}, Multiply_mul_temp[31:24]};


  always @(posedge clk)
    begin : PipelineRegister_process
      if (reset == 1'b1) begin
        Multiply_out1_1 <= 16'sb0000000000000000;
      end
      else begin
        if (enb) begin
          Multiply_out1_1 <= Multiply_out1;
        end
      end
    end



  assign LoD_2_out1 = 16'b1101011000100110;


  always @(posedge clk)
    begin : HwModeRegister2_process
      if (reset == 1'b1) begin
        LoD_2_out1_1 <= 16'b0000000000000000;
      end
      else begin
        if (enb) begin
          LoD_2_out1_1 <= LoD_2_out1;
        end
      end
    end



  always @(posedge clk)
    begin : HwModeRegister3_process
      if (reset == 1'b1) begin
        Rate_Transition_out1 <= 16'sb0000000000000000;
      end
      else begin
        if (enb) begin
          Rate_Transition_out1 <= In_LoD_e_1;
        end
      end
    end



  assign Multiply1_cast = {1'b0, LoD_2_out1_1};
  assign Multiply1_mul_temp = Multiply1_cast * Rate_Transition_out1;
  assign Multiply1_cast_1 = Multiply1_mul_temp[31:0];
  assign Multiply1_out1 = Multiply1_cast_1[29:14];


  always @(posedge clk)
    begin : delayMatch_process
      if (reset == 1'b1) begin
        delayMatch_reg[0] <= 16'b0000000000000000;
        delayMatch_reg[1] <= 16'b0000000000000000;
      end
      else begin
        if (enb) begin
          delayMatch_reg[0] <= delayMatch_reg_next[0];
          delayMatch_reg[1] <= delayMatch_reg_next[1];
        end
      end
    end

  assign Multiply1_out1_1 = delayMatch_reg[1];
  assign delayMatch_reg_next[0] = Multiply1_out1;
  assign delayMatch_reg_next[1] = delayMatch_reg[0];



  assign Add_add_cast = {Multiply_out1_1[7:0], 8'b00000000};
  assign Add_add_cast_1 = {1'b0, Multiply1_out1_1[15:1]};
  assign Add_out1 = Add_add_cast + Add_add_cast_1;


  assign Out_LoD_e = Add_out1;

endmodule  // LoD_Even_block


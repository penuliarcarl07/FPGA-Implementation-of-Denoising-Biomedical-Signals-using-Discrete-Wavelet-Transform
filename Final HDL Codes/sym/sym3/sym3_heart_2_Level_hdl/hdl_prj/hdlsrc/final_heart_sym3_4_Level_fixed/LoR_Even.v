// -------------------------------------------------------------
// 
// File Name: hdl_prj\hdlsrc\final_heart_sym3_4_Level_fixed\LoR_Even.v
// Created: 2024-04-17 19:42:54
// 
// Generated by MATLAB 9.10 and HDL Coder 3.18
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: LoR_Even
// Source Path: final_heart_sym3_4_Level_fixed/DWT_sym3_4_Level/1st_Level_Recon/LoR_Even
// Hierarchy Level: 2
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module LoR_Even
          (clk,
           reset,
           enb,
           In_LoR_e,
           Out_LoR_e);


  input   clk;
  input   reset;
  input   enb;
  input   signed [15:0] In_LoR_e;  // sfix16_En24
  output  signed [15:0] Out_LoR_e;  // sfix16_En24


  wire [15:0] LoR_0_out1;  // ufix16_En17
  reg [15:0] LoR_0_out1_1;  // ufix16_En17
  reg signed [15:0] In_LoR_e_1;  // sfix16_En24
  wire signed [16:0] Multiply_cast;  // sfix17_En17
  wire signed [32:0] Multiply_mul_temp;  // sfix33_En41
  wire signed [31:0] Multiply_cast_1;  // sfix32_En41
  wire signed [15:0] Multiply_out1;  // sfix16_En25
  reg signed [15:0] Multiply_out1_1;  // sfix16_En25
  wire [15:0] LoR_2_out1;  // ufix16_En17
  reg [15:0] LoR_2_out1_1;  // ufix16_En17
  reg signed [15:0] Rate_Transition_out1;  // sfix16_En24
  wire signed [16:0] Multiply1_cast;  // sfix17_En17
  wire signed [32:0] Multiply1_mul_temp;  // sfix33_En41
  wire signed [31:0] Multiply1_cast_1;  // sfix32_En41
  wire signed [15:0] Multiply1_out1;  // sfix16_En25
  reg signed [15:0] Multiply1_out1_1;  // sfix16_En25
  wire signed [15:0] LoR_4_out1;  // sfix16_En18
  reg signed [15:0] LoR_4_out1_1;  // sfix16_En18
  reg signed [15:0] Rate_Transition1_out1;  // sfix16_En24
  wire signed [31:0] Multiply2_mul_temp;  // sfix32_En42
  wire signed [15:0] Multiply2_out1;  // sfix16_En27
  reg signed [15:0] delayMatch_reg [0:1];  // sfix16 [2]
  wire signed [15:0] delayMatch_reg_next [0:1];  // sfix16_En27 [2]
  wire signed [15:0] Multiply2_out1_1;  // sfix16_En27
  wire signed [15:0] Add1_add_cast;  // sfix16_En25
  wire signed [15:0] Add1_out1;  // sfix16_En25
  reg signed [15:0] Delay3_out1;  // sfix16_En25
  wire signed [15:0] Add_add_cast;  // sfix16_En24
  wire signed [15:0] Add_add_cast_1;  // sfix16_En24
  wire signed [15:0] Add_out1;  // sfix16_En24


  assign LoR_0_out1 = 16'b1010101001010100;


  always @(posedge clk)
    begin : HwModeRegister_process
      if (reset == 1'b1) begin
        LoR_0_out1_1 <= 16'b0000000000000000;
      end
      else begin
        if (enb) begin
          LoR_0_out1_1 <= LoR_0_out1;
        end
      end
    end



  always @(posedge clk)
    begin : reduced_process
      if (reset == 1'b1) begin
        In_LoR_e_1 <= 16'sb0000000000000000;
      end
      else begin
        if (enb) begin
          In_LoR_e_1 <= In_LoR_e;
        end
      end
    end


  assign Multiply_cast = {1'b0, LoR_0_out1_1};
  assign Multiply_mul_temp = Multiply_cast * In_LoR_e_1;
  assign Multiply_cast_1 = Multiply_mul_temp[31:0];
  assign Multiply_out1 = Multiply_cast_1[31:16];


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



  assign LoR_2_out1 = 16'b1110101101110101;


  always @(posedge clk)
    begin : HwModeRegister2_process
      if (reset == 1'b1) begin
        LoR_2_out1_1 <= 16'b0000000000000000;
      end
      else begin
        if (enb) begin
          LoR_2_out1_1 <= LoR_2_out1;
        end
      end
    end



  always @(posedge clk)
    begin : reduced_1_process
      if (reset == 1'b1) begin
        Rate_Transition_out1 <= 16'sb0000000000000000;
      end
      else begin
        if (enb) begin
          Rate_Transition_out1 <= In_LoR_e_1;
        end
      end
    end


  assign Multiply1_cast = {1'b0, LoR_2_out1_1};
  assign Multiply1_mul_temp = Multiply1_cast * Rate_Transition_out1;
  assign Multiply1_cast_1 = Multiply1_mul_temp[31:0];
  assign Multiply1_out1 = Multiply1_cast_1[31:16];


  always @(posedge clk)
    begin : PipelineRegister1_process
      if (reset == 1'b1) begin
        Multiply1_out1_1 <= 16'sb0000000000000000;
      end
      else begin
        if (enb) begin
          Multiply1_out1_1 <= Multiply1_out1;
        end
      end
    end



  assign LoR_4_out1 = 16'sb1010100010000010;


  always @(posedge clk)
    begin : HwModeRegister4_process
      if (reset == 1'b1) begin
        LoR_4_out1_1 <= 16'sb0000000000000000;
      end
      else begin
        if (enb) begin
          LoR_4_out1_1 <= LoR_4_out1;
        end
      end
    end



  always @(posedge clk)
    begin : HwModeRegister5_process
      if (reset == 1'b1) begin
        Rate_Transition1_out1 <= 16'sb0000000000000000;
      end
      else begin
        if (enb) begin
          Rate_Transition1_out1 <= Rate_Transition_out1;
        end
      end
    end



  assign Multiply2_mul_temp = LoR_4_out1_1 * Rate_Transition1_out1;
  assign Multiply2_out1 = Multiply2_mul_temp[30:15];


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

  assign Multiply2_out1_1 = delayMatch_reg[1];
  assign delayMatch_reg_next[0] = Multiply2_out1;
  assign delayMatch_reg_next[1] = delayMatch_reg[0];



  assign Add1_add_cast = {{2{Multiply2_out1_1[15]}}, Multiply2_out1_1[15:2]};
  assign Add1_out1 = Multiply1_out1_1 + Add1_add_cast;


  always @(posedge clk)
    begin : Delay3_process
      if (reset == 1'b1) begin
        Delay3_out1 <= 16'sb0000000000000000;
      end
      else begin
        if (enb) begin
          Delay3_out1 <= Add1_out1;
        end
      end
    end


  assign Add_add_cast = {Multiply_out1_1[15], Multiply_out1_1[15:1]};
  assign Add_add_cast_1 = {Delay3_out1[15], Delay3_out1[15:1]};
  assign Add_out1 = Add_add_cast + Add_add_cast_1;


  assign Out_LoR_e = Add_out1;

endmodule  // LoR_Even


// -------------------------------------------------------------
// 
// File Name: hdl_prj\hdlsrc\final_heart_sym3_3_Level_fixed\HiD_Even_block1.v
// Created: 2024-04-18 17:46:00
// 
// Generated by MATLAB 9.10 and HDL Coder 3.18
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: HiD_Even_block1
// Source Path: final_heart_sym3_3_Level_fixed/DWT_sym3_3_Level/1st_Level_Decomp2/HiD_Even
// Hierarchy Level: 2
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module HiD_Even_block1
          (clk,
           reset,
           enb,
           In_HiD_e,
           Out_HiD_e);


  input   clk;
  input   reset;
  input   enb;
  input   signed [15:0] In_HiD_e;  // sfix16_En24
  output  signed [15:0] Out_HiD_e;  // sfix16_En24


  wire signed [15:0] HiD_0_out1;  // sfix16_En16
  reg signed [15:0] HiD_0_out1_1;  // sfix16_En16
  reg signed [15:0] In_HiD_e_1;  // sfix16_En24
  wire signed [31:0] Multiply3_mul_temp;  // sfix32_En40
  wire signed [15:0] Multiply3_out1;  // sfix16_En15
  reg signed [15:0] Multiply3_out1_1;  // sfix16_En15
  wire signed [15:0] HiD_2_out1;  // sfix16_En16
  reg signed [15:0] HiD_2_out1_1;  // sfix16_En16
  reg signed [15:0] Rate_Transition_out1;  // sfix16_En24
  wire signed [31:0] Multiply1_mul_temp;  // sfix32_En40
  wire signed [15:0] Multiply1_out1;  // sfix16_En15
  reg signed [15:0] Multiply1_out1_1;  // sfix16_En15
  wire [15:0] HiD_4_out1;  // ufix16_En19
  reg [15:0] HiD_4_out1_1;  // ufix16_En19
  reg signed [15:0] Rate_Transition1_out1;  // sfix16_En24
  wire signed [16:0] Multiply2_cast;  // sfix17_En19
  wire signed [32:0] Multiply2_mul_temp;  // sfix33_En43
  wire signed [31:0] Multiply2_cast_1;  // sfix32_En43
  wire [15:0] Multiply2_out1;  // ufix16_En28
  reg [15:0] delayMatch_reg [0:1];  // ufix16 [2]
  wire [15:0] delayMatch_reg_next [0:1];  // ufix16_En28 [2]
  wire [15:0] Multiply2_out1_1;  // ufix16_En28
  wire signed [15:0] Add1_add_cast;  // sfix16_En25
  wire signed [15:0] Add1_add_cast_1;  // sfix16_En25
  wire signed [15:0] Add1_out1;  // sfix16_En25
  reg signed [15:0] Delay3_out1;  // sfix16_En25
  wire signed [15:0] Add_add_cast;  // sfix16_En24
  wire signed [15:0] Add_add_cast_1;  // sfix16_En24
  wire signed [15:0] Add_out1;  // sfix16_En24


  assign HiD_0_out1 = 16'sb1010101011010110;


  always @(posedge clk)
    begin : HwModeRegister4_process
      if (reset == 1'b1) begin
        HiD_0_out1_1 <= 16'sb0000000000000000;
      end
      else begin
        if (enb) begin
          HiD_0_out1_1 <= HiD_0_out1;
        end
      end
    end



  always @(posedge clk)
    begin : reduced_process
      if (reset == 1'b1) begin
        In_HiD_e_1 <= 16'sb0000000000000000;
      end
      else begin
        if (enb) begin
          In_HiD_e_1 <= In_HiD_e;
        end
      end
    end


  assign Multiply3_mul_temp = HiD_0_out1_1 * In_HiD_e_1;
  assign Multiply3_out1 = {{9{Multiply3_mul_temp[31]}}, Multiply3_mul_temp[31:25]};


  always @(posedge clk)
    begin : PipelineRegister2_process
      if (reset == 1'b1) begin
        Multiply3_out1_1 <= 16'sb0000000000000000;
      end
      else begin
        if (enb) begin
          Multiply3_out1_1 <= Multiply3_out1;
        end
      end
    end



  assign HiD_2_out1 = 16'sb1000101001000101;


  always @(posedge clk)
    begin : HwModeRegister_process
      if (reset == 1'b1) begin
        HiD_2_out1_1 <= 16'sb0000000000000000;
      end
      else begin
        if (enb) begin
          HiD_2_out1_1 <= HiD_2_out1;
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
          Rate_Transition_out1 <= In_HiD_e_1;
        end
      end
    end


  assign Multiply1_mul_temp = HiD_2_out1_1 * Rate_Transition_out1;
  assign Multiply1_out1 = {{9{Multiply1_mul_temp[31]}}, Multiply1_mul_temp[31:25]};


  always @(posedge clk)
    begin : PipelineRegister_process
      if (reset == 1'b1) begin
        Multiply1_out1_1 <= 16'sb0000000000000000;
      end
      else begin
        if (enb) begin
          Multiply1_out1_1 <= Multiply1_out1;
        end
      end
    end



  assign HiD_4_out1 = 16'b1010111011111100;


  always @(posedge clk)
    begin : HwModeRegister2_process
      if (reset == 1'b1) begin
        HiD_4_out1_1 <= 16'b0000000000000000;
      end
      else begin
        if (enb) begin
          HiD_4_out1_1 <= HiD_4_out1;
        end
      end
    end



  always @(posedge clk)
    begin : HwModeRegister3_process
      if (reset == 1'b1) begin
        Rate_Transition1_out1 <= 16'sb0000000000000000;
      end
      else begin
        if (enb) begin
          Rate_Transition1_out1 <= Rate_Transition_out1;
        end
      end
    end



  assign Multiply2_cast = {1'b0, HiD_4_out1_1};
  assign Multiply2_mul_temp = Multiply2_cast * Rate_Transition1_out1;
  assign Multiply2_cast_1 = Multiply2_mul_temp[31:0];
  assign Multiply2_out1 = Multiply2_cast_1[30:15];


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

  assign Multiply2_out1_1 = delayMatch_reg[1];
  assign delayMatch_reg_next[0] = Multiply2_out1;
  assign delayMatch_reg_next[1] = delayMatch_reg[0];



  assign Add1_add_cast = {Multiply1_out1_1[5:0], 10'b0000000000};
  assign Add1_add_cast_1 = {3'b0, Multiply2_out1_1[15:3]};
  assign Add1_out1 = Add1_add_cast + Add1_add_cast_1;


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


  assign Add_add_cast = {Multiply3_out1_1[6:0], 9'b000000000};
  assign Add_add_cast_1 = {Delay3_out1[15], Delay3_out1[15:1]};
  assign Add_out1 = Add_add_cast + Add_add_cast_1;


  assign Out_HiD_e = Add_out1;

endmodule  // HiD_Even_block1


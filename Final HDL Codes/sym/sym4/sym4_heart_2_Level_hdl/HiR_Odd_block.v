// -------------------------------------------------------------
// 
// File Name: hdl_prj\hdlsrc\final_heart_sym4_2_Level_fixed\HiR_Odd_block.v
// Created: 2024-04-15 21:31:10
// 
// Generated by MATLAB 9.10 and HDL Coder 3.18
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: HiR_Odd_block
// Source Path: final_heart_sym4_2_Level_fixed/DWT_sym4_2_Level/1st_Level_Recon2/HiR_Odd
// Hierarchy Level: 2
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module HiR_Odd_block
          (clk,
           reset,
           enb,
           In_HiR_o,
           Out_HiR_o);


  input   clk;
  input   reset;
  input   enb;
  input   signed [15:0] In_HiR_o;  // sfix16_En28
  output  signed [15:0] Out_HiR_o;  // sfix16_En28


  wire [15:0] HiR_1_out1;  // ufix16_En21
  reg [15:0] HiR_1_out1_1;  // ufix16_En21
  reg signed [15:0] In_HiR_o_1;  // sfix16_En28
  wire signed [16:0] Multiply4_cast;  // sfix17_En21
  wire signed [32:0] Multiply4_mul_temp;  // sfix33_En49
  wire signed [31:0] Multiply4_cast_1;  // sfix32_En49
  wire signed [15:0] Multiply4_out1;  // sfix16_En33
  reg signed [15:0] Multiply4_out1_1;  // sfix16_En33
  wire signed [15:0] HiR_3_out1;  // sfix16_En15
  reg signed [15:0] HiR_3_out1_1;  // sfix16_En15
  reg signed [15:0] Rate_Transition_out1;  // sfix16_En28
  wire signed [31:0] Multiply1_mul_temp;  // sfix32_En43
  wire signed [15:0] Multiply1_out1;  // sfix16_En28
  reg signed [15:0] Multiply1_out1_1;  // sfix16_En28
  wire [15:0] HiR_5_out1;  // ufix16_En19
  reg [15:0] HiR_5_out1_1;  // ufix16_En19
  reg signed [15:0] Rate_Transition1_out1;  // sfix16_En28
  wire signed [16:0] Multiply2_cast;  // sfix17_En19
  wire signed [32:0] Multiply2_mul_temp;  // sfix33_En47
  wire signed [31:0] Multiply2_cast_1;  // sfix32_En47
  wire signed [15:0] Multiply2_out1;  // sfix16_En31
  reg signed [15:0] Multiply2_out1_1;  // sfix16_En31
  wire signed [15:0] HiR_7_out1;  // sfix16_En19
  reg signed [15:0] HiR_7_out1_1;  // sfix16_En19
  reg signed [15:0] Rate_Transition2_out1;  // sfix16_En28
  wire signed [31:0] Multiply3_mul_temp;  // sfix32_En47
  wire signed [15:0] Multiply3_out1;  // sfix16_En33
  reg signed [15:0] delayMatch_reg [0:1];  // sfix16 [2]
  wire signed [15:0] delayMatch_reg_next [0:1];  // sfix16_En33 [2]
  wire signed [15:0] Multiply3_out1_1;  // sfix16_En33
  wire signed [15:0] Add2_add_cast;  // sfix16_En31
  wire signed [15:0] Add2_out1;  // sfix16_En31
  reg signed [15:0] Delay3_out1;  // sfix16_En31
  wire signed [15:0] Add1_add_cast;  // sfix16_En28
  wire signed [15:0] Add1_out1;  // sfix16_En28
  reg signed [15:0] Delay7_out1;  // sfix16_En28
  wire signed [15:0] Add3_add_cast;  // sfix16_En28
  wire signed [15:0] Add3_out1;  // sfix16_En28


  assign HiR_1_out1 = 16'b1111001011000110;


  always @(posedge clk)
    begin : HwModeRegister6_process
      if (reset == 1'b1) begin
        HiR_1_out1_1 <= 16'b0000000000000000;
      end
      else begin
        if (enb) begin
          HiR_1_out1_1 <= HiR_1_out1;
        end
      end
    end



  always @(posedge clk)
    begin : reduced_process
      if (reset == 1'b1) begin
        In_HiR_o_1 <= 16'sb0000000000000000;
      end
      else begin
        if (enb) begin
          In_HiR_o_1 <= In_HiR_o;
        end
      end
    end


  assign Multiply4_cast = {1'b0, HiR_1_out1_1};
  assign Multiply4_mul_temp = Multiply4_cast * In_HiR_o_1;
  assign Multiply4_cast_1 = Multiply4_mul_temp[31:0];
  assign Multiply4_out1 = Multiply4_cast_1[31:16];


  always @(posedge clk)
    begin : PipelineRegister3_process
      if (reset == 1'b1) begin
        Multiply4_out1_1 <= 16'sb0000000000000000;
      end
      else begin
        if (enb) begin
          Multiply4_out1_1 <= Multiply4_out1;
        end
      end
    end



  assign HiR_3_out1 = 16'sb1001100100011111;


  always @(posedge clk)
    begin : HwModeRegister_process
      if (reset == 1'b1) begin
        HiR_3_out1_1 <= 16'sb0000000000000000;
      end
      else begin
        if (enb) begin
          HiR_3_out1_1 <= HiR_3_out1;
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
          Rate_Transition_out1 <= In_HiR_o_1;
        end
      end
    end


  assign Multiply1_mul_temp = HiR_3_out1_1 * Rate_Transition_out1;
  assign Multiply1_out1 = Multiply1_mul_temp[30:15];


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



  assign HiR_5_out1 = 16'b1100101100110100;


  always @(posedge clk)
    begin : HwModeRegister2_process
      if (reset == 1'b1) begin
        HiR_5_out1_1 <= 16'b0000000000000000;
      end
      else begin
        if (enb) begin
          HiR_5_out1_1 <= HiR_5_out1;
        end
      end
    end



  always @(posedge clk)
    begin : reduced_2_process
      if (reset == 1'b1) begin
        Rate_Transition1_out1 <= 16'sb0000000000000000;
      end
      else begin
        if (enb) begin
          Rate_Transition1_out1 <= Rate_Transition_out1;
        end
      end
    end


  assign Multiply2_cast = {1'b0, HiR_5_out1_1};
  assign Multiply2_mul_temp = Multiply2_cast * Rate_Transition1_out1;
  assign Multiply2_cast_1 = Multiply2_mul_temp[31:0];
  assign Multiply2_out1 = Multiply2_cast_1[31:16];


  always @(posedge clk)
    begin : PipelineRegister1_process
      if (reset == 1'b1) begin
        Multiply2_out1_1 <= 16'sb0000000000000000;
      end
      else begin
        if (enb) begin
          Multiply2_out1_1 <= Multiply2_out1;
        end
      end
    end



  assign HiR_7_out1 = 16'sb1011111000000010;


  always @(posedge clk)
    begin : HwModeRegister4_process
      if (reset == 1'b1) begin
        HiR_7_out1_1 <= 16'sb0000000000000000;
      end
      else begin
        if (enb) begin
          HiR_7_out1_1 <= HiR_7_out1;
        end
      end
    end



  always @(posedge clk)
    begin : HwModeRegister5_process
      if (reset == 1'b1) begin
        Rate_Transition2_out1 <= 16'sb0000000000000000;
      end
      else begin
        if (enb) begin
          Rate_Transition2_out1 <= Rate_Transition1_out1;
        end
      end
    end



  assign Multiply3_mul_temp = HiR_7_out1_1 * Rate_Transition2_out1;
  assign Multiply3_out1 = Multiply3_mul_temp[29:14];


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

  assign Multiply3_out1_1 = delayMatch_reg[1];
  assign delayMatch_reg_next[0] = Multiply3_out1;
  assign delayMatch_reg_next[1] = delayMatch_reg[0];



  assign Add2_add_cast = {{2{Multiply3_out1_1[15]}}, Multiply3_out1_1[15:2]};
  assign Add2_out1 = Multiply2_out1_1 + Add2_add_cast;


  always @(posedge clk)
    begin : Delay3_process
      if (reset == 1'b1) begin
        Delay3_out1 <= 16'sb0000000000000000;
      end
      else begin
        if (enb) begin
          Delay3_out1 <= Add2_out1;
        end
      end
    end


  assign Add1_add_cast = {{3{Delay3_out1[15]}}, Delay3_out1[15:3]};
  assign Add1_out1 = Multiply1_out1_1 + Add1_add_cast;


  always @(posedge clk)
    begin : Delay7_process
      if (reset == 1'b1) begin
        Delay7_out1 <= 16'sb0000000000000000;
      end
      else begin
        if (enb) begin
          Delay7_out1 <= Add1_out1;
        end
      end
    end


  assign Add3_add_cast = {{5{Multiply4_out1_1[15]}}, Multiply4_out1_1[15:5]};
  assign Add3_out1 = Add3_add_cast + Delay7_out1;


  assign Out_HiR_o = Add3_out1;

endmodule  // HiR_Odd_block


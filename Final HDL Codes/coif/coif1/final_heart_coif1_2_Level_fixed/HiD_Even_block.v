// -------------------------------------------------------------
// 
// File Name: hdl_prj\hdlsrc\final_heart_coif1_2_Level_fixed\HiD_Even_block.v
// Created: 2024-04-18 11:20:58
// 
// Generated by MATLAB 9.10 and HDL Coder 3.18
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: HiD_Even_block
// Source Path: final_heart_coif1_2_Level_fixed/DWT_coif1_2_Level/1st_Level_Decomp1/HiD_Even
// Hierarchy Level: 2
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module HiD_Even_block
          (clk,
           reset,
           enb,
           In_HiD_e,
           Out_HiD_e);


  input   clk;
  input   reset;
  input   enb;
  input   signed [15:0] In_HiD_e;  // sfix16_En23
  output  signed [15:0] Out_HiD_e;  // sfix16_En24


  wire [15:0] HiD_0_out1;  // ufix16_En19
  reg [15:0] HiD_0_out1_1;  // ufix16_En19
  reg signed [15:0] In_HiD_e_1;  // sfix16_En23
  wire signed [16:0] Multiply_cast;  // sfix17_En19
  wire signed [32:0] Multiply_mul_temp;  // sfix33_En42
  wire signed [31:0] Multiply_cast_1;  // sfix32_En42
  wire [15:0] Multiply_out1;  // ufix16_En28
  reg [15:0] Multiply_out1_1;  // ufix16_En28
  wire signed [15:0] HiD_2_out1;  // sfix16_En15
  reg signed [15:0] HiD_2_out1_1;  // sfix16_En15
  reg signed [15:0] Rate_Transition_out1;  // sfix16_En23
  wire signed [31:0] Multiply1_mul_temp;  // sfix32_En38
  wire signed [15:0] Multiply1_out1;  // sfix16_En15
  reg signed [15:0] Multiply1_out1_1;  // sfix16_En15
  wire [15:0] HiD_4_out1;  // ufix16_En19
  reg [15:0] HiD_4_out1_1;  // ufix16_En19
  reg signed [15:0] Rate_Transition1_out1;  // sfix16_En23
  wire signed [16:0] Multiply2_cast;  // sfix17_En19
  wire signed [32:0] Multiply2_mul_temp;  // sfix33_En42
  wire signed [31:0] Multiply2_cast_1;  // sfix32_En42
  wire [15:0] Multiply2_out1;  // ufix16_En28
  reg [15:0] delayMatch_reg [0:1];  // ufix16 [2]
  wire [15:0] delayMatch_reg_next [0:1];  // ufix16_En28 [2]
  wire [15:0] Multiply2_out1_1;  // ufix16_En28
  wire signed [15:0] Add1_add_cast;  // sfix16_En23
  wire signed [15:0] Add1_add_cast_1;  // sfix16_En23
  wire signed [15:0] Add1_add_temp;  // sfix16_En23
  wire signed [15:0] Add1_out1;  // sfix16_En15
  reg signed [15:0] Delay3_out1;  // sfix16_En15
  wire signed [15:0] Add_add_cast;  // sfix16_En24
  wire signed [15:0] Add_add_cast_1;  // sfix16_En24
  wire signed [15:0] Add_out1;  // sfix16_En24


  assign HiD_0_out1 = 16'b1001010011110101;


  always @(posedge clk)
    begin : HwModeRegister_process
      if (reset == 1'b1) begin
        HiD_0_out1_1 <= 16'b0000000000000000;
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


  assign Multiply_cast = {1'b0, HiD_0_out1_1};
  assign Multiply_mul_temp = Multiply_cast * In_HiD_e_1;
  assign Multiply_cast_1 = Multiply_mul_temp[31:0];
  assign Multiply_out1 = Multiply_cast_1[29:14];


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



  assign HiD_2_out1 = 16'sb1001001011011111;


  always @(posedge clk)
    begin : HwModeRegister2_process
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
  assign Multiply1_out1 = {{7{Multiply1_mul_temp[31]}}, Multiply1_mul_temp[31:23]};


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



  assign HiD_4_out1 = 16'b1001010011110101;


  always @(posedge clk)
    begin : HwModeRegister4_process
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



  assign Multiply2_cast = {1'b0, HiD_4_out1_1};
  assign Multiply2_mul_temp = Multiply2_cast * Rate_Transition1_out1;
  assign Multiply2_cast_1 = Multiply2_mul_temp[31:0];
  assign Multiply2_out1 = Multiply2_cast_1[29:14];


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



  assign Add1_add_cast = {Multiply1_out1_1[7:0], 8'b00000000};
  assign Add1_add_cast_1 = {5'b0, Multiply2_out1_1[15:5]};
  assign Add1_add_temp = Add1_add_cast + Add1_add_cast_1;
  assign Add1_out1 = {{8{Add1_add_temp[15]}}, Add1_add_temp[15:8]};


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


  assign Add_add_cast = {4'b0, Multiply_out1_1[15:4]};
  assign Add_add_cast_1 = {Delay3_out1[6:0], 9'b000000000};
  assign Add_out1 = Add_add_cast + Add_add_cast_1;


  assign Out_HiD_e = Add_out1;

endmodule  // HiD_Even_block


// -------------------------------------------------------------
// 
// File Name: hdl_prj\hdlsrc\db5_2level_final_hdl\HiR_Odd.v
// Created: 2024-04-17 05:55:27
// 
// Generated by MATLAB 9.10 and HDL Coder 3.18
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: HiR_Odd
// Source Path: db5_2level_final_hdl/DWT_db5_2level/1st_Level_Recon/HiR_Odd
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
  output  signed [15:0] Out_HiR_o;  // sfix16_En27


  wire [15:0] HiR_1_out1;  // ufix16_En22
  reg [15:0] HiR_1_out1_1;  // ufix16_En22
  reg signed [15:0] In_HiR_o_1;  // sfix16_En27
  wire signed [16:0] Multiply_cast;  // sfix17_En22
  wire signed [32:0] Multiply_mul_temp;  // sfix33_En49
  wire signed [31:0] Multiply_cast_1;  // sfix32_En49
  wire signed [15:0] Multiply_out1;  // sfix16_En33
  reg signed [15:0] Multiply_out1_1;  // sfix16_En33
  wire signed [15:0] HiR_3_out1;  // sfix16_En18
  reg signed [15:0] HiR_3_out1_1;  // sfix16_En18
  reg signed [15:0] Rate_Transition3_out1;  // sfix16_En27
  wire signed [31:0] Multiply1_mul_temp;  // sfix32_En45
  wire signed [15:0] Multiply1_out1;  // sfix16_En30
  reg signed [15:0] Multiply1_out1_1;  // sfix16_En30
  wire [15:0] HiR_5_out1;  // ufix16_En18
  reg [15:0] HiR_5_out1_1;  // ufix16_En18
  reg signed [15:0] Rate_Transition2_out1;  // sfix16_En27
  wire signed [16:0] Multiply2_cast;  // sfix17_En18
  wire signed [32:0] Multiply2_mul_temp;  // sfix33_En45
  wire signed [31:0] Multiply2_cast_1;  // sfix32_En45
  wire signed [15:0] Multiply2_out1;  // sfix16_En29
  reg signed [15:0] Multiply2_out1_1;  // sfix16_En29
  wire signed [15:0] HiR_7_out1;  // sfix16_En15
  reg signed [15:0] HiR_7_out1_1;  // sfix16_En15
  reg signed [15:0] Rate_Transition1_out1;  // sfix16_En27
  wire signed [31:0] Multiply3_mul_temp;  // sfix32_En42
  wire signed [15:0] Multiply3_out1;  // sfix16_En27
  reg signed [15:0] Multiply3_out1_1;  // sfix16_En27
  wire signed [15:0] HiR_9_out1;  // sfix16_En17
  reg signed [15:0] HiR_9_out1_1;  // sfix16_En17
  reg signed [15:0] Rate_Transition_out1;  // sfix16_En27
  wire signed [31:0] Multiply4_mul_temp;  // sfix32_En44
  wire signed [15:0] Multiply4_out1;  // sfix16_En29
  reg signed [15:0] delayMatch_reg [0:1];  // sfix16 [2]
  wire signed [15:0] delayMatch_reg_next [0:1];  // sfix16_En29 [2]
  wire signed [15:0] Multiply4_out1_1;  // sfix16_En29
  wire signed [15:0] Add3_add_cast;  // sfix16_En27
  wire signed [15:0] Add3_out1;  // sfix16_En27
  reg signed [15:0] Delay5_out1;  // sfix16_En27
  wire signed [15:0] Add2_add_cast;  // sfix16_En27
  wire signed [15:0] Add2_out1;  // sfix16_En27
  reg signed [15:0] Delay2_out1;  // sfix16_En27
  wire signed [15:0] Add1_add_cast;  // sfix16_En27
  wire signed [15:0] Add1_out1;  // sfix16_En27
  reg signed [15:0] Delay3_out1;  // sfix16_En27
  wire signed [15:0] Add_add_cast;  // sfix16_En27
  wire signed [15:0] Add_out1;  // sfix16_En27


  assign HiR_1_out1 = 16'b1100111000011111;


  always @(posedge clk)
    begin : HwModeRegister_process
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


  assign Multiply_cast = {1'b0, HiR_1_out1_1};
  assign Multiply_mul_temp = Multiply_cast * In_HiR_o_1;
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



  assign HiR_3_out1 = 16'sb1011000010010001;


  always @(posedge clk)
    begin : HwModeRegister2_process
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
        Rate_Transition3_out1 <= 16'sb0000000000000000;
      end
      else begin
        if (enb) begin
          Rate_Transition3_out1 <= In_HiR_o_1;
        end
      end
    end


  assign Multiply1_mul_temp = HiR_3_out1_1 * Rate_Transition3_out1;
  assign Multiply1_out1 = Multiply1_mul_temp[30:15];


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



  assign HiR_5_out1 = 16'b1111100000011100;


  always @(posedge clk)
    begin : HwModeRegister4_process
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
        Rate_Transition2_out1 <= 16'sb0000000000000000;
      end
      else begin
        if (enb) begin
          Rate_Transition2_out1 <= Rate_Transition3_out1;
        end
      end
    end


  assign Multiply2_cast = {1'b0, HiR_5_out1_1};
  assign Multiply2_mul_temp = Multiply2_cast * Rate_Transition2_out1;
  assign Multiply2_cast_1 = Multiply2_mul_temp[31:0];
  assign Multiply2_out1 = Multiply2_cast_1[31:16];


  always @(posedge clk)
    begin : PipelineRegister2_process
      if (reset == 1'b1) begin
        Multiply2_out1_1 <= 16'sb0000000000000000;
      end
      else begin
        if (enb) begin
          Multiply2_out1_1 <= Multiply2_out1;
        end
      end
    end



  assign HiR_7_out1 = 16'sb1010001101001010;


  always @(posedge clk)
    begin : HwModeRegister6_process
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
    begin : reduced_3_process
      if (reset == 1'b1) begin
        Rate_Transition1_out1 <= 16'sb0000000000000000;
      end
      else begin
        if (enb) begin
          Rate_Transition1_out1 <= Rate_Transition2_out1;
        end
      end
    end


  assign Multiply3_mul_temp = HiR_7_out1_1 * Rate_Transition1_out1;
  assign Multiply3_out1 = Multiply3_mul_temp[30:15];


  always @(posedge clk)
    begin : PipelineRegister3_process
      if (reset == 1'b1) begin
        Multiply3_out1_1 <= 16'sb0000000000000000;
      end
      else begin
        if (enb) begin
          Multiply3_out1_1 <= Multiply3_out1;
        end
      end
    end



  assign HiR_9_out1 = 16'sb1010111000000111;


  always @(posedge clk)
    begin : HwModeRegister8_process
      if (reset == 1'b1) begin
        HiR_9_out1_1 <= 16'sb0000000000000000;
      end
      else begin
        if (enb) begin
          HiR_9_out1_1 <= HiR_9_out1;
        end
      end
    end



  always @(posedge clk)
    begin : HwModeRegister9_process
      if (reset == 1'b1) begin
        Rate_Transition_out1 <= 16'sb0000000000000000;
      end
      else begin
        if (enb) begin
          Rate_Transition_out1 <= Rate_Transition1_out1;
        end
      end
    end



  assign Multiply4_mul_temp = HiR_9_out1_1 * Rate_Transition_out1;
  assign Multiply4_out1 = Multiply4_mul_temp[30:15];


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

  assign Multiply4_out1_1 = delayMatch_reg[1];
  assign delayMatch_reg_next[0] = Multiply4_out1;
  assign delayMatch_reg_next[1] = delayMatch_reg[0];



  assign Add3_add_cast = {{2{Multiply4_out1_1[15]}}, Multiply4_out1_1[15:2]};
  assign Add3_out1 = Multiply3_out1_1 + Add3_add_cast;


  always @(posedge clk)
    begin : Delay5_process
      if (reset == 1'b1) begin
        Delay5_out1 <= 16'sb0000000000000000;
      end
      else begin
        if (enb) begin
          Delay5_out1 <= Add3_out1;
        end
      end
    end


  assign Add2_add_cast = {{2{Multiply2_out1_1[15]}}, Multiply2_out1_1[15:2]};
  assign Add2_out1 = Add2_add_cast + Delay5_out1;


  always @(posedge clk)
    begin : Delay2_process
      if (reset == 1'b1) begin
        Delay2_out1 <= 16'sb0000000000000000;
      end
      else begin
        if (enb) begin
          Delay2_out1 <= Add2_out1;
        end
      end
    end


  assign Add1_add_cast = {{3{Multiply1_out1_1[15]}}, Multiply1_out1_1[15:3]};
  assign Add1_out1 = Add1_add_cast + Delay2_out1;


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


  assign Add_add_cast = {{6{Multiply_out1_1[15]}}, Multiply_out1_1[15:6]};
  assign Add_out1 = Add_add_cast + Delay3_out1;


  assign Out_HiR_o = Add_out1;

endmodule  // HiR_Odd

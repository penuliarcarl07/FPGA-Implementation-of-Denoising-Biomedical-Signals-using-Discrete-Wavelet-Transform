// -------------------------------------------------------------
// 
// File Name: hdl_prj\hdlsrc\final_heart_sym3_2_Level_hdl_final2\LoD_Odd_block.v
// Created: 2024-04-18 15:27:55
// 
// Generated by MATLAB 9.10 and HDL Coder 3.18
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: LoD_Odd_block
// Source Path: final_heart_sym3_2_Level_hdl_final2/DWT_sym3_2_Level/1st_Level_Decomp1/LoD_Odd
// Hierarchy Level: 2
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module LoD_Odd_block
          (clk,
           reset,
           enb,
           In_LoD_o,
           Out_LoD_o);


  input   clk;
  input   reset;
  input   enb;
  input   signed [15:0] In_LoD_o;  // sfix16_En23
  output  signed [15:0] Out_LoD_o;  // sfix16_En24


  wire signed [15:0] LoD_1_out1;  // sfix16_En18
  reg signed [15:0] LoD_1_out1_1;  // sfix16_En18
  reg signed [15:0] In_LoD_o_1;  // sfix16_En23
  wire signed [31:0] Multiply5_mul_temp;  // sfix32_En41
  wire signed [15:0] Multiply5_out1;  // sfix16_En15
  reg signed [15:0] Multiply5_out1_1;  // sfix16_En15
  wire [15:0] LoD_3_out1;  // ufix16_En17
  reg [15:0] LoD_3_out1_1;  // ufix16_En17
  reg signed [15:0] Rate_Transition_out1;  // sfix16_En23
  wire signed [16:0] Multiply3_cast;  // sfix17_En17
  wire signed [32:0] Multiply3_mul_temp;  // sfix33_En40
  wire signed [31:0] Multiply3_cast_1;  // sfix32_En40
  wire [15:0] Multiply3_out1;  // ufix16_En25
  reg [15:0] Multiply3_out1_1;  // ufix16_En25
  wire [15:0] LoD_5_out1;  // ufix16_En17
  reg [15:0] LoD_5_out1_1;  // ufix16_En17
  reg signed [15:0] Rate_Transition1_out1;  // sfix16_En23
  wire signed [16:0] Multiply4_cast;  // sfix17_En17
  wire signed [32:0] Multiply4_mul_temp;  // sfix33_En40
  wire signed [31:0] Multiply4_cast_1;  // sfix32_En40
  wire [15:0] Multiply4_out1;  // ufix16_En26
  reg [15:0] delayMatch_reg [0:1];  // ufix16 [2]
  wire [15:0] delayMatch_reg_next [0:1];  // ufix16_En26 [2]
  wire [15:0] Multiply4_out1_1;  // ufix16_En26
  wire [15:0] Add3_add_cast;  // ufix16_En25
  wire [15:0] Add3_out1;  // ufix16_En25
  reg [15:0] Delay7_out1;  // ufix16_En25
  wire signed [15:0] Add2_add_cast;  // sfix16_En24
  wire signed [15:0] Add2_add_cast_1;  // sfix16_En24
  wire signed [15:0] Add2_out1;  // sfix16_En24


  assign LoD_1_out1 = 16'sb1010100010000010;


  always @(posedge clk)
    begin : HwModeRegister4_process
      if (reset == 1'b1) begin
        LoD_1_out1_1 <= 16'sb0000000000000000;
      end
      else begin
        if (enb) begin
          LoD_1_out1_1 <= LoD_1_out1;
        end
      end
    end



  always @(posedge clk)
    begin : reduced_process
      if (reset == 1'b1) begin
        In_LoD_o_1 <= 16'sb0000000000000000;
      end
      else begin
        if (enb) begin
          In_LoD_o_1 <= In_LoD_o;
        end
      end
    end


  assign Multiply5_mul_temp = LoD_1_out1_1 * In_LoD_o_1;
  assign Multiply5_out1 = {{10{Multiply5_mul_temp[31]}}, Multiply5_mul_temp[31:26]};


  always @(posedge clk)
    begin : PipelineRegister2_process
      if (reset == 1'b1) begin
        Multiply5_out1_1 <= 16'sb0000000000000000;
      end
      else begin
        if (enb) begin
          Multiply5_out1_1 <= Multiply5_out1;
        end
      end
    end



  assign LoD_3_out1 = 16'b1110101101110101;


  always @(posedge clk)
    begin : HwModeRegister_process
      if (reset == 1'b1) begin
        LoD_3_out1_1 <= 16'b0000000000000000;
      end
      else begin
        if (enb) begin
          LoD_3_out1_1 <= LoD_3_out1;
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
          Rate_Transition_out1 <= In_LoD_o_1;
        end
      end
    end


  assign Multiply3_cast = {1'b0, LoD_3_out1_1};
  assign Multiply3_mul_temp = Multiply3_cast * Rate_Transition_out1;
  assign Multiply3_cast_1 = Multiply3_mul_temp[31:0];
  assign Multiply3_out1 = Multiply3_cast_1[30:15];


  always @(posedge clk)
    begin : PipelineRegister_process
      if (reset == 1'b1) begin
        Multiply3_out1_1 <= 16'b0000000000000000;
      end
      else begin
        if (enb) begin
          Multiply3_out1_1 <= Multiply3_out1;
        end
      end
    end



  assign LoD_5_out1 = 16'b1010101001010100;


  always @(posedge clk)
    begin : HwModeRegister2_process
      if (reset == 1'b1) begin
        LoD_5_out1_1 <= 16'b0000000000000000;
      end
      else begin
        if (enb) begin
          LoD_5_out1_1 <= LoD_5_out1;
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



  assign Multiply4_cast = {1'b0, LoD_5_out1_1};
  assign Multiply4_mul_temp = Multiply4_cast * Rate_Transition1_out1;
  assign Multiply4_cast_1 = Multiply4_mul_temp[31:0];
  assign Multiply4_out1 = Multiply4_cast_1[29:14];


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

  assign Multiply4_out1_1 = delayMatch_reg[1];
  assign delayMatch_reg_next[0] = Multiply4_out1;
  assign delayMatch_reg_next[1] = delayMatch_reg[0];



  assign Add3_add_cast = {1'b0, Multiply4_out1_1[15:1]};
  assign Add3_out1 = Multiply3_out1_1 + Add3_add_cast;


  always @(posedge clk)
    begin : Delay7_process
      if (reset == 1'b1) begin
        Delay7_out1 <= 16'b0000000000000000;
      end
      else begin
        if (enb) begin
          Delay7_out1 <= Add3_out1;
        end
      end
    end


  assign Add2_add_cast = {Multiply5_out1_1[6:0], 9'b000000000};
  assign Add2_add_cast_1 = {1'b0, Delay7_out1[15:1]};
  assign Add2_out1 = Add2_add_cast + Add2_add_cast_1;


  assign Out_LoD_o = Add2_out1;

endmodule  // LoD_Odd_block


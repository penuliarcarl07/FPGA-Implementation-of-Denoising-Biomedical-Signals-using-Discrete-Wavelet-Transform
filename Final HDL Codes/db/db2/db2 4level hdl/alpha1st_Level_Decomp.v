// -------------------------------------------------------------
// 
// File Name: hdl_prj\hdlsrc\db2_4_Level_fixdt\alpha1st_Level_Decomp.v
// Created: 2024-04-17 20:43:33
// 
// Generated by MATLAB 9.10 and HDL Coder 3.18
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: alpha1st_Level_Decomp
// Source Path: db2_4_Level_fixdt/DWT_db2_4level/1st_Level_Decomp
// Hierarchy Level: 1
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module alpha1st_Level_Decomp
          (clk,
           reset,
           enb,
           In_E,
           In_O,
           Out_HiD,
           Out_LoD);


  input   clk;
  input   reset;
  input   enb;
  input   [15:0] In_E;  // ufix16_En23
  input   [15:0] In_O;  // ufix16_En23
  output  signed [15:0] Out_HiD;  // sfix16_En24
  output  signed [15:0] Out_LoD;  // sfix16_En22


  wire [15:0] kconst;  // ufix16_En16
  reg [15:0] kconst_1;  // ufix16_En16
  wire signed [15:0] HiD_Even_out1;  // sfix16_En15
  wire signed [15:0] HiD_Odd_out1;  // sfix16_En23
  wire signed [15:0] Add_add_cast;  // sfix16_En23
  wire signed [15:0] Add_add_temp;  // sfix16_En23
  wire signed [15:0] Add_out1;  // sfix16_En24
  reg signed [15:0] Add_out1_1;  // sfix16_En24
  wire signed [16:0] HiD_cast;  // sfix17_En16
  wire signed [32:0] HiD_mul_temp;  // sfix33_En40
  wire signed [31:0] HiD_cast_1;  // sfix32_En40
  wire signed [15:0] HiD_out1;  // sfix16_En24
  reg signed [15:0] HiD_out1_1;  // sfix16_En24
  wire [15:0] kconst_2;  // ufix16_En16
  reg [15:0] kconst_3;  // ufix16_En16
  wire signed [15:0] LoD_Even_out1;  // sfix16_En23
  wire [15:0] LoD_Odd_out1;  // ufix16_En24
  wire signed [15:0] Add1_add_cast;  // sfix16_En22
  wire signed [15:0] Add1_add_cast_1;  // sfix16_En22
  wire signed [15:0] Add1_out1;  // sfix16_En22
  reg signed [15:0] Add1_out1_1;  // sfix16_En22
  wire signed [16:0] LoD_cast;  // sfix17_En16
  wire signed [32:0] LoD_mul_temp;  // sfix33_En38
  wire signed [31:0] LoD_cast_1;  // sfix32_En38
  wire signed [15:0] LoD_out1;  // sfix16_En22
  reg signed [15:0] LoD_out1_1;  // sfix16_En22


  assign kconst = 16'b1001100100000100;



  always @(posedge clk)
    begin : HwModeRegister_process
      if (reset == 1'b1) begin
        kconst_1 <= 16'b0000000000000000;
      end
      else begin
        if (enb) begin
          kconst_1 <= kconst;
        end
      end
    end



  HiD_Even u_HiD_Even (.clk(clk),
                       .reset(reset),
                       .enb(enb),
                       .In_HiD_e(In_E),  // ufix16_En23
                       .Out_HiD_e(HiD_Even_out1)  // sfix16_En15
                       );
  HiD_Odd u_HiD_Odd (.clk(clk),
                     .reset(reset),
                     .enb(enb),
                     .In_HiD_o(In_O),  // ufix16_En23
                     .Out_HiD_o(HiD_Odd_out1)  // sfix16_En23
                     );
  assign Add_add_cast = {HiD_Even_out1[7:0], 8'b00000000};
  assign Add_add_temp = Add_add_cast + HiD_Odd_out1;
  assign Add_out1 = {Add_add_temp[14:0], 1'b0};


  always @(posedge clk)
    begin : HwModeRegister1_process
      if (reset == 1'b1) begin
        Add_out1_1 <= 16'sb0000000000000000;
      end
      else begin
        if (enb) begin
          Add_out1_1 <= Add_out1;
        end
      end
    end



  assign HiD_cast = {1'b0, kconst_1};
  assign HiD_mul_temp = HiD_cast * Add_out1_1;
  assign HiD_cast_1 = HiD_mul_temp[31:0];
  assign HiD_out1 = HiD_cast_1[31:16];


  always @(posedge clk)
    begin : PipelineRegister_process
      if (reset == 1'b1) begin
        HiD_out1_1 <= 16'sb0000000000000000;
      end
      else begin
        if (enb) begin
          HiD_out1_1 <= HiD_out1;
        end
      end
    end



  assign Out_HiD = HiD_out1_1;

  assign kconst_2 = 16'b1001100100000100;



  always @(posedge clk)
    begin : HwModeRegister2_process
      if (reset == 1'b1) begin
        kconst_3 <= 16'b0000000000000000;
      end
      else begin
        if (enb) begin
          kconst_3 <= kconst_2;
        end
      end
    end



  LoD_Even u_LoD_Even (.clk(clk),
                       .reset(reset),
                       .enb(enb),
                       .In_LoD_e(In_E),  // ufix16_En23
                       .Out_LoD_e(LoD_Even_out1)  // sfix16_En23
                       );
  LoD_Odd u_LoD_Odd (.clk(clk),
                     .reset(reset),
                     .enb(enb),
                     .In_LoD_o(In_O),  // ufix16_En23
                     .Out_LoD_o(LoD_Odd_out1)  // ufix16_En24
                     );
  assign Add1_add_cast = {LoD_Even_out1[15], LoD_Even_out1[15:1]};
  assign Add1_add_cast_1 = {2'b0, LoD_Odd_out1[15:2]};
  assign Add1_out1 = Add1_add_cast + Add1_add_cast_1;


  always @(posedge clk)
    begin : HwModeRegister3_process
      if (reset == 1'b1) begin
        Add1_out1_1 <= 16'sb0000000000000000;
      end
      else begin
        if (enb) begin
          Add1_out1_1 <= Add1_out1;
        end
      end
    end



  assign LoD_cast = {1'b0, kconst_3};
  assign LoD_mul_temp = LoD_cast * Add1_out1_1;
  assign LoD_cast_1 = LoD_mul_temp[31:0];
  assign LoD_out1 = LoD_cast_1[31:16];


  always @(posedge clk)
    begin : PipelineRegister1_process
      if (reset == 1'b1) begin
        LoD_out1_1 <= 16'sb0000000000000000;
      end
      else begin
        if (enb) begin
          LoD_out1_1 <= LoD_out1;
        end
      end
    end



  assign Out_LoD = LoD_out1_1;

endmodule  // alpha1st_Level_Decomp


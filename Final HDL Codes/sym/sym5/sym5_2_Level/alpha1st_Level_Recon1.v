// -------------------------------------------------------------
// 
// File Name: hdl_prj\hdlsrc\sym5_2_Level\alpha1st_Level_Recon1.v
// Created: 2024-04-18 15:07:23
// 
// Generated by MATLAB 9.10 and HDL Coder 3.18
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: alpha1st_Level_Recon1
// Source Path: sym5_2_Level/DWT_sym5_2_Level/1st_Level_Recon1
// Hierarchy Level: 1
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module alpha1st_Level_Recon1
          (clk,
           reset,
           enb,
           In_HiD,
           In_LoD,
           Out);


  input   clk;
  input   reset;
  input   enb;
  input   signed [15:0] In_HiD;  // sfix16_En27
  input   signed [15:0] In_LoD;  // sfix16_En23
  output  signed [15:0] Out;  // sfix16_En23


  wire [15:0] kconst;  // ufix16_En16
  reg [15:0] kconst_1;  // ufix16_En16
  wire signed [15:0] HiR_Even_out1;  // sfix16_En27
  reg signed [15:0] delayMatch_reg [0:2];  // sfix16 [3]
  wire signed [15:0] delayMatch_reg_next [0:2];  // sfix16_En27 [3]
  wire signed [15:0] HiR_Even_out1_1;  // sfix16_En27
  wire signed [15:0] HiR_Odd_out1;  // sfix16_En28
  reg signed [15:0] delayMatch1_reg [0:2];  // sfix16 [3]
  wire signed [15:0] delayMatch1_reg_next [0:2];  // sfix16_En28 [3]
  wire signed [15:0] HiR_Odd_out1_1;  // sfix16_En28
  wire signed [15:0] LoR_Odd_out1;  // sfix16_En24
  wire signed [15:0] Add4_add_cast;  // sfix16_En24
  wire signed [15:0] Add4_out1;  // sfix16_En24
  wire signed [15:0] LoR_Even_out1;  // sfix16_En24
  wire signed [15:0] Add3_add_cast;  // sfix16_En24
  wire signed [15:0] Recon_Even;  // sfix16_En24
  reg signed [15:0] Recon_Odd;  // sfix16_En24
  wire signed [15:0] Recon_Odd_1;  // sfix16_En24
  wire signed [15:0] Add2_add_cast;  // sfix16_En23
  wire signed [15:0] Add2_add_cast_1;  // sfix16_En23
  wire signed [15:0] Add2_out1;  // sfix16_En23
  reg signed [15:0] Add2_out1_1;  // sfix16_En23
  wire signed [16:0] Gain_cast;  // sfix17_En16
  wire signed [32:0] Gain_mul_temp;  // sfix33_En39
  wire signed [31:0] Gain_cast_1;  // sfix32_En39
  wire signed [15:0] Gain_out1;  // sfix16_En23
  reg signed [15:0] Gain_out1_1;  // sfix16_En23


  assign kconst = 16'b1111000101001011;



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



  HiR_Even_block u_HiR_Even (.clk(clk),
                             .reset(reset),
                             .enb(enb),
                             .In_HiD_e(In_HiD),  // sfix16_En27
                             .Out_HiD_e(HiR_Even_out1)  // sfix16_En27
                             );
  always @(posedge clk)
    begin : delayMatch_process
      if (reset == 1'b1) begin
        delayMatch_reg[0] <= 16'sb0000000000000000;
        delayMatch_reg[1] <= 16'sb0000000000000000;
        delayMatch_reg[2] <= 16'sb0000000000000000;
      end
      else begin
        if (enb) begin
          delayMatch_reg[0] <= delayMatch_reg_next[0];
          delayMatch_reg[1] <= delayMatch_reg_next[1];
          delayMatch_reg[2] <= delayMatch_reg_next[2];
        end
      end
    end

  assign HiR_Even_out1_1 = delayMatch_reg[2];
  assign delayMatch_reg_next[0] = HiR_Even_out1;
  assign delayMatch_reg_next[1] = delayMatch_reg[0];
  assign delayMatch_reg_next[2] = delayMatch_reg[1];



  HiR_Odd_block u_HiR_Odd (.clk(clk),
                           .reset(reset),
                           .enb(enb),
                           .In_HiD_e(In_HiD),  // sfix16_En27
                           .Out_HiD_e(HiR_Odd_out1)  // sfix16_En28
                           );
  always @(posedge clk)
    begin : delayMatch1_process
      if (reset == 1'b1) begin
        delayMatch1_reg[0] <= 16'sb0000000000000000;
        delayMatch1_reg[1] <= 16'sb0000000000000000;
        delayMatch1_reg[2] <= 16'sb0000000000000000;
      end
      else begin
        if (enb) begin
          delayMatch1_reg[0] <= delayMatch1_reg_next[0];
          delayMatch1_reg[1] <= delayMatch1_reg_next[1];
          delayMatch1_reg[2] <= delayMatch1_reg_next[2];
        end
      end
    end

  assign HiR_Odd_out1_1 = delayMatch1_reg[2];
  assign delayMatch1_reg_next[0] = HiR_Odd_out1;
  assign delayMatch1_reg_next[1] = delayMatch1_reg[0];
  assign delayMatch1_reg_next[2] = delayMatch1_reg[1];



  LoR_Odd_block u_LoR_Odd (.clk(clk),
                           .reset(reset),
                           .enb(enb),
                           .In_HiD_e(In_LoD),  // sfix16_En23
                           .Out_HiD_e(LoR_Odd_out1)  // sfix16_En24
                           );
  assign Add4_add_cast = {{4{HiR_Odd_out1_1[15]}}, HiR_Odd_out1_1[15:4]};
  assign Add4_out1 = Add4_add_cast + LoR_Odd_out1;


  LoR_Even_block u_LoR_Even (.clk(clk),
                             .reset(reset),
                             .enb(enb),
                             .In_HiD_e(In_LoD),  // sfix16_En23
                             .Out_HiD_e(LoR_Even_out1)  // sfix16_En24
                             );
  assign Add3_add_cast = {{3{HiR_Even_out1_1[15]}}, HiR_Even_out1_1[15:3]};
  assign Recon_Even = Add3_add_cast + LoR_Even_out1;


  always @(posedge clk)
    begin : Delay3_process
      if (reset == 1'b1) begin
        Recon_Odd <= 16'sb0000000000000000;
      end
      else begin
        if (enb) begin
          Recon_Odd <= Add4_out1;
        end
      end
    end


  assign Recon_Odd_1 = Recon_Odd;
  assign Add2_add_cast = {Recon_Even[15], Recon_Even[15:1]};
  assign Add2_add_cast_1 = {Recon_Odd_1[15], Recon_Odd_1[15:1]};
  assign Add2_out1 = Add2_add_cast + Add2_add_cast_1;


  always @(posedge clk)
    begin : HwModeRegister1_process
      if (reset == 1'b1) begin
        Add2_out1_1 <= 16'sb0000000000000000;
      end
      else begin
        if (enb) begin
          Add2_out1_1 <= Add2_out1;
        end
      end
    end



  assign Gain_cast = {1'b0, kconst_1};
  assign Gain_mul_temp = Gain_cast * Add2_out1_1;
  assign Gain_cast_1 = Gain_mul_temp[31:0];
  assign Gain_out1 = Gain_cast_1[31:16];


  always @(posedge clk)
    begin : PipelineRegister_process
      if (reset == 1'b1) begin
        Gain_out1_1 <= 16'sb0000000000000000;
      end
      else begin
        if (enb) begin
          Gain_out1_1 <= Gain_out1;
        end
      end
    end


  assign Out = Gain_out1_1;

endmodule  // alpha1st_Level_Recon1

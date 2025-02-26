// -------------------------------------------------------------
// 
// File Name: hdl_prj\hdlsrc\final_heart_coif1_3_Level_fixed\alpha1st_Level_Recon4.v
// Created: 2024-04-18 12:08:53
// 
// Generated by MATLAB 9.10 and HDL Coder 3.18
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: alpha1st_Level_Recon4
// Source Path: final_heart_coif1_3_Level_fixed/DWT_coif1_3_Level/1st_Level_Recon4
// Hierarchy Level: 1
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module alpha1st_Level_Recon4
          (clk,
           reset,
           enb,
           In_HiD,
           In_LoD,
           Out);


  input   clk;
  input   reset;
  input   enb;
  input   signed [15:0] In_HiD;  // sfix16_En28
  input   signed [15:0] In_LoD;  // sfix16_En23
  output  signed [15:0] Out;  // sfix16_En23


  wire [15:0] kconst;  // ufix16_En16
  reg [15:0] kconst_1;  // ufix16_En16
  wire signed [15:0] HiR_Even1_out1;  // sfix16_En28
  reg signed [15:0] delayMatch_reg [0:59];  // sfix16 [60]
  wire signed [15:0] delayMatch_reg_next [0:59];  // sfix16_En28 [60]
  wire signed [15:0] HiR_Even1_out1_1;  // sfix16_En28
  wire signed [15:0] HiR_Odd1_out1;  // sfix16_En28
  reg signed [15:0] delayMatch1_reg [0:59];  // sfix16 [60]
  wire signed [15:0] delayMatch1_reg_next [0:59];  // sfix16_En28 [60]
  wire signed [15:0] HiR_Odd1_out1_1;  // sfix16_En28
  wire signed [15:0] LoR_Odd1_out1;  // sfix16_En24
  wire signed [15:0] Add1_add_cast;  // sfix16_En24
  wire signed [15:0] Add1_out1;  // sfix16_En24
  wire signed [15:0] LoR_Even1_out1;  // sfix16_En24
  wire signed [15:0] Add_add_cast;  // sfix16_En24
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


  assign kconst = 16'b1101111001000100;



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



  HiR_Even1_block1 u_HiR_Even1 (.clk(clk),
                                .reset(reset),
                                .enb(enb),
                                .In_HiR_e(In_HiD),  // sfix16_En28
                                .Out_HiR_e(HiR_Even1_out1)  // sfix16_En28
                                );
  always @(posedge clk)
    begin : delayMatch_process
      if (reset == 1'b1) begin
        delayMatch_reg[0] <= 16'sb0000000000000000;
        delayMatch_reg[1] <= 16'sb0000000000000000;
        delayMatch_reg[2] <= 16'sb0000000000000000;
        delayMatch_reg[3] <= 16'sb0000000000000000;
        delayMatch_reg[4] <= 16'sb0000000000000000;
        delayMatch_reg[5] <= 16'sb0000000000000000;
        delayMatch_reg[6] <= 16'sb0000000000000000;
        delayMatch_reg[7] <= 16'sb0000000000000000;
        delayMatch_reg[8] <= 16'sb0000000000000000;
        delayMatch_reg[9] <= 16'sb0000000000000000;
        delayMatch_reg[10] <= 16'sb0000000000000000;
        delayMatch_reg[11] <= 16'sb0000000000000000;
        delayMatch_reg[12] <= 16'sb0000000000000000;
        delayMatch_reg[13] <= 16'sb0000000000000000;
        delayMatch_reg[14] <= 16'sb0000000000000000;
        delayMatch_reg[15] <= 16'sb0000000000000000;
        delayMatch_reg[16] <= 16'sb0000000000000000;
        delayMatch_reg[17] <= 16'sb0000000000000000;
        delayMatch_reg[18] <= 16'sb0000000000000000;
        delayMatch_reg[19] <= 16'sb0000000000000000;
        delayMatch_reg[20] <= 16'sb0000000000000000;
        delayMatch_reg[21] <= 16'sb0000000000000000;
        delayMatch_reg[22] <= 16'sb0000000000000000;
        delayMatch_reg[23] <= 16'sb0000000000000000;
        delayMatch_reg[24] <= 16'sb0000000000000000;
        delayMatch_reg[25] <= 16'sb0000000000000000;
        delayMatch_reg[26] <= 16'sb0000000000000000;
        delayMatch_reg[27] <= 16'sb0000000000000000;
        delayMatch_reg[28] <= 16'sb0000000000000000;
        delayMatch_reg[29] <= 16'sb0000000000000000;
        delayMatch_reg[30] <= 16'sb0000000000000000;
        delayMatch_reg[31] <= 16'sb0000000000000000;
        delayMatch_reg[32] <= 16'sb0000000000000000;
        delayMatch_reg[33] <= 16'sb0000000000000000;
        delayMatch_reg[34] <= 16'sb0000000000000000;
        delayMatch_reg[35] <= 16'sb0000000000000000;
        delayMatch_reg[36] <= 16'sb0000000000000000;
        delayMatch_reg[37] <= 16'sb0000000000000000;
        delayMatch_reg[38] <= 16'sb0000000000000000;
        delayMatch_reg[39] <= 16'sb0000000000000000;
        delayMatch_reg[40] <= 16'sb0000000000000000;
        delayMatch_reg[41] <= 16'sb0000000000000000;
        delayMatch_reg[42] <= 16'sb0000000000000000;
        delayMatch_reg[43] <= 16'sb0000000000000000;
        delayMatch_reg[44] <= 16'sb0000000000000000;
        delayMatch_reg[45] <= 16'sb0000000000000000;
        delayMatch_reg[46] <= 16'sb0000000000000000;
        delayMatch_reg[47] <= 16'sb0000000000000000;
        delayMatch_reg[48] <= 16'sb0000000000000000;
        delayMatch_reg[49] <= 16'sb0000000000000000;
        delayMatch_reg[50] <= 16'sb0000000000000000;
        delayMatch_reg[51] <= 16'sb0000000000000000;
        delayMatch_reg[52] <= 16'sb0000000000000000;
        delayMatch_reg[53] <= 16'sb0000000000000000;
        delayMatch_reg[54] <= 16'sb0000000000000000;
        delayMatch_reg[55] <= 16'sb0000000000000000;
        delayMatch_reg[56] <= 16'sb0000000000000000;
        delayMatch_reg[57] <= 16'sb0000000000000000;
        delayMatch_reg[58] <= 16'sb0000000000000000;
        delayMatch_reg[59] <= 16'sb0000000000000000;
      end
      else begin
        if (enb) begin
          delayMatch_reg[0] <= delayMatch_reg_next[0];
          delayMatch_reg[1] <= delayMatch_reg_next[1];
          delayMatch_reg[2] <= delayMatch_reg_next[2];
          delayMatch_reg[3] <= delayMatch_reg_next[3];
          delayMatch_reg[4] <= delayMatch_reg_next[4];
          delayMatch_reg[5] <= delayMatch_reg_next[5];
          delayMatch_reg[6] <= delayMatch_reg_next[6];
          delayMatch_reg[7] <= delayMatch_reg_next[7];
          delayMatch_reg[8] <= delayMatch_reg_next[8];
          delayMatch_reg[9] <= delayMatch_reg_next[9];
          delayMatch_reg[10] <= delayMatch_reg_next[10];
          delayMatch_reg[11] <= delayMatch_reg_next[11];
          delayMatch_reg[12] <= delayMatch_reg_next[12];
          delayMatch_reg[13] <= delayMatch_reg_next[13];
          delayMatch_reg[14] <= delayMatch_reg_next[14];
          delayMatch_reg[15] <= delayMatch_reg_next[15];
          delayMatch_reg[16] <= delayMatch_reg_next[16];
          delayMatch_reg[17] <= delayMatch_reg_next[17];
          delayMatch_reg[18] <= delayMatch_reg_next[18];
          delayMatch_reg[19] <= delayMatch_reg_next[19];
          delayMatch_reg[20] <= delayMatch_reg_next[20];
          delayMatch_reg[21] <= delayMatch_reg_next[21];
          delayMatch_reg[22] <= delayMatch_reg_next[22];
          delayMatch_reg[23] <= delayMatch_reg_next[23];
          delayMatch_reg[24] <= delayMatch_reg_next[24];
          delayMatch_reg[25] <= delayMatch_reg_next[25];
          delayMatch_reg[26] <= delayMatch_reg_next[26];
          delayMatch_reg[27] <= delayMatch_reg_next[27];
          delayMatch_reg[28] <= delayMatch_reg_next[28];
          delayMatch_reg[29] <= delayMatch_reg_next[29];
          delayMatch_reg[30] <= delayMatch_reg_next[30];
          delayMatch_reg[31] <= delayMatch_reg_next[31];
          delayMatch_reg[32] <= delayMatch_reg_next[32];
          delayMatch_reg[33] <= delayMatch_reg_next[33];
          delayMatch_reg[34] <= delayMatch_reg_next[34];
          delayMatch_reg[35] <= delayMatch_reg_next[35];
          delayMatch_reg[36] <= delayMatch_reg_next[36];
          delayMatch_reg[37] <= delayMatch_reg_next[37];
          delayMatch_reg[38] <= delayMatch_reg_next[38];
          delayMatch_reg[39] <= delayMatch_reg_next[39];
          delayMatch_reg[40] <= delayMatch_reg_next[40];
          delayMatch_reg[41] <= delayMatch_reg_next[41];
          delayMatch_reg[42] <= delayMatch_reg_next[42];
          delayMatch_reg[43] <= delayMatch_reg_next[43];
          delayMatch_reg[44] <= delayMatch_reg_next[44];
          delayMatch_reg[45] <= delayMatch_reg_next[45];
          delayMatch_reg[46] <= delayMatch_reg_next[46];
          delayMatch_reg[47] <= delayMatch_reg_next[47];
          delayMatch_reg[48] <= delayMatch_reg_next[48];
          delayMatch_reg[49] <= delayMatch_reg_next[49];
          delayMatch_reg[50] <= delayMatch_reg_next[50];
          delayMatch_reg[51] <= delayMatch_reg_next[51];
          delayMatch_reg[52] <= delayMatch_reg_next[52];
          delayMatch_reg[53] <= delayMatch_reg_next[53];
          delayMatch_reg[54] <= delayMatch_reg_next[54];
          delayMatch_reg[55] <= delayMatch_reg_next[55];
          delayMatch_reg[56] <= delayMatch_reg_next[56];
          delayMatch_reg[57] <= delayMatch_reg_next[57];
          delayMatch_reg[58] <= delayMatch_reg_next[58];
          delayMatch_reg[59] <= delayMatch_reg_next[59];
        end
      end
    end

  assign HiR_Even1_out1_1 = delayMatch_reg[59];
  assign delayMatch_reg_next[0] = HiR_Even1_out1;
  assign delayMatch_reg_next[1] = delayMatch_reg[0];
  assign delayMatch_reg_next[2] = delayMatch_reg[1];
  assign delayMatch_reg_next[3] = delayMatch_reg[2];
  assign delayMatch_reg_next[4] = delayMatch_reg[3];
  assign delayMatch_reg_next[5] = delayMatch_reg[4];
  assign delayMatch_reg_next[6] = delayMatch_reg[5];
  assign delayMatch_reg_next[7] = delayMatch_reg[6];
  assign delayMatch_reg_next[8] = delayMatch_reg[7];
  assign delayMatch_reg_next[9] = delayMatch_reg[8];
  assign delayMatch_reg_next[10] = delayMatch_reg[9];
  assign delayMatch_reg_next[11] = delayMatch_reg[10];
  assign delayMatch_reg_next[12] = delayMatch_reg[11];
  assign delayMatch_reg_next[13] = delayMatch_reg[12];
  assign delayMatch_reg_next[14] = delayMatch_reg[13];
  assign delayMatch_reg_next[15] = delayMatch_reg[14];
  assign delayMatch_reg_next[16] = delayMatch_reg[15];
  assign delayMatch_reg_next[17] = delayMatch_reg[16];
  assign delayMatch_reg_next[18] = delayMatch_reg[17];
  assign delayMatch_reg_next[19] = delayMatch_reg[18];
  assign delayMatch_reg_next[20] = delayMatch_reg[19];
  assign delayMatch_reg_next[21] = delayMatch_reg[20];
  assign delayMatch_reg_next[22] = delayMatch_reg[21];
  assign delayMatch_reg_next[23] = delayMatch_reg[22];
  assign delayMatch_reg_next[24] = delayMatch_reg[23];
  assign delayMatch_reg_next[25] = delayMatch_reg[24];
  assign delayMatch_reg_next[26] = delayMatch_reg[25];
  assign delayMatch_reg_next[27] = delayMatch_reg[26];
  assign delayMatch_reg_next[28] = delayMatch_reg[27];
  assign delayMatch_reg_next[29] = delayMatch_reg[28];
  assign delayMatch_reg_next[30] = delayMatch_reg[29];
  assign delayMatch_reg_next[31] = delayMatch_reg[30];
  assign delayMatch_reg_next[32] = delayMatch_reg[31];
  assign delayMatch_reg_next[33] = delayMatch_reg[32];
  assign delayMatch_reg_next[34] = delayMatch_reg[33];
  assign delayMatch_reg_next[35] = delayMatch_reg[34];
  assign delayMatch_reg_next[36] = delayMatch_reg[35];
  assign delayMatch_reg_next[37] = delayMatch_reg[36];
  assign delayMatch_reg_next[38] = delayMatch_reg[37];
  assign delayMatch_reg_next[39] = delayMatch_reg[38];
  assign delayMatch_reg_next[40] = delayMatch_reg[39];
  assign delayMatch_reg_next[41] = delayMatch_reg[40];
  assign delayMatch_reg_next[42] = delayMatch_reg[41];
  assign delayMatch_reg_next[43] = delayMatch_reg[42];
  assign delayMatch_reg_next[44] = delayMatch_reg[43];
  assign delayMatch_reg_next[45] = delayMatch_reg[44];
  assign delayMatch_reg_next[46] = delayMatch_reg[45];
  assign delayMatch_reg_next[47] = delayMatch_reg[46];
  assign delayMatch_reg_next[48] = delayMatch_reg[47];
  assign delayMatch_reg_next[49] = delayMatch_reg[48];
  assign delayMatch_reg_next[50] = delayMatch_reg[49];
  assign delayMatch_reg_next[51] = delayMatch_reg[50];
  assign delayMatch_reg_next[52] = delayMatch_reg[51];
  assign delayMatch_reg_next[53] = delayMatch_reg[52];
  assign delayMatch_reg_next[54] = delayMatch_reg[53];
  assign delayMatch_reg_next[55] = delayMatch_reg[54];
  assign delayMatch_reg_next[56] = delayMatch_reg[55];
  assign delayMatch_reg_next[57] = delayMatch_reg[56];
  assign delayMatch_reg_next[58] = delayMatch_reg[57];
  assign delayMatch_reg_next[59] = delayMatch_reg[58];



  HiR_Odd1_block1 u_HiR_Odd1 (.clk(clk),
                              .reset(reset),
                              .enb(enb),
                              .In_HiR_o(In_HiD),  // sfix16_En28
                              .Out_HiR_o(HiR_Odd1_out1)  // sfix16_En28
                              );
  always @(posedge clk)
    begin : delayMatch1_process
      if (reset == 1'b1) begin
        delayMatch1_reg[0] <= 16'sb0000000000000000;
        delayMatch1_reg[1] <= 16'sb0000000000000000;
        delayMatch1_reg[2] <= 16'sb0000000000000000;
        delayMatch1_reg[3] <= 16'sb0000000000000000;
        delayMatch1_reg[4] <= 16'sb0000000000000000;
        delayMatch1_reg[5] <= 16'sb0000000000000000;
        delayMatch1_reg[6] <= 16'sb0000000000000000;
        delayMatch1_reg[7] <= 16'sb0000000000000000;
        delayMatch1_reg[8] <= 16'sb0000000000000000;
        delayMatch1_reg[9] <= 16'sb0000000000000000;
        delayMatch1_reg[10] <= 16'sb0000000000000000;
        delayMatch1_reg[11] <= 16'sb0000000000000000;
        delayMatch1_reg[12] <= 16'sb0000000000000000;
        delayMatch1_reg[13] <= 16'sb0000000000000000;
        delayMatch1_reg[14] <= 16'sb0000000000000000;
        delayMatch1_reg[15] <= 16'sb0000000000000000;
        delayMatch1_reg[16] <= 16'sb0000000000000000;
        delayMatch1_reg[17] <= 16'sb0000000000000000;
        delayMatch1_reg[18] <= 16'sb0000000000000000;
        delayMatch1_reg[19] <= 16'sb0000000000000000;
        delayMatch1_reg[20] <= 16'sb0000000000000000;
        delayMatch1_reg[21] <= 16'sb0000000000000000;
        delayMatch1_reg[22] <= 16'sb0000000000000000;
        delayMatch1_reg[23] <= 16'sb0000000000000000;
        delayMatch1_reg[24] <= 16'sb0000000000000000;
        delayMatch1_reg[25] <= 16'sb0000000000000000;
        delayMatch1_reg[26] <= 16'sb0000000000000000;
        delayMatch1_reg[27] <= 16'sb0000000000000000;
        delayMatch1_reg[28] <= 16'sb0000000000000000;
        delayMatch1_reg[29] <= 16'sb0000000000000000;
        delayMatch1_reg[30] <= 16'sb0000000000000000;
        delayMatch1_reg[31] <= 16'sb0000000000000000;
        delayMatch1_reg[32] <= 16'sb0000000000000000;
        delayMatch1_reg[33] <= 16'sb0000000000000000;
        delayMatch1_reg[34] <= 16'sb0000000000000000;
        delayMatch1_reg[35] <= 16'sb0000000000000000;
        delayMatch1_reg[36] <= 16'sb0000000000000000;
        delayMatch1_reg[37] <= 16'sb0000000000000000;
        delayMatch1_reg[38] <= 16'sb0000000000000000;
        delayMatch1_reg[39] <= 16'sb0000000000000000;
        delayMatch1_reg[40] <= 16'sb0000000000000000;
        delayMatch1_reg[41] <= 16'sb0000000000000000;
        delayMatch1_reg[42] <= 16'sb0000000000000000;
        delayMatch1_reg[43] <= 16'sb0000000000000000;
        delayMatch1_reg[44] <= 16'sb0000000000000000;
        delayMatch1_reg[45] <= 16'sb0000000000000000;
        delayMatch1_reg[46] <= 16'sb0000000000000000;
        delayMatch1_reg[47] <= 16'sb0000000000000000;
        delayMatch1_reg[48] <= 16'sb0000000000000000;
        delayMatch1_reg[49] <= 16'sb0000000000000000;
        delayMatch1_reg[50] <= 16'sb0000000000000000;
        delayMatch1_reg[51] <= 16'sb0000000000000000;
        delayMatch1_reg[52] <= 16'sb0000000000000000;
        delayMatch1_reg[53] <= 16'sb0000000000000000;
        delayMatch1_reg[54] <= 16'sb0000000000000000;
        delayMatch1_reg[55] <= 16'sb0000000000000000;
        delayMatch1_reg[56] <= 16'sb0000000000000000;
        delayMatch1_reg[57] <= 16'sb0000000000000000;
        delayMatch1_reg[58] <= 16'sb0000000000000000;
        delayMatch1_reg[59] <= 16'sb0000000000000000;
      end
      else begin
        if (enb) begin
          delayMatch1_reg[0] <= delayMatch1_reg_next[0];
          delayMatch1_reg[1] <= delayMatch1_reg_next[1];
          delayMatch1_reg[2] <= delayMatch1_reg_next[2];
          delayMatch1_reg[3] <= delayMatch1_reg_next[3];
          delayMatch1_reg[4] <= delayMatch1_reg_next[4];
          delayMatch1_reg[5] <= delayMatch1_reg_next[5];
          delayMatch1_reg[6] <= delayMatch1_reg_next[6];
          delayMatch1_reg[7] <= delayMatch1_reg_next[7];
          delayMatch1_reg[8] <= delayMatch1_reg_next[8];
          delayMatch1_reg[9] <= delayMatch1_reg_next[9];
          delayMatch1_reg[10] <= delayMatch1_reg_next[10];
          delayMatch1_reg[11] <= delayMatch1_reg_next[11];
          delayMatch1_reg[12] <= delayMatch1_reg_next[12];
          delayMatch1_reg[13] <= delayMatch1_reg_next[13];
          delayMatch1_reg[14] <= delayMatch1_reg_next[14];
          delayMatch1_reg[15] <= delayMatch1_reg_next[15];
          delayMatch1_reg[16] <= delayMatch1_reg_next[16];
          delayMatch1_reg[17] <= delayMatch1_reg_next[17];
          delayMatch1_reg[18] <= delayMatch1_reg_next[18];
          delayMatch1_reg[19] <= delayMatch1_reg_next[19];
          delayMatch1_reg[20] <= delayMatch1_reg_next[20];
          delayMatch1_reg[21] <= delayMatch1_reg_next[21];
          delayMatch1_reg[22] <= delayMatch1_reg_next[22];
          delayMatch1_reg[23] <= delayMatch1_reg_next[23];
          delayMatch1_reg[24] <= delayMatch1_reg_next[24];
          delayMatch1_reg[25] <= delayMatch1_reg_next[25];
          delayMatch1_reg[26] <= delayMatch1_reg_next[26];
          delayMatch1_reg[27] <= delayMatch1_reg_next[27];
          delayMatch1_reg[28] <= delayMatch1_reg_next[28];
          delayMatch1_reg[29] <= delayMatch1_reg_next[29];
          delayMatch1_reg[30] <= delayMatch1_reg_next[30];
          delayMatch1_reg[31] <= delayMatch1_reg_next[31];
          delayMatch1_reg[32] <= delayMatch1_reg_next[32];
          delayMatch1_reg[33] <= delayMatch1_reg_next[33];
          delayMatch1_reg[34] <= delayMatch1_reg_next[34];
          delayMatch1_reg[35] <= delayMatch1_reg_next[35];
          delayMatch1_reg[36] <= delayMatch1_reg_next[36];
          delayMatch1_reg[37] <= delayMatch1_reg_next[37];
          delayMatch1_reg[38] <= delayMatch1_reg_next[38];
          delayMatch1_reg[39] <= delayMatch1_reg_next[39];
          delayMatch1_reg[40] <= delayMatch1_reg_next[40];
          delayMatch1_reg[41] <= delayMatch1_reg_next[41];
          delayMatch1_reg[42] <= delayMatch1_reg_next[42];
          delayMatch1_reg[43] <= delayMatch1_reg_next[43];
          delayMatch1_reg[44] <= delayMatch1_reg_next[44];
          delayMatch1_reg[45] <= delayMatch1_reg_next[45];
          delayMatch1_reg[46] <= delayMatch1_reg_next[46];
          delayMatch1_reg[47] <= delayMatch1_reg_next[47];
          delayMatch1_reg[48] <= delayMatch1_reg_next[48];
          delayMatch1_reg[49] <= delayMatch1_reg_next[49];
          delayMatch1_reg[50] <= delayMatch1_reg_next[50];
          delayMatch1_reg[51] <= delayMatch1_reg_next[51];
          delayMatch1_reg[52] <= delayMatch1_reg_next[52];
          delayMatch1_reg[53] <= delayMatch1_reg_next[53];
          delayMatch1_reg[54] <= delayMatch1_reg_next[54];
          delayMatch1_reg[55] <= delayMatch1_reg_next[55];
          delayMatch1_reg[56] <= delayMatch1_reg_next[56];
          delayMatch1_reg[57] <= delayMatch1_reg_next[57];
          delayMatch1_reg[58] <= delayMatch1_reg_next[58];
          delayMatch1_reg[59] <= delayMatch1_reg_next[59];
        end
      end
    end

  assign HiR_Odd1_out1_1 = delayMatch1_reg[59];
  assign delayMatch1_reg_next[0] = HiR_Odd1_out1;
  assign delayMatch1_reg_next[1] = delayMatch1_reg[0];
  assign delayMatch1_reg_next[2] = delayMatch1_reg[1];
  assign delayMatch1_reg_next[3] = delayMatch1_reg[2];
  assign delayMatch1_reg_next[4] = delayMatch1_reg[3];
  assign delayMatch1_reg_next[5] = delayMatch1_reg[4];
  assign delayMatch1_reg_next[6] = delayMatch1_reg[5];
  assign delayMatch1_reg_next[7] = delayMatch1_reg[6];
  assign delayMatch1_reg_next[8] = delayMatch1_reg[7];
  assign delayMatch1_reg_next[9] = delayMatch1_reg[8];
  assign delayMatch1_reg_next[10] = delayMatch1_reg[9];
  assign delayMatch1_reg_next[11] = delayMatch1_reg[10];
  assign delayMatch1_reg_next[12] = delayMatch1_reg[11];
  assign delayMatch1_reg_next[13] = delayMatch1_reg[12];
  assign delayMatch1_reg_next[14] = delayMatch1_reg[13];
  assign delayMatch1_reg_next[15] = delayMatch1_reg[14];
  assign delayMatch1_reg_next[16] = delayMatch1_reg[15];
  assign delayMatch1_reg_next[17] = delayMatch1_reg[16];
  assign delayMatch1_reg_next[18] = delayMatch1_reg[17];
  assign delayMatch1_reg_next[19] = delayMatch1_reg[18];
  assign delayMatch1_reg_next[20] = delayMatch1_reg[19];
  assign delayMatch1_reg_next[21] = delayMatch1_reg[20];
  assign delayMatch1_reg_next[22] = delayMatch1_reg[21];
  assign delayMatch1_reg_next[23] = delayMatch1_reg[22];
  assign delayMatch1_reg_next[24] = delayMatch1_reg[23];
  assign delayMatch1_reg_next[25] = delayMatch1_reg[24];
  assign delayMatch1_reg_next[26] = delayMatch1_reg[25];
  assign delayMatch1_reg_next[27] = delayMatch1_reg[26];
  assign delayMatch1_reg_next[28] = delayMatch1_reg[27];
  assign delayMatch1_reg_next[29] = delayMatch1_reg[28];
  assign delayMatch1_reg_next[30] = delayMatch1_reg[29];
  assign delayMatch1_reg_next[31] = delayMatch1_reg[30];
  assign delayMatch1_reg_next[32] = delayMatch1_reg[31];
  assign delayMatch1_reg_next[33] = delayMatch1_reg[32];
  assign delayMatch1_reg_next[34] = delayMatch1_reg[33];
  assign delayMatch1_reg_next[35] = delayMatch1_reg[34];
  assign delayMatch1_reg_next[36] = delayMatch1_reg[35];
  assign delayMatch1_reg_next[37] = delayMatch1_reg[36];
  assign delayMatch1_reg_next[38] = delayMatch1_reg[37];
  assign delayMatch1_reg_next[39] = delayMatch1_reg[38];
  assign delayMatch1_reg_next[40] = delayMatch1_reg[39];
  assign delayMatch1_reg_next[41] = delayMatch1_reg[40];
  assign delayMatch1_reg_next[42] = delayMatch1_reg[41];
  assign delayMatch1_reg_next[43] = delayMatch1_reg[42];
  assign delayMatch1_reg_next[44] = delayMatch1_reg[43];
  assign delayMatch1_reg_next[45] = delayMatch1_reg[44];
  assign delayMatch1_reg_next[46] = delayMatch1_reg[45];
  assign delayMatch1_reg_next[47] = delayMatch1_reg[46];
  assign delayMatch1_reg_next[48] = delayMatch1_reg[47];
  assign delayMatch1_reg_next[49] = delayMatch1_reg[48];
  assign delayMatch1_reg_next[50] = delayMatch1_reg[49];
  assign delayMatch1_reg_next[51] = delayMatch1_reg[50];
  assign delayMatch1_reg_next[52] = delayMatch1_reg[51];
  assign delayMatch1_reg_next[53] = delayMatch1_reg[52];
  assign delayMatch1_reg_next[54] = delayMatch1_reg[53];
  assign delayMatch1_reg_next[55] = delayMatch1_reg[54];
  assign delayMatch1_reg_next[56] = delayMatch1_reg[55];
  assign delayMatch1_reg_next[57] = delayMatch1_reg[56];
  assign delayMatch1_reg_next[58] = delayMatch1_reg[57];
  assign delayMatch1_reg_next[59] = delayMatch1_reg[58];



  LoR_Odd1_block1 u_LoR_Odd1 (.clk(clk),
                              .reset(reset),
                              .enb(enb),
                              .In_LoR_o(In_LoD),  // sfix16_En23
                              .Out_HiR_o(LoR_Odd1_out1)  // sfix16_En24
                              );
  assign Add1_add_cast = {{4{HiR_Odd1_out1_1[15]}}, HiR_Odd1_out1_1[15:4]};
  assign Add1_out1 = Add1_add_cast + LoR_Odd1_out1;


  LoR_Even1_block1 u_LoR_Even1 (.clk(clk),
                                .reset(reset),
                                .enb(enb),
                                .In_LoR_e(In_LoD),  // sfix16_En23
                                .Out_LoR_e(LoR_Even1_out1)  // sfix16_En24
                                );
  assign Add_add_cast = {{4{HiR_Even1_out1_1[15]}}, HiR_Even1_out1_1[15:4]};
  assign Recon_Even = Add_add_cast + LoR_Even1_out1;


  always @(posedge clk)
    begin : Delay3_process
      if (reset == 1'b1) begin
        Recon_Odd <= 16'sb0000000000000000;
      end
      else begin
        if (enb) begin
          Recon_Odd <= Add1_out1;
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

endmodule  // alpha1st_Level_Recon4


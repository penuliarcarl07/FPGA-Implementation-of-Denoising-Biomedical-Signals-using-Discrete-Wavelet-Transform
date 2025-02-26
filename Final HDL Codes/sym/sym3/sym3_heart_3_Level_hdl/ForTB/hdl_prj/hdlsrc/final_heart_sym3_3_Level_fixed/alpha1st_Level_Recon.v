// -------------------------------------------------------------
// 
// File Name: hdl_prj\hdlsrc\final_heart_sym3_3_Level_fixed\alpha1st_Level_Recon.v
// Created: 2024-04-18 15:47:41
// 
// Generated by MATLAB 9.10 and HDL Coder 3.18
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: alpha1st_Level_Recon
// Source Path: final_heart_sym3_3_Level_fixed/DWT_sym3_3_Level/1st_Level_Recon
// Hierarchy Level: 1
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module alpha1st_Level_Recon
          (clk,
           reset,
           enb,
           In_HiD,
           In_LoD,
           Out1);


  input   clk;
  input   reset;
  input   enb;
  input   signed [15:0] In_HiD;  // sfix16_En28
  input   signed [15:0] In_LoD;  // sfix16_En24
  output  signed [15:0] Out1;  // sfix16_En24


  wire [15:0] kconst;  // ufix16_En16
  reg [15:0] kconst_1;  // ufix16_En16
  wire signed [15:0] HiR_Even_out1;  // sfix16_En28
  wire signed [15:0] LoR_Even_out1;  // sfix16_En24
  reg signed [15:0] LoR_Even_out1_1;  // sfix16_En24
  wire signed [15:0] Add3_add_cast;  // sfix16_En24
  wire signed [15:0] Add3_out1;  // sfix16_En24
  wire signed [15:0] HiR_Odd_out1;  // sfix16_En29
  wire signed [15:0] LoR_Odd_out1;  // sfix16_En24
  reg signed [15:0] LoR_Odd_out1_1;  // sfix16_En24
  wire signed [15:0] Add4_add_cast;  // sfix16_En24
  wire signed [15:0] Add4_out1;  // sfix16_En24
  reg signed [15:0] Delay4_out1;  // sfix16_En24
  wire signed [15:0] Add5_add_cast;  // sfix16_En23
  wire signed [15:0] Add5_add_cast_1;  // sfix16_En23
  wire signed [15:0] Add5_out1;  // sfix16_En23
  reg signed [15:0] Add5_out1_1;  // sfix16_En23
  wire signed [16:0] Gain_cast;  // sfix17_En16
  wire signed [32:0] Gain_mul_temp;  // sfix33_En39
  wire signed [31:0] Gain_cast_1;  // sfix32_En39
  wire signed [15:0] Gain_out1;  // sfix16_En24
  reg signed [15:0] Gain_out1_1;  // sfix16_En24


  assign kconst = 16'b1110110101110101;



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



@[tracestart]
  // '<S5>/HiR_Even'
  HiR_Even u_HiR_Even (.clk(clk),
                       .reset(reset),
                       .enb(enb),
                       .In_HiR_e(In_HiD),  // sfix16_En28
                       .Out_HiR_e(HiR_Even_out1)  // sfix16_En28
                       );
@[traceend]
@[tracestart]
  // '<S5>/LoR_Even'
  LoR_Even u_LoR_Even (.clk(clk),
                       .reset(reset),
                       .enb(enb),
                       .In_LoR_e(In_LoD),  // sfix16_En24
                       .Out_LoR_e(LoR_Even_out1)  // sfix16_En24
                       );
@[traceend]
  always @(posedge clk)
    begin : delayMatch_process
      if (reset == 1'b1) begin
        LoR_Even_out1_1 <= 16'sb0000000000000000;
      end
      else begin
        if (enb) begin
          LoR_Even_out1_1 <= LoR_Even_out1;
        end
      end
    end



@[tracestart]
  // '<S5>/Add3'
  assign Add3_add_cast = {{4{HiR_Even_out1[15]}}, HiR_Even_out1[15:4]};
  assign Add3_out1 = Add3_add_cast + LoR_Even_out1_1;


@[traceend]
@[tracestart]
  // '<S5>/HiR_Odd'
  HiR_Odd u_HiR_Odd (.clk(clk),
                     .reset(reset),
                     .enb(enb),
                     .In_HiR_o(In_HiD),  // sfix16_En28
                     .Out_HiR_o(HiR_Odd_out1)  // sfix16_En29
                     );
@[traceend]
@[tracestart]
  // '<S5>/LoR_Odd'
  LoR_Odd u_LoR_Odd (.clk(clk),
                     .reset(reset),
                     .enb(enb),
                     .In_LoR_o(In_LoD),  // sfix16_En24
                     .Out_LoR_o(LoR_Odd_out1)  // sfix16_En24
                     );
@[traceend]
  always @(posedge clk)
    begin : delayMatch1_process
      if (reset == 1'b1) begin
        LoR_Odd_out1_1 <= 16'sb0000000000000000;
      end
      else begin
        if (enb) begin
          LoR_Odd_out1_1 <= LoR_Odd_out1;
        end
      end
    end



@[tracestart]
  // '<S5>/Add4'
  // 
  // '<S5>/RT'
  assign Add4_add_cast = {{5{HiR_Odd_out1[15]}}, HiR_Odd_out1[15:5]};
  assign Add4_out1 = Add4_add_cast + LoR_Odd_out1_1;


@[traceend]
@[tracestart]
  // '<S5>/Delay4'
  // 
  // '<S5>/RT1'
  always @(posedge clk)
    begin : Delay4_process
      if (reset == 1'b1) begin
        Delay4_out1 <= 16'sb0000000000000000;
      end
      else begin
        if (enb) begin
          Delay4_out1 <= Add4_out1;
        end
      end
    end


@[traceend]
@[tracestart]
  // '<S5>/Add5'
  assign Add5_add_cast = {Add3_out1[15], Add3_out1[15:1]};
  assign Add5_add_cast_1 = {Delay4_out1[15], Delay4_out1[15:1]};
  assign Add5_out1 = Add5_add_cast + Add5_add_cast_1;


@[traceend]
  always @(posedge clk)
    begin : HwModeRegister1_process
      if (reset == 1'b1) begin
        Add5_out1_1 <= 16'sb0000000000000000;
      end
      else begin
        if (enb) begin
          Add5_out1_1 <= Add5_out1;
        end
      end
    end



@[tracestart]
  // '<S5>/Gain'
  // 
  // '<S5>/Delay3'
  assign Gain_cast = {1'b0, kconst_1};
  assign Gain_mul_temp = Gain_cast * Add5_out1_1;
  assign Gain_cast_1 = Gain_mul_temp[31:0];
  assign Gain_out1 = Gain_cast_1[30:15];


@[traceend]
@[tracestart]
  // '<S5>/RT2'
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


@[traceend]
  assign Out1 = Gain_out1_1;

endmodule  // alpha1st_Level_Recon


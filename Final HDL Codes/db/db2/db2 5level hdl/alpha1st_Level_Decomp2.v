// -------------------------------------------------------------
// 
// File Name: hdl_prj\hdlsrc\db2_level5_final_hdlsss\alpha1st_Level_Decomp2.v
// Created: 2024-04-18 06:57:10
// 
// Generated by MATLAB 9.10 and HDL Coder 3.18
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: alpha1st_Level_Decomp2
// Source Path: db2_level5_final_hdlsss/DWT_db2_5_level/1st_Level_Decomp2
// Hierarchy Level: 1
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module alpha1st_Level_Decomp2
          (clk,
           reset,
           enb,
           enb_1_30_1,
           enb_1_30_0,
           enb_1_30_4,
           Input_Sound,
           Out_HiD,
           Out_LoD);


  input   clk;
  input   reset;
  input   enb;
  input   enb_1_30_1;
  input   enb_1_30_0;
  input   enb_1_30_4;
  input   signed [15:0] Input_Sound;  // sfix16_En22
  output  signed [15:0] Out_HiD;  // sfix16_En27
  output  [15:0] Out_LoD;  // ufix16_En24


  wire [15:0] kconst;  // ufix16_En16
  reg [15:0] kconst_1;  // ufix16_En16
  reg signed [15:0] Input_Sound_1;  // sfix16_En22
  reg signed [15:0] reduced_reg [0:25];  // sfix16 [26]
  wire signed [15:0] reduced_reg_next [0:25];  // sfix16_En22 [26]
  wire signed [15:0] Input_Sound_2;  // sfix16_En22
  reg signed [15:0] Downsample_out1;  // sfix16_En22
  reg signed [15:0] Downsample_out1_1;  // sfix16_En22
  reg signed [15:0] Rate_Transition_out1;  // sfix16_En22
  wire signed [15:0] HiD_Even_out1;  // sfix16_En15
  reg signed [15:0] Downsample1_ds_out;  // sfix16_En22
  reg signed [15:0] Downsample1_out1;  // sfix16_En22
  reg signed [15:0] Downsample1_out1_1;  // sfix16_En22
  reg signed [15:0] Rate_Transition1_out1;  // sfix16_En22
  wire [15:0] HiD_Odd_out1;  // ufix16_En24
  wire signed [15:0] Add_add_cast;  // sfix16_En23
  wire signed [15:0] Add_add_cast_1;  // sfix16_En23
  wire signed [15:0] Add_add_temp;  // sfix16_En23
  wire signed [15:0] Add_out1;  // sfix16_En26
  reg signed [15:0] Add_out1_1;  // sfix16_En26
  wire signed [16:0] Gain_cast;  // sfix17_En16
  wire signed [32:0] Gain_mul_temp;  // sfix33_En42
  wire signed [31:0] Gain_cast_1;  // sfix32_En42
  wire signed [15:0] Gain_out1;  // sfix16_En27
  reg signed [15:0] Gain_out1_1;  // sfix16_En27
  wire [15:0] kconst_2;  // ufix16_En16
  reg [15:0] kconst_3;  // ufix16_En16
  wire signed [15:0] LoD_Even_out1;  // sfix16_En23
  wire [15:0] LoD_Odd_out1;  // ufix16_En24
  wire signed [15:0] Add1_add_cast;  // sfix16_En22
  wire signed [15:0] Add1_add_cast_1;  // sfix16_En22
  wire signed [15:0] Add1_add_temp;  // sfix16_En22
  wire [15:0] Add1_out1;  // ufix16_En23
  reg [15:0] Add1_out1_1;  // ufix16_En23
  wire [31:0] Gain1_mul_temp;  // ufix32_En39
  wire [15:0] Gain1_out1;  // ufix16_En24
  reg [15:0] Gain1_out1_1;  // ufix16_En24


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



  always @(posedge clk)
    begin : reduced_process
      if (reset == 1'b1) begin
        Input_Sound_1 <= 16'sb0000000000000000;
      end
      else begin
        if (enb) begin
          Input_Sound_1 <= Input_Sound;
        end
      end
    end


  always @(posedge clk)
    begin : reduced_1_process
      if (reset == 1'b1) begin
        reduced_reg[0] <= 16'sb0000000000000000;
        reduced_reg[1] <= 16'sb0000000000000000;
        reduced_reg[2] <= 16'sb0000000000000000;
        reduced_reg[3] <= 16'sb0000000000000000;
        reduced_reg[4] <= 16'sb0000000000000000;
        reduced_reg[5] <= 16'sb0000000000000000;
        reduced_reg[6] <= 16'sb0000000000000000;
        reduced_reg[7] <= 16'sb0000000000000000;
        reduced_reg[8] <= 16'sb0000000000000000;
        reduced_reg[9] <= 16'sb0000000000000000;
        reduced_reg[10] <= 16'sb0000000000000000;
        reduced_reg[11] <= 16'sb0000000000000000;
        reduced_reg[12] <= 16'sb0000000000000000;
        reduced_reg[13] <= 16'sb0000000000000000;
        reduced_reg[14] <= 16'sb0000000000000000;
        reduced_reg[15] <= 16'sb0000000000000000;
        reduced_reg[16] <= 16'sb0000000000000000;
        reduced_reg[17] <= 16'sb0000000000000000;
        reduced_reg[18] <= 16'sb0000000000000000;
        reduced_reg[19] <= 16'sb0000000000000000;
        reduced_reg[20] <= 16'sb0000000000000000;
        reduced_reg[21] <= 16'sb0000000000000000;
        reduced_reg[22] <= 16'sb0000000000000000;
        reduced_reg[23] <= 16'sb0000000000000000;
        reduced_reg[24] <= 16'sb0000000000000000;
        reduced_reg[25] <= 16'sb0000000000000000;
      end
      else begin
        if (enb) begin
          reduced_reg[0] <= reduced_reg_next[0];
          reduced_reg[1] <= reduced_reg_next[1];
          reduced_reg[2] <= reduced_reg_next[2];
          reduced_reg[3] <= reduced_reg_next[3];
          reduced_reg[4] <= reduced_reg_next[4];
          reduced_reg[5] <= reduced_reg_next[5];
          reduced_reg[6] <= reduced_reg_next[6];
          reduced_reg[7] <= reduced_reg_next[7];
          reduced_reg[8] <= reduced_reg_next[8];
          reduced_reg[9] <= reduced_reg_next[9];
          reduced_reg[10] <= reduced_reg_next[10];
          reduced_reg[11] <= reduced_reg_next[11];
          reduced_reg[12] <= reduced_reg_next[12];
          reduced_reg[13] <= reduced_reg_next[13];
          reduced_reg[14] <= reduced_reg_next[14];
          reduced_reg[15] <= reduced_reg_next[15];
          reduced_reg[16] <= reduced_reg_next[16];
          reduced_reg[17] <= reduced_reg_next[17];
          reduced_reg[18] <= reduced_reg_next[18];
          reduced_reg[19] <= reduced_reg_next[19];
          reduced_reg[20] <= reduced_reg_next[20];
          reduced_reg[21] <= reduced_reg_next[21];
          reduced_reg[22] <= reduced_reg_next[22];
          reduced_reg[23] <= reduced_reg_next[23];
          reduced_reg[24] <= reduced_reg_next[24];
          reduced_reg[25] <= reduced_reg_next[25];
        end
      end
    end

  assign Input_Sound_2 = reduced_reg[25];
  assign reduced_reg_next[0] = Input_Sound_1;
  assign reduced_reg_next[1] = reduced_reg[0];
  assign reduced_reg_next[2] = reduced_reg[1];
  assign reduced_reg_next[3] = reduced_reg[2];
  assign reduced_reg_next[4] = reduced_reg[3];
  assign reduced_reg_next[5] = reduced_reg[4];
  assign reduced_reg_next[6] = reduced_reg[5];
  assign reduced_reg_next[7] = reduced_reg[6];
  assign reduced_reg_next[8] = reduced_reg[7];
  assign reduced_reg_next[9] = reduced_reg[8];
  assign reduced_reg_next[10] = reduced_reg[9];
  assign reduced_reg_next[11] = reduced_reg[10];
  assign reduced_reg_next[12] = reduced_reg[11];
  assign reduced_reg_next[13] = reduced_reg[12];
  assign reduced_reg_next[14] = reduced_reg[13];
  assign reduced_reg_next[15] = reduced_reg[14];
  assign reduced_reg_next[16] = reduced_reg[15];
  assign reduced_reg_next[17] = reduced_reg[16];
  assign reduced_reg_next[18] = reduced_reg[17];
  assign reduced_reg_next[19] = reduced_reg[18];
  assign reduced_reg_next[20] = reduced_reg[19];
  assign reduced_reg_next[21] = reduced_reg[20];
  assign reduced_reg_next[22] = reduced_reg[21];
  assign reduced_reg_next[23] = reduced_reg[22];
  assign reduced_reg_next[24] = reduced_reg[23];
  assign reduced_reg_next[25] = reduced_reg[24];



  // Downsample by 30 register (Sample offset 0)
  always @(posedge clk)
    begin : Downsample_output_process
      if (reset == 1'b1) begin
        Downsample_out1 <= 16'sb0000000000000000;
      end
      else begin
        if (enb_1_30_1) begin
          Downsample_out1 <= Input_Sound_2;
        end
      end
    end


  always @(posedge clk)
    begin : PipelineRegister_process
      if (reset == 1'b1) begin
        Downsample_out1_1 <= 16'sb0000000000000000;
      end
      else begin
        if (enb_1_30_0) begin
          Downsample_out1_1 <= Downsample_out1;
        end
      end
    end



  always @(posedge clk)
    begin : Rate_Transition_process
      if (reset == 1'b1) begin
        Rate_Transition_out1 <= 16'sb0000000000000000;
      end
      else begin
        if (enb_1_30_0) begin
          Rate_Transition_out1 <= Downsample_out1_1;
        end
      end
    end


  HiD_Even_block u_HiD_Even (.clk(clk),
                             .reset(reset),
                             .enb(enb),
                             .In_HiD_e(Rate_Transition_out1),  // sfix16_En22
                             .Out_HiD_e(HiD_Even_out1)  // sfix16_En15
                             );
  // Downsample register
  always @(posedge clk)
    begin : Downsample1_ds_process
      if (reset == 1'b1) begin
        Downsample1_ds_out <= 16'sb0000000000000000;
      end
      else begin
        if (enb_1_30_4) begin
          Downsample1_ds_out <= Input_Sound_1;
        end
      end
    end



  // Downsample output register
  always @(posedge clk)
    begin : Downsample1_output_process
      if (reset == 1'b1) begin
        Downsample1_out1 <= 16'sb0000000000000000;
      end
      else begin
        if (enb_1_30_0) begin
          Downsample1_out1 <= Downsample1_ds_out;
        end
      end
    end



  always @(posedge clk)
    begin : PipelineRegister3_process
      if (reset == 1'b1) begin
        Downsample1_out1_1 <= 16'sb0000000000000000;
      end
      else begin
        if (enb_1_30_0) begin
          Downsample1_out1_1 <= Downsample1_out1;
        end
      end
    end



  always @(posedge clk)
    begin : Rate_Transition1_process
      if (reset == 1'b1) begin
        Rate_Transition1_out1 <= 16'sb0000000000000000;
      end
      else begin
        if (enb_1_30_0) begin
          Rate_Transition1_out1 <= Downsample1_out1_1;
        end
      end
    end


  HiD_Odd_block u_HiD_Odd (.clk(clk),
                           .reset(reset),
                           .enb(enb),
                           .In_HiD_o(Rate_Transition1_out1),  // sfix16_En22
                           .Out_HiD_o(HiD_Odd_out1)  // ufix16_En24
                           );
  assign Add_add_cast = {HiD_Even_out1[7:0], 8'b00000000};
  assign Add_add_cast_1 = {1'b0, HiD_Odd_out1[15:1]};
  assign Add_add_temp = Add_add_cast + Add_add_cast_1;
  assign Add_out1 = {Add_add_temp[12:0], 3'b000};


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



  assign Gain_cast = {1'b0, kconst_1};
  assign Gain_mul_temp = Gain_cast * Add_out1_1;
  assign Gain_cast_1 = Gain_mul_temp[31:0];
  assign Gain_out1 = Gain_cast_1[30:15];


  always @(posedge clk)
    begin : PipelineRegister1_process
      if (reset == 1'b1) begin
        Gain_out1_1 <= 16'sb0000000000000000;
      end
      else begin
        if (enb) begin
          Gain_out1_1 <= Gain_out1;
        end
      end
    end



  assign Out_HiD = Gain_out1_1;

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



  LoD_Even_block u_LoD_Even (.clk(clk),
                             .reset(reset),
                             .enb(enb),
                             .In_LoD_e(Rate_Transition_out1),  // sfix16_En22
                             .Out_LoD_e(LoD_Even_out1)  // sfix16_En23
                             );
  LoD_Odd_block u_LoD_Odd (.clk(clk),
                           .reset(reset),
                           .enb(enb),
                           .In_LoD_o(Rate_Transition1_out1),  // sfix16_En22
                           .Out_LoD_o(LoD_Odd_out1)  // ufix16_En24
                           );
  assign Add1_add_cast = {LoD_Even_out1[15], LoD_Even_out1[15:1]};
  assign Add1_add_cast_1 = {2'b0, LoD_Odd_out1[15:2]};
  assign Add1_add_temp = Add1_add_cast + Add1_add_cast_1;
  assign Add1_out1 = {Add1_add_temp[14:0], 1'b0};


  always @(posedge clk)
    begin : HwModeRegister3_process
      if (reset == 1'b1) begin
        Add1_out1_1 <= 16'b0000000000000000;
      end
      else begin
        if (enb) begin
          Add1_out1_1 <= Add1_out1;
        end
      end
    end



  assign Gain1_mul_temp = kconst_3 * Add1_out1_1;
  assign Gain1_out1 = Gain1_mul_temp[30:15];


  always @(posedge clk)
    begin : PipelineRegister2_process
      if (reset == 1'b1) begin
        Gain1_out1_1 <= 16'b0000000000000000;
      end
      else begin
        if (enb) begin
          Gain1_out1_1 <= Gain1_out1;
        end
      end
    end



  assign Out_LoD = Gain1_out1_1;

endmodule  // alpha1st_Level_Decomp2

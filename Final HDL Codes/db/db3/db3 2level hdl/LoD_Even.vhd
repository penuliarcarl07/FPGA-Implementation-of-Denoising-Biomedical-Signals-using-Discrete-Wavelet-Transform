-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj\hdlsrc\db3_2_Level_fixdt\LoD_Even.vhd
-- Created: 2024-04-17 21:48:34
-- 
-- Generated by MATLAB 9.10 and HDL Coder 3.18
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: LoD_Even
-- Source Path: db3_2_Level_fixdt/DWT_db3_2_Level/1st_Level_Decomp/LoD_Even
-- Hierarchy Level: 2
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;
USE work.DWT_db3_2_Level_pkg.ALL;

ENTITY LoD_Even IS
  PORT( clk                               :   IN    std_logic;
        reset                             :   IN    std_logic;
        enb                               :   IN    std_logic;
        In_LoD_e                          :   IN    std_logic_vector(15 DOWNTO 0);  -- ufix16_En23
        Out_LoD_e                         :   OUT   std_logic_vector(15 DOWNTO 0)  -- sfix16_En23
        );
END LoD_Even;


ARCHITECTURE rtl OF LoD_Even IS

  -- Signals
  SIGNAL LoD_0_out1                       : unsigned(15 DOWNTO 0);  -- ufix16_En20
  SIGNAL LoD_0_out1_1                     : unsigned(15 DOWNTO 0);  -- ufix16_En20
  SIGNAL In_LoD_e_unsigned                : unsigned(15 DOWNTO 0);  -- ufix16_En23
  SIGNAL In_LoD_e_1                       : unsigned(15 DOWNTO 0);  -- ufix16_En23
  SIGNAL Multiply_mul_temp                : unsigned(31 DOWNTO 0);  -- ufix32_En43
  SIGNAL Multiply_out1                    : unsigned(15 DOWNTO 0);  -- ufix16_En28
  SIGNAL Multiply_out1_1                  : unsigned(15 DOWNTO 0);  -- ufix16_En28
  SIGNAL LoD_2_out1                       : signed(15 DOWNTO 0);  -- sfix16_En17
  SIGNAL LoD_2_out1_1                     : signed(15 DOWNTO 0);  -- sfix16_En17
  SIGNAL Rate_Transition2_out1            : unsigned(15 DOWNTO 0);  -- ufix16_En23
  SIGNAL Multiply1_cast                   : signed(16 DOWNTO 0);  -- sfix17_En23
  SIGNAL Multiply1_mul_temp               : signed(32 DOWNTO 0);  -- sfix33_En40
  SIGNAL Multiply1_cast_1                 : signed(31 DOWNTO 0);  -- sfix32_En40
  SIGNAL Multiply1_out1                   : signed(15 DOWNTO 0);  -- sfix16_En15
  SIGNAL Multiply1_out1_1                 : signed(15 DOWNTO 0);  -- sfix16_En15
  SIGNAL LoD_4_out1                       : unsigned(15 DOWNTO 0);  -- ufix16_En16
  SIGNAL LoD_4_out1_1                     : unsigned(15 DOWNTO 0);  -- ufix16_En16
  SIGNAL Rate_Transition1_out1            : unsigned(15 DOWNTO 0);  -- ufix16_En23
  SIGNAL Multiply2_mul_temp               : unsigned(31 DOWNTO 0);  -- ufix32_En39
  SIGNAL Multiply2_out1                   : unsigned(15 DOWNTO 0);  -- ufix16_En24
  SIGNAL delayMatch_reg                   : vector_of_unsigned16(0 TO 1);  -- ufix16 [2]
  SIGNAL Multiply2_out1_1                 : unsigned(15 DOWNTO 0);  -- ufix16_En24
  SIGNAL Add1_add_cast                    : signed(15 DOWNTO 0);  -- sfix16_En23
  SIGNAL Add1_add_cast_1                  : signed(15 DOWNTO 0);  -- sfix16_En23
  SIGNAL Add1_out1                        : signed(15 DOWNTO 0);  -- sfix16_En23
  SIGNAL Delay3_out1                      : signed(15 DOWNTO 0);  -- sfix16_En23
  SIGNAL Add_add_cast                     : signed(15 DOWNTO 0);  -- sfix16_En23
  SIGNAL Add_out1                         : signed(15 DOWNTO 0);  -- sfix16_En23

  ATTRIBUTE multstyle : string;

BEGIN
  LoD_0_out1 <= to_unsigned(16#9049#, 16);

  HwModeRegister_process : PROCESS (clk)
  BEGIN
    IF clk'EVENT AND clk = '1' THEN
      IF reset = '1' THEN
        LoD_0_out1_1 <= to_unsigned(16#0000#, 16);
      ELSIF enb = '1' THEN
        LoD_0_out1_1 <= LoD_0_out1;
      END IF;
    END IF;
  END PROCESS HwModeRegister_process;


  In_LoD_e_unsigned <= unsigned(In_LoD_e);

  reduced_process : PROCESS (clk)
  BEGIN
    IF clk'EVENT AND clk = '1' THEN
      IF reset = '1' THEN
        In_LoD_e_1 <= to_unsigned(16#0000#, 16);
      ELSIF enb = '1' THEN
        In_LoD_e_1 <= In_LoD_e_unsigned;
      END IF;
    END IF;
  END PROCESS reduced_process;


  Multiply_mul_temp <= LoD_0_out1_1 * In_LoD_e_1;
  Multiply_out1 <= Multiply_mul_temp(30 DOWNTO 15);

  PipelineRegister_process : PROCESS (clk)
  BEGIN
    IF clk'EVENT AND clk = '1' THEN
      IF reset = '1' THEN
        Multiply_out1_1 <= to_unsigned(16#0000#, 16);
      ELSIF enb = '1' THEN
        Multiply_out1_1 <= Multiply_out1;
      END IF;
    END IF;
  END PROCESS PipelineRegister_process;


  LoD_2_out1 <= to_signed(-16#4520#, 16);

  HwModeRegister2_process : PROCESS (clk)
  BEGIN
    IF clk'EVENT AND clk = '1' THEN
      IF reset = '1' THEN
        LoD_2_out1_1 <= to_signed(16#0000#, 16);
      ELSIF enb = '1' THEN
        LoD_2_out1_1 <= LoD_2_out1;
      END IF;
    END IF;
  END PROCESS HwModeRegister2_process;


  reduced_1_process : PROCESS (clk)
  BEGIN
    IF clk'EVENT AND clk = '1' THEN
      IF reset = '1' THEN
        Rate_Transition2_out1 <= to_unsigned(16#0000#, 16);
      ELSIF enb = '1' THEN
        Rate_Transition2_out1 <= In_LoD_e_1;
      END IF;
    END IF;
  END PROCESS reduced_1_process;


  Multiply1_cast <= signed(resize(Rate_Transition2_out1, 17));
  Multiply1_mul_temp <= LoD_2_out1_1 * Multiply1_cast;
  Multiply1_cast_1 <= Multiply1_mul_temp(31 DOWNTO 0);
  Multiply1_out1 <= resize(Multiply1_cast_1(31 DOWNTO 25), 16);

  PipelineRegister1_process : PROCESS (clk)
  BEGIN
    IF clk'EVENT AND clk = '1' THEN
      IF reset = '1' THEN
        Multiply1_out1_1 <= to_signed(16#0000#, 16);
      ELSIF enb = '1' THEN
        Multiply1_out1_1 <= Multiply1_out1;
      END IF;
    END IF;
  END PROCESS PipelineRegister1_process;


  LoD_4_out1 <= to_unsigned(16#CE90#, 16);

  HwModeRegister4_process : PROCESS (clk)
  BEGIN
    IF clk'EVENT AND clk = '1' THEN
      IF reset = '1' THEN
        LoD_4_out1_1 <= to_unsigned(16#0000#, 16);
      ELSIF enb = '1' THEN
        LoD_4_out1_1 <= LoD_4_out1;
      END IF;
    END IF;
  END PROCESS HwModeRegister4_process;


  HwModeRegister5_process : PROCESS (clk)
  BEGIN
    IF clk'EVENT AND clk = '1' THEN
      IF reset = '1' THEN
        Rate_Transition1_out1 <= to_unsigned(16#0000#, 16);
      ELSIF enb = '1' THEN
        Rate_Transition1_out1 <= Rate_Transition2_out1;
      END IF;
    END IF;
  END PROCESS HwModeRegister5_process;


  Multiply2_mul_temp <= LoD_4_out1_1 * Rate_Transition1_out1;
  Multiply2_out1 <= Multiply2_mul_temp(30 DOWNTO 15);

  delayMatch_process : PROCESS (clk)
  BEGIN
    IF clk'EVENT AND clk = '1' THEN
      IF reset = '1' THEN
        delayMatch_reg <= (OTHERS => to_unsigned(16#0000#, 16));
      ELSIF enb = '1' THEN
        delayMatch_reg(0) <= Multiply2_out1;
        delayMatch_reg(1) <= delayMatch_reg(0);
      END IF;
    END IF;
  END PROCESS delayMatch_process;

  Multiply2_out1_1 <= delayMatch_reg(1);

  Add1_add_cast <= Multiply1_out1_1(7 DOWNTO 0) & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0';
  Add1_add_cast_1 <= signed(resize(Multiply2_out1_1(15 DOWNTO 1), 16));
  Add1_out1 <= Add1_add_cast + Add1_add_cast_1;

  Delay3_process : PROCESS (clk)
  BEGIN
    IF clk'EVENT AND clk = '1' THEN
      IF reset = '1' THEN
        Delay3_out1 <= to_signed(16#0000#, 16);
      ELSIF enb = '1' THEN
        Delay3_out1 <= Add1_out1;
      END IF;
    END IF;
  END PROCESS Delay3_process;


  Add_add_cast <= signed(resize(Multiply_out1_1(15 DOWNTO 5), 16));
  Add_out1 <= Add_add_cast + Delay3_out1;

  Out_LoD_e <= std_logic_vector(Add_out1);

END rtl;


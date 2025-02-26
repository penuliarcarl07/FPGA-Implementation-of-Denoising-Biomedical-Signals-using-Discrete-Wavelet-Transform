-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj\hdlsrc\db3_2_Level_fixdt\HiR_Odd_block.vhd
-- Created: 2024-04-17 21:48:34
-- 
-- Generated by MATLAB 9.10 and HDL Coder 3.18
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: HiR_Odd_block
-- Source Path: db3_2_Level_fixdt/DWT_db3_2_Level/2nd_Level_Recon/HiR_Odd
-- Hierarchy Level: 2
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;
USE work.DWT_db3_2_Level_pkg.ALL;

ENTITY HiR_Odd_block IS
  PORT( clk                               :   IN    std_logic;
        reset                             :   IN    std_logic;
        enb                               :   IN    std_logic;
        In_HiR_o                          :   IN    std_logic_vector(15 DOWNTO 0);  -- sfix16_En26
        Out_HiR_o                         :   OUT   std_logic_vector(15 DOWNTO 0)  -- sfix16_En27
        );
END HiR_Odd_block;


ARCHITECTURE rtl OF HiR_Odd_block IS

  -- Signals
  SIGNAL HiR_1_out1                       : unsigned(15 DOWNTO 0);  -- ufix16_En19
  SIGNAL HiR_1_out1_1                     : unsigned(15 DOWNTO 0);  -- ufix16_En19
  SIGNAL In_HiR_o_signed                  : signed(15 DOWNTO 0);  -- sfix16_En26
  SIGNAL In_HiR_o_1                       : signed(15 DOWNTO 0);  -- sfix16_En26
  SIGNAL Multiply_cast                    : signed(16 DOWNTO 0);  -- sfix17_En19
  SIGNAL Multiply_mul_temp                : signed(32 DOWNTO 0);  -- sfix33_En45
  SIGNAL Multiply_cast_1                  : signed(31 DOWNTO 0);  -- sfix32_En45
  SIGNAL Multiply_out1                    : signed(15 DOWNTO 0);  -- sfix16_En30
  SIGNAL Multiply_out1_1                  : signed(15 DOWNTO 0);  -- sfix16_En30
  SIGNAL HiR_3_out1                       : signed(15 DOWNTO 0);  -- sfix16_En16
  SIGNAL HiR_3_out1_1                     : signed(15 DOWNTO 0);  -- sfix16_En16
  SIGNAL Rate_Transition_out1             : signed(15 DOWNTO 0);  -- sfix16_En26
  SIGNAL Multiply1_mul_temp               : signed(31 DOWNTO 0);  -- sfix32_En42
  SIGNAL Multiply1_out1                   : signed(15 DOWNTO 0);  -- sfix16_En27
  SIGNAL Multiply1_out1_1                 : signed(15 DOWNTO 0);  -- sfix16_En27
  SIGNAL HiR_5_out1                       : signed(15 DOWNTO 0);  -- sfix16_En16
  SIGNAL HiR_5_out1_1                     : signed(15 DOWNTO 0);  -- sfix16_En16
  SIGNAL Rate_Transition1_out1            : signed(15 DOWNTO 0);  -- sfix16_En26
  SIGNAL Multiply2_mul_temp               : signed(31 DOWNTO 0);  -- sfix32_En42
  SIGNAL Multiply2_out1                   : signed(15 DOWNTO 0);  -- sfix16_En28
  SIGNAL delayMatch_reg                   : vector_of_signed16(0 TO 1);  -- sfix16 [2]
  SIGNAL Multiply2_out1_1                 : signed(15 DOWNTO 0);  -- sfix16_En28
  SIGNAL Add1_add_cast                    : signed(15 DOWNTO 0);  -- sfix16_En27
  SIGNAL Add1_out1                        : signed(15 DOWNTO 0);  -- sfix16_En27
  SIGNAL Delay3_out1                      : signed(15 DOWNTO 0);  -- sfix16_En27
  SIGNAL Add_add_cast                     : signed(15 DOWNTO 0);  -- sfix16_En27
  SIGNAL Add_out1                         : signed(15 DOWNTO 0);  -- sfix16_En27

  ATTRIBUTE multstyle : string;

BEGIN
  HiR_1_out1 <= to_unsigned(16#AEFC#, 16);

  HwModeRegister_process : PROCESS (clk)
  BEGIN
    IF clk'EVENT AND clk = '1' THEN
      IF reset = '1' THEN
        HiR_1_out1_1 <= to_unsigned(16#0000#, 16);
      ELSIF enb = '1' THEN
        HiR_1_out1_1 <= HiR_1_out1;
      END IF;
    END IF;
  END PROCESS HwModeRegister_process;


  In_HiR_o_signed <= signed(In_HiR_o);

  reduced_process : PROCESS (clk)
  BEGIN
    IF clk'EVENT AND clk = '1' THEN
      IF reset = '1' THEN
        In_HiR_o_1 <= to_signed(16#0000#, 16);
      ELSIF enb = '1' THEN
        In_HiR_o_1 <= In_HiR_o_signed;
      END IF;
    END IF;
  END PROCESS reduced_process;


  Multiply_cast <= signed(resize(HiR_1_out1_1, 17));
  Multiply_mul_temp <= Multiply_cast * In_HiR_o_1;
  Multiply_cast_1 <= Multiply_mul_temp(31 DOWNTO 0);
  Multiply_out1 <= Multiply_cast_1(30 DOWNTO 15);

  PipelineRegister_process : PROCESS (clk)
  BEGIN
    IF clk'EVENT AND clk = '1' THEN
      IF reset = '1' THEN
        Multiply_out1_1 <= to_signed(16#0000#, 16);
      ELSIF enb = '1' THEN
        Multiply_out1_1 <= Multiply_out1;
      END IF;
    END IF;
  END PROCESS PipelineRegister_process;


  HiR_3_out1 <= to_signed(-16#75BB#, 16);

  HwModeRegister2_process : PROCESS (clk)
  BEGIN
    IF clk'EVENT AND clk = '1' THEN
      IF reset = '1' THEN
        HiR_3_out1_1 <= to_signed(16#0000#, 16);
      ELSIF enb = '1' THEN
        HiR_3_out1_1 <= HiR_3_out1;
      END IF;
    END IF;
  END PROCESS HwModeRegister2_process;


  reduced_1_process : PROCESS (clk)
  BEGIN
    IF clk'EVENT AND clk = '1' THEN
      IF reset = '1' THEN
        Rate_Transition_out1 <= to_signed(16#0000#, 16);
      ELSIF enb = '1' THEN
        Rate_Transition_out1 <= In_HiR_o_1;
      END IF;
    END IF;
  END PROCESS reduced_1_process;


  Multiply1_mul_temp <= HiR_3_out1_1 * Rate_Transition_out1;
  Multiply1_out1 <= Multiply1_mul_temp(30 DOWNTO 15);

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


  HiR_5_out1 <= to_signed(-16#552A#, 16);

  HwModeRegister4_process : PROCESS (clk)
  BEGIN
    IF clk'EVENT AND clk = '1' THEN
      IF reset = '1' THEN
        HiR_5_out1_1 <= to_signed(16#0000#, 16);
      ELSIF enb = '1' THEN
        HiR_5_out1_1 <= HiR_5_out1;
      END IF;
    END IF;
  END PROCESS HwModeRegister4_process;


  HwModeRegister5_process : PROCESS (clk)
  BEGIN
    IF clk'EVENT AND clk = '1' THEN
      IF reset = '1' THEN
        Rate_Transition1_out1 <= to_signed(16#0000#, 16);
      ELSIF enb = '1' THEN
        Rate_Transition1_out1 <= Rate_Transition_out1;
      END IF;
    END IF;
  END PROCESS HwModeRegister5_process;


  Multiply2_mul_temp <= HiR_5_out1_1 * Rate_Transition1_out1;
  Multiply2_out1 <= Multiply2_mul_temp(29 DOWNTO 14);

  delayMatch_process : PROCESS (clk)
  BEGIN
    IF clk'EVENT AND clk = '1' THEN
      IF reset = '1' THEN
        delayMatch_reg <= (OTHERS => to_signed(16#0000#, 16));
      ELSIF enb = '1' THEN
        delayMatch_reg(0) <= Multiply2_out1;
        delayMatch_reg(1) <= delayMatch_reg(0);
      END IF;
    END IF;
  END PROCESS delayMatch_process;

  Multiply2_out1_1 <= delayMatch_reg(1);

  Add1_add_cast <= resize(Multiply2_out1_1(15 DOWNTO 1), 16);
  Add1_out1 <= Multiply1_out1_1 + Add1_add_cast;

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


  Add_add_cast <= resize(Multiply_out1_1(15 DOWNTO 3), 16);
  Add_out1 <= Add_add_cast + Delay3_out1;

  Out_HiR_o <= std_logic_vector(Add_out1);

END rtl;


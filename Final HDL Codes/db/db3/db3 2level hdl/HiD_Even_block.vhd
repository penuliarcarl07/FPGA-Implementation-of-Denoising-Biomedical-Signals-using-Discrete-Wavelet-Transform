-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj\hdlsrc\db3_2_Level_fixdt\HiD_Even_block.vhd
-- Created: 2024-04-17 21:48:34
-- 
-- Generated by MATLAB 9.10 and HDL Coder 3.18
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: HiD_Even_block
-- Source Path: db3_2_Level_fixdt/DWT_db3_2_Level/2nd_Level_Decomp/HiD_Even
-- Hierarchy Level: 2
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;
USE work.DWT_db3_2_Level_pkg.ALL;

ENTITY HiD_Even_block IS
  PORT( clk                               :   IN    std_logic;
        reset                             :   IN    std_logic;
        enb                               :   IN    std_logic;
        In_HiD_e                          :   IN    std_logic_vector(15 DOWNTO 0);  -- sfix16_En23
        Out_HiD_e                         :   OUT   std_logic_vector(15 DOWNTO 0)  -- sfix16_En23
        );
END HiD_Even_block;


ARCHITECTURE rtl OF HiD_Even_block IS

  -- Signals
  SIGNAL HiD_0_out1                       : signed(15 DOWNTO 0);  -- sfix16_En16
  SIGNAL HiD_0_out1_1                     : signed(15 DOWNTO 0);  -- sfix16_En16
  SIGNAL In_HiD_e_signed                  : signed(15 DOWNTO 0);  -- sfix16_En23
  SIGNAL In_HiD_e_1                       : signed(15 DOWNTO 0);  -- sfix16_En23
  SIGNAL Multiply_mul_temp                : signed(31 DOWNTO 0);  -- sfix32_En39
  SIGNAL Multiply_out1                    : signed(15 DOWNTO 0);  -- sfix16_En15
  SIGNAL Multiply_out1_1                  : signed(15 DOWNTO 0);  -- sfix16_En15
  SIGNAL HiD_2_out1                       : signed(15 DOWNTO 0);  -- sfix16_En16
  SIGNAL HiD_2_out1_1                     : signed(15 DOWNTO 0);  -- sfix16_En16
  SIGNAL Rate_Transition_out1             : signed(15 DOWNTO 0);  -- sfix16_En23
  SIGNAL Multiply1_mul_temp               : signed(31 DOWNTO 0);  -- sfix32_En39
  SIGNAL Multiply1_out1                   : signed(15 DOWNTO 0);  -- sfix16_En15
  SIGNAL Multiply1_out1_1                 : signed(15 DOWNTO 0);  -- sfix16_En15
  SIGNAL HiD_4_out1                       : unsigned(15 DOWNTO 0);  -- ufix16_En19
  SIGNAL HiD_4_out1_1                     : unsigned(15 DOWNTO 0);  -- ufix16_En19
  SIGNAL Rate_Transition2_out1            : signed(15 DOWNTO 0);  -- sfix16_En23
  SIGNAL Multiply2_cast                   : signed(16 DOWNTO 0);  -- sfix17_En19
  SIGNAL Multiply2_mul_temp               : signed(32 DOWNTO 0);  -- sfix33_En42
  SIGNAL Multiply2_cast_1                 : signed(31 DOWNTO 0);  -- sfix32_En42
  SIGNAL Multiply2_out1                   : unsigned(15 DOWNTO 0);  -- ufix16_En27
  SIGNAL delayMatch_reg                   : vector_of_unsigned16(0 TO 1);  -- ufix16 [2]
  SIGNAL Multiply2_out1_1                 : unsigned(15 DOWNTO 0);  -- ufix16_En27
  SIGNAL Add1_add_cast                    : signed(15 DOWNTO 0);  -- sfix16_En24
  SIGNAL Add1_add_cast_1                  : signed(15 DOWNTO 0);  -- sfix16_En24
  SIGNAL Add1_out1                        : signed(15 DOWNTO 0);  -- sfix16_En24
  SIGNAL Delay3_out1                      : signed(15 DOWNTO 0);  -- sfix16_En24
  SIGNAL Add_add_cast                     : signed(15 DOWNTO 0);  -- sfix16_En23
  SIGNAL Add_add_cast_1                   : signed(15 DOWNTO 0);  -- sfix16_En23
  SIGNAL Add_out1                         : signed(15 DOWNTO 0);  -- sfix16_En23

  ATTRIBUTE multstyle : string;

BEGIN
  HiD_0_out1 <= to_signed(-16#552A#, 16);

  HwModeRegister_process : PROCESS (clk)
  BEGIN
    IF clk'EVENT AND clk = '1' THEN
      IF reset = '1' THEN
        HiD_0_out1_1 <= to_signed(16#0000#, 16);
      ELSIF enb = '1' THEN
        HiD_0_out1_1 <= HiD_0_out1;
      END IF;
    END IF;
  END PROCESS HwModeRegister_process;


  In_HiD_e_signed <= signed(In_HiD_e);

  reduced_process : PROCESS (clk)
  BEGIN
    IF clk'EVENT AND clk = '1' THEN
      IF reset = '1' THEN
        In_HiD_e_1 <= to_signed(16#0000#, 16);
      ELSIF enb = '1' THEN
        In_HiD_e_1 <= In_HiD_e_signed;
      END IF;
    END IF;
  END PROCESS reduced_process;


  Multiply_mul_temp <= HiD_0_out1_1 * In_HiD_e_1;
  Multiply_out1 <= resize(Multiply_mul_temp(31 DOWNTO 24), 16);

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


  HiD_2_out1 <= to_signed(-16#75BB#, 16);

  HwModeRegister2_process : PROCESS (clk)
  BEGIN
    IF clk'EVENT AND clk = '1' THEN
      IF reset = '1' THEN
        HiD_2_out1_1 <= to_signed(16#0000#, 16);
      ELSIF enb = '1' THEN
        HiD_2_out1_1 <= HiD_2_out1;
      END IF;
    END IF;
  END PROCESS HwModeRegister2_process;


  reduced_1_process : PROCESS (clk)
  BEGIN
    IF clk'EVENT AND clk = '1' THEN
      IF reset = '1' THEN
        Rate_Transition_out1 <= to_signed(16#0000#, 16);
      ELSIF enb = '1' THEN
        Rate_Transition_out1 <= In_HiD_e_1;
      END IF;
    END IF;
  END PROCESS reduced_1_process;


  Multiply1_mul_temp <= HiD_2_out1_1 * Rate_Transition_out1;
  Multiply1_out1 <= resize(Multiply1_mul_temp(31 DOWNTO 24), 16);

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


  HiD_4_out1 <= to_unsigned(16#AEFC#, 16);

  HwModeRegister4_process : PROCESS (clk)
  BEGIN
    IF clk'EVENT AND clk = '1' THEN
      IF reset = '1' THEN
        HiD_4_out1_1 <= to_unsigned(16#0000#, 16);
      ELSIF enb = '1' THEN
        HiD_4_out1_1 <= HiD_4_out1;
      END IF;
    END IF;
  END PROCESS HwModeRegister4_process;


  HwModeRegister5_process : PROCESS (clk)
  BEGIN
    IF clk'EVENT AND clk = '1' THEN
      IF reset = '1' THEN
        Rate_Transition2_out1 <= to_signed(16#0000#, 16);
      ELSIF enb = '1' THEN
        Rate_Transition2_out1 <= Rate_Transition_out1;
      END IF;
    END IF;
  END PROCESS HwModeRegister5_process;


  Multiply2_cast <= signed(resize(HiD_4_out1_1, 17));
  Multiply2_mul_temp <= Multiply2_cast * Rate_Transition2_out1;
  Multiply2_cast_1 <= Multiply2_mul_temp(31 DOWNTO 0);
  Multiply2_out1 <= unsigned(Multiply2_cast_1(30 DOWNTO 15));

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

  Add1_add_cast <= Multiply1_out1_1(6 DOWNTO 0) & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0';
  Add1_add_cast_1 <= signed(resize(Multiply2_out1_1(15 DOWNTO 3), 16));
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


  Add_add_cast <= Multiply_out1_1(7 DOWNTO 0) & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0';
  Add_add_cast_1 <= resize(Delay3_out1(15 DOWNTO 1), 16);
  Add_out1 <= Add_add_cast + Add_add_cast_1;

  Out_HiD_e <= std_logic_vector(Add_out1);

END rtl;


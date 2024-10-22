-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj\hdlsrc\db3_2_Level_fixdt\HiD_Odd_block.vhd
-- Created: 2024-04-17 21:48:34
-- 
-- Generated by MATLAB 9.10 and HDL Coder 3.18
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: HiD_Odd_block
-- Source Path: db3_2_Level_fixdt/DWT_db3_2_Level/2nd_Level_Decomp/HiD_Odd
-- Hierarchy Level: 2
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;
USE work.DWT_db3_2_Level_pkg.ALL;

ENTITY HiD_Odd_block IS
  PORT( clk                               :   IN    std_logic;
        reset                             :   IN    std_logic;
        enb                               :   IN    std_logic;
        In_HiD_o                          :   IN    std_logic_vector(15 DOWNTO 0);  -- sfix16_En23
        Out_HiD_o                         :   OUT   std_logic_vector(15 DOWNTO 0)  -- sfix16_En23
        );
END HiD_Odd_block;


ARCHITECTURE rtl OF HiD_Odd_block IS

  -- Signals
  SIGNAL HiD_1_out1                       : unsigned(15 DOWNTO 0);  -- ufix16_En16
  SIGNAL HiD_1_out1_1                     : unsigned(15 DOWNTO 0);  -- ufix16_En16
  SIGNAL In_HiD_o_signed                  : signed(15 DOWNTO 0);  -- sfix16_En23
  SIGNAL In_HiD_o_1                       : signed(15 DOWNTO 0);  -- sfix16_En23
  SIGNAL Multiply_cast                    : signed(16 DOWNTO 0);  -- sfix17_En16
  SIGNAL Multiply_mul_temp                : signed(32 DOWNTO 0);  -- sfix33_En39
  SIGNAL Multiply_cast_1                  : signed(31 DOWNTO 0);  -- sfix32_En39
  SIGNAL Multiply_out1                    : unsigned(15 DOWNTO 0);  -- ufix16_En24
  SIGNAL Multiply_out1_1                  : unsigned(15 DOWNTO 0);  -- ufix16_En24
  SIGNAL HiD_3_out1                       : signed(15 DOWNTO 0);  -- sfix16_En17
  SIGNAL HiD_3_out1_1                     : signed(15 DOWNTO 0);  -- sfix16_En17
  SIGNAL Rate_Transition2_out1            : signed(15 DOWNTO 0);  -- sfix16_En23
  SIGNAL Multiply1_mul_temp               : signed(31 DOWNTO 0);  -- sfix32_En40
  SIGNAL Multiply1_out1                   : signed(15 DOWNTO 0);  -- sfix16_En15
  SIGNAL Multiply1_out1_1                 : signed(15 DOWNTO 0);  -- sfix16_En15
  SIGNAL HiD_5_out1                       : unsigned(15 DOWNTO 0);  -- ufix16_En20
  SIGNAL HiD_5_out1_1                     : unsigned(15 DOWNTO 0);  -- ufix16_En20
  SIGNAL Rate_Transition1_out1            : signed(15 DOWNTO 0);  -- sfix16_En23
  SIGNAL Multiply2_cast                   : signed(16 DOWNTO 0);  -- sfix17_En20
  SIGNAL Multiply2_mul_temp               : signed(32 DOWNTO 0);  -- sfix33_En43
  SIGNAL Multiply2_cast_1                 : signed(31 DOWNTO 0);  -- sfix32_En43
  SIGNAL Multiply2_out1                   : unsigned(15 DOWNTO 0);  -- ufix16_En28
  SIGNAL delayMatch_reg                   : vector_of_unsigned16(0 TO 1);  -- ufix16 [2]
  SIGNAL Multiply2_out1_1                 : unsigned(15 DOWNTO 0);  -- ufix16_En28
  SIGNAL Add1_add_cast                    : signed(15 DOWNTO 0);  -- sfix16_En25
  SIGNAL Add1_add_cast_1                  : signed(15 DOWNTO 0);  -- sfix16_En25
  SIGNAL Add1_add_temp                    : signed(15 DOWNTO 0);  -- sfix16_En25
  SIGNAL Add1_out1                        : signed(15 DOWNTO 0);  -- sfix16_En26
  SIGNAL Delay3_out1                      : signed(15 DOWNTO 0);  -- sfix16_En26
  SIGNAL Add_add_cast                     : signed(15 DOWNTO 0);  -- sfix16_En23
  SIGNAL Add_add_cast_1                   : signed(15 DOWNTO 0);  -- sfix16_En23
  SIGNAL Add_out1                         : signed(15 DOWNTO 0);  -- sfix16_En23

  ATTRIBUTE multstyle : string;

BEGIN
  HiD_1_out1 <= to_unsigned(16#CE90#, 16);

  HwModeRegister_process : PROCESS (clk)
  BEGIN
    IF clk'EVENT AND clk = '1' THEN
      IF reset = '1' THEN
        HiD_1_out1_1 <= to_unsigned(16#0000#, 16);
      ELSIF enb = '1' THEN
        HiD_1_out1_1 <= HiD_1_out1;
      END IF;
    END IF;
  END PROCESS HwModeRegister_process;


  In_HiD_o_signed <= signed(In_HiD_o);

  reduced_process : PROCESS (clk)
  BEGIN
    IF clk'EVENT AND clk = '1' THEN
      IF reset = '1' THEN
        In_HiD_o_1 <= to_signed(16#0000#, 16);
      ELSIF enb = '1' THEN
        In_HiD_o_1 <= In_HiD_o_signed;
      END IF;
    END IF;
  END PROCESS reduced_process;


  Multiply_cast <= signed(resize(HiD_1_out1_1, 17));
  Multiply_mul_temp <= Multiply_cast * In_HiD_o_1;
  Multiply_cast_1 <= Multiply_mul_temp(31 DOWNTO 0);
  Multiply_out1 <= unsigned(Multiply_cast_1(30 DOWNTO 15));

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


  HiD_3_out1 <= to_signed(-16#4520#, 16);

  HwModeRegister2_process : PROCESS (clk)
  BEGIN
    IF clk'EVENT AND clk = '1' THEN
      IF reset = '1' THEN
        HiD_3_out1_1 <= to_signed(16#0000#, 16);
      ELSIF enb = '1' THEN
        HiD_3_out1_1 <= HiD_3_out1;
      END IF;
    END IF;
  END PROCESS HwModeRegister2_process;


  reduced_1_process : PROCESS (clk)
  BEGIN
    IF clk'EVENT AND clk = '1' THEN
      IF reset = '1' THEN
        Rate_Transition2_out1 <= to_signed(16#0000#, 16);
      ELSIF enb = '1' THEN
        Rate_Transition2_out1 <= In_HiD_o_1;
      END IF;
    END IF;
  END PROCESS reduced_1_process;


  Multiply1_mul_temp <= HiD_3_out1_1 * Rate_Transition2_out1;
  Multiply1_out1 <= resize(Multiply1_mul_temp(31 DOWNTO 25), 16);

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


  HiD_5_out1 <= to_unsigned(16#9049#, 16);

  HwModeRegister4_process : PROCESS (clk)
  BEGIN
    IF clk'EVENT AND clk = '1' THEN
      IF reset = '1' THEN
        HiD_5_out1_1 <= to_unsigned(16#0000#, 16);
      ELSIF enb = '1' THEN
        HiD_5_out1_1 <= HiD_5_out1;
      END IF;
    END IF;
  END PROCESS HwModeRegister4_process;


  HwModeRegister5_process : PROCESS (clk)
  BEGIN
    IF clk'EVENT AND clk = '1' THEN
      IF reset = '1' THEN
        Rate_Transition1_out1 <= to_signed(16#0000#, 16);
      ELSIF enb = '1' THEN
        Rate_Transition1_out1 <= Rate_Transition2_out1;
      END IF;
    END IF;
  END PROCESS HwModeRegister5_process;


  Multiply2_cast <= signed(resize(HiD_5_out1_1, 17));
  Multiply2_mul_temp <= Multiply2_cast * Rate_Transition1_out1;
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

  Add1_add_cast <= Multiply1_out1_1(5 DOWNTO 0) & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0';
  Add1_add_cast_1 <= signed(resize(Multiply2_out1_1(15 DOWNTO 3), 16));
  Add1_add_temp <= Add1_add_cast + Add1_add_cast_1;
  Add1_out1 <= Add1_add_temp(14 DOWNTO 0) & '0';

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


  Add_add_cast <= signed(resize(Multiply_out1_1(15 DOWNTO 1), 16));
  Add_add_cast_1 <= resize(Delay3_out1(15 DOWNTO 3), 16);
  Add_out1 <= Add_add_cast + Add_add_cast_1;

  Out_HiD_o <= std_logic_vector(Add_out1);

END rtl;


-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj\hdlsrc\db3_2_Level_fixdt\DWT_db3_2_Level_tb.vhd
-- Created: 2024-04-17 21:50:55
-- 
-- Generated by MATLAB 9.10 and HDL Coder 3.18
-- 
-- 
-- -------------------------------------------------------------
-- Rate and Clocking Details
-- -------------------------------------------------------------
-- Model base rate: 2.26757e-05
-- Target subsystem base rate: 2.26757e-05
-- 
-- 
-- Clock Enable  Sample Time
-- -------------------------------------------------------------
-- ce_out        2.26757e-05
-- -------------------------------------------------------------
-- 
-- 
-- Output Signal                 Clock Enable  Sample Time
-- -------------------------------------------------------------
-- Out1                          ce_out        2.26757e-05
-- -------------------------------------------------------------
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: DWT_db3_2_Level_tb
-- Source Path: 
-- Hierarchy Level: 0
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_textio.ALL;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;
LIBRARY STD;
USE STD.textio.ALL;
LIBRARY work;
USE work.DWT_db3_2_Level_pkg.ALL;
USE work.DWT_db3_2_Level_tb_pkg.ALL;

ENTITY DWT_db3_2_Level_tb IS
END DWT_db3_2_Level_tb;


ARCHITECTURE rtl OF DWT_db3_2_Level_tb IS

  ATTRIBUTE multstyle : string;

  -- Component Declarations
  COMPONENT DWT_db3_2_Level
    PORT( clk                             :   IN    std_logic;
          reset                           :   IN    std_logic;
          clk_enable                      :   IN    std_logic;
          In1                             :   IN    std_logic_vector(15 DOWNTO 0);  -- ufix16_En23
          ce_out                          :   OUT   std_logic;
          Out1                            :   OUT   std_logic_vector(15 DOWNTO 0)  -- sfix16_En22
          );
  END COMPONENT;

  -- Component Configuration Statements
  FOR ALL : DWT_db3_2_Level
    USE ENTITY work.DWT_db3_2_Level(rtl);

  -- Signals
  SIGNAL clk                              : std_logic;
  SIGNAL reset                            : std_logic;
  SIGNAL clk_enable                       : std_logic;
  SIGNAL Out1_done                        : std_logic;  -- ufix1
  SIGNAL ce_out                           : std_logic;
  SIGNAL Out1_done_enb                    : std_logic;  -- ufix1
  SIGNAL Out1_addr                        : unsigned(18 DOWNTO 0);  -- ufix19
  SIGNAL Out1_active                      : std_logic;  -- ufix1
  SIGNAL Data_Type_Conversion_out1_addr   : unsigned(18 DOWNTO 0);  -- ufix19
  SIGNAL Data_Type_Conversion_out1_active : std_logic;  -- ufix1
  SIGNAL tb_enb_delay                     : std_logic;
  SIGNAL Data_Type_Conversion_out1_enb    : std_logic;  -- ufix1
  SIGNAL Data_Type_Conversion_out1_addr_delay_1 : unsigned(18 DOWNTO 0);  -- ufix19
  SIGNAL rawData_In1                      : unsigned(15 DOWNTO 0);  -- ufix16_En23
  SIGNAL holdData_In1                     : unsigned(15 DOWNTO 0);  -- ufix16_En23
  SIGNAL In1_offset                       : unsigned(15 DOWNTO 0);  -- ufix16_En23
  SIGNAL In1                              : unsigned(15 DOWNTO 0);  -- ufix16_En23
  SIGNAL In1_1                            : std_logic_vector(15 DOWNTO 0);  -- ufix16
  SIGNAL check1_done                      : std_logic;  -- ufix1
  SIGNAL snkDonen                         : std_logic;
  SIGNAL resetn                           : std_logic;
  SIGNAL tb_enb                           : std_logic;
  SIGNAL notDone                          : std_logic;
  SIGNAL Out1                             : std_logic_vector(15 DOWNTO 0);  -- ufix16
  SIGNAL Out1_enb                         : std_logic;  -- ufix1
  SIGNAL Out1_lastAddr                    : std_logic;  -- ufix1
  SIGNAL Out1_signed                      : signed(15 DOWNTO 0);  -- sfix16_En22
  SIGNAL Out1_addr_delay_1                : unsigned(18 DOWNTO 0);  -- ufix19
  SIGNAL Out1_expected                    : signed(15 DOWNTO 0);  -- sfix16_En22
  SIGNAL Out1_ref_hold                    : signed(15 DOWNTO 0);  -- sfix16_En22
  SIGNAL Out1_ref                         : signed(15 DOWNTO 0);  -- sfix16_En22
  SIGNAL Out1_testFailure                 : std_logic;  -- ufix1

BEGIN
  u_DWT_db3_2_Level : DWT_db3_2_Level
    PORT MAP( clk => clk,
              reset => reset,
              clk_enable => clk_enable,
              In1 => In1_1,  -- ufix16_En23
              ce_out => ce_out,
              Out1 => Out1  -- sfix16_En22
              );

  Out1_done_enb <= Out1_done AND ce_out;

  
  Out1_active <= '1' WHEN Out1_addr /= to_unsigned(16#56220#, 19) ELSE
      '0';

  
  Data_Type_Conversion_out1_active <= '1' WHEN Data_Type_Conversion_out1_addr /= to_unsigned(16#56220#, 19) ELSE
      '0';

  Data_Type_Conversion_out1_enb <= Data_Type_Conversion_out1_active AND (tb_enb_delay AND tb_enb_delay);

  -- Count limited, Unsigned Counter
  --  initial value   = 0
  --  step value      = 1
  --  count to value  = 352800
  DataTypeConversion_process : PROCESS (clk)
  BEGIN
    IF clk'EVENT AND clk = '1' THEN
      IF reset = '1' THEN
        Data_Type_Conversion_out1_addr <= to_unsigned(16#00000#, 19);
      ELSIF Data_Type_Conversion_out1_enb = '1' THEN
        IF Data_Type_Conversion_out1_addr >= to_unsigned(16#56220#, 19) THEN 
          Data_Type_Conversion_out1_addr <= to_unsigned(16#00000#, 19);
        ELSE 
          Data_Type_Conversion_out1_addr <= Data_Type_Conversion_out1_addr + to_unsigned(16#00001#, 19);
        END IF;
      END IF;
    END IF;
  END PROCESS DataTypeConversion_process;


  Data_Type_Conversion_out1_addr_delay_1 <= Data_Type_Conversion_out1_addr AFTER 1 ns;

  -- Data source for In1
  In1_fileread: PROCESS (Data_Type_Conversion_out1_addr_delay_1, tb_enb_delay)
    FILE fp: TEXT open READ_MODE is "In1.dat";
    VARIABLE l: LINE;
    VARIABLE read_data: std_logic_vector(15 DOWNTO 0);

  BEGIN
    IF tb_enb_delay /= '1' THEN
    ELSIF tb_enb_delay = '1' AND NOT ENDFILE(fp) THEN
      READLINE(fp, l);
      HREAD(l, read_data);
    END IF;
    rawData_In1 <= unsigned(read_data(15 DOWNTO 0));
  END PROCESS In1_fileread;

  -- holdData reg for Data_Type_Conversion_out1
  stimuli_Data_Type_Conversion_out1_process: PROCESS (clk)
  BEGIN
    IF clk'event AND clk = '1' THEN
      IF reset = '1' THEN
        holdData_In1 <= (OTHERS => 'X');
      ELSE
        holdData_In1 <= rawData_In1;
      END IF;
    END IF;
  END PROCESS stimuli_Data_Type_Conversion_out1_process;

  stimuli_Data_Type_Conversion_out1_1: PROCESS (rawData_In1, tb_enb_delay)
  BEGIN
    IF tb_enb_delay = '0' THEN
      In1_offset <= holdData_In1;
    ELSE
      In1_offset <= rawData_In1;
    END IF;
  END PROCESS stimuli_Data_Type_Conversion_out1_1;

  In1 <= In1_offset AFTER 2 ns;

  In1_1 <= std_logic_vector(In1);

  snkDonen <=  NOT check1_done;

  resetn <=  NOT reset;

  tb_enb <= resetn AND snkDonen;

  -- Delay inside enable generation: register depth 1
  u_enable_delay_process: PROCESS (clk)
  BEGIN
    IF clk'event AND clk = '1' THEN
      IF reset = '1' THEN
        tb_enb_delay <= '0';
      ELSE
        tb_enb_delay <= tb_enb;
      END IF;
    END IF;
  END PROCESS u_enable_delay_process;

  notDone <= tb_enb_delay AND snkDonen;

  clk_enable <= notDone AFTER 2 ns;

  reset_gen: PROCESS 
  BEGIN
    reset <= '1';
    WAIT FOR 20 ns;
    WAIT UNTIL clk'event AND clk = '1';
    WAIT FOR 2 ns;
    reset <= '0';
    WAIT;
  END PROCESS reset_gen;

  clk_gen: PROCESS 
  BEGIN
    clk <= '1';
    WAIT FOR 5 ns;
    clk <= '0';
    WAIT FOR 5 ns;
    IF check1_done = '1' THEN
      clk <= '1';
      WAIT FOR 5 ns;
      clk <= '0';
      WAIT FOR 5 ns;
      WAIT;
    END IF;
  END PROCESS clk_gen;

  Out1_enb <= ce_out AND Out1_active;

  -- Count limited, Unsigned Counter
  --  initial value   = 0
  --  step value      = 1
  --  count to value  = 352800
  c_3_process : PROCESS (clk)
  BEGIN
    IF clk'EVENT AND clk = '1' THEN
      IF reset = '1' THEN
        Out1_addr <= to_unsigned(16#00000#, 19);
      ELSIF Out1_enb = '1' THEN
        IF Out1_addr >= to_unsigned(16#56220#, 19) THEN 
          Out1_addr <= to_unsigned(16#00000#, 19);
        ELSE 
          Out1_addr <= Out1_addr + to_unsigned(16#00001#, 19);
        END IF;
      END IF;
    END IF;
  END PROCESS c_3_process;


  
  Out1_lastAddr <= '1' WHEN Out1_addr >= to_unsigned(16#56220#, 19) ELSE
      '0';

  Out1_done <= Out1_lastAddr AND resetn;

  -- Delay to allow last sim cycle to complete
  checkDone_1_process: PROCESS (clk)
  BEGIN
    IF clk'event AND clk = '1' THEN
      IF reset = '1' THEN
        check1_done <= '0';
      ELSIF Out1_done_enb = '1' THEN
        check1_done <= Out1_done;
      END IF;
    END IF;
  END PROCESS checkDone_1_process;

  Out1_signed <= signed(Out1);

  Out1_addr_delay_1 <= Out1_addr AFTER 1 ns;

  -- Data source for Out1_expected
  Out1_expected_fileread: PROCESS (Out1_addr_delay_1, tb_enb_delay)
    FILE fp: TEXT open READ_MODE is "Out1_expected.dat";
    VARIABLE l: LINE;
    VARIABLE read_data: std_logic_vector(15 DOWNTO 0);

  BEGIN
    IF tb_enb_delay /= '1' THEN
    ELSIF NOT ENDFILE(fp) THEN
      READLINE(fp, l);
      HREAD(l, read_data);
    END IF;
    Out1_expected <= signed(read_data(15 DOWNTO 0));
  END PROCESS Out1_expected_fileread;

  -- Bypass register to hold Out1_ref
  DataHold_Out1_ref_process: PROCESS (clk)
  BEGIN
    IF clk'event AND clk = '1' THEN
      IF reset = '1' THEN
        Out1_ref_hold <= (OTHERS => '0');
      ELSIF ce_out = '1' THEN
        Out1_ref_hold <= Out1_expected;
      END IF;
    END IF;
  END PROCESS DataHold_Out1_ref_process;

  
  Out1_ref <= Out1_ref_hold WHEN ce_out = '0' ELSE
      Out1_expected;

  Out1_signed_checker: PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      Out1_testFailure <= '0';
    ELSIF clk'event AND clk = '1' THEN
      IF ce_out = '1' AND Out1_signed /= Out1_ref THEN
        Out1_testFailure <= '1';
        ASSERT FALSE
          REPORT "Error in Out1_signed: Expected " & to_hex(Out1_ref) & (" Actual " & to_hex(Out1_signed))
          SEVERITY ERROR;
      END IF;
    END IF;
  END PROCESS Out1_signed_checker;

  completed_msg: PROCESS (clk)
  BEGIN
    IF clk'event AND clk = '1' THEN
      IF check1_done = '1' THEN
        IF Out1_testFailure = '0' THEN
          ASSERT FALSE
            REPORT "**************TEST COMPLETED (PASSED)**************"
            SEVERITY NOTE;
        ELSE
          ASSERT FALSE
            REPORT "**************TEST COMPLETED (FAILED)**************"
            SEVERITY NOTE;
        END IF;
      END IF;
    END IF;
  END PROCESS completed_msg;

END rtl;

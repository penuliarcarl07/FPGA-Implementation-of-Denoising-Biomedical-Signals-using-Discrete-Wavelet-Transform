library verilog;
use verilog.vl_types.all;
entity Absolute_Value1 is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        enb             : in     vl_logic;
        Signal_w4       : in     vl_logic_vector(15 downto 0);
        Out_Abs         : out    vl_logic_vector(15 downto 0)
    );
end Absolute_Value1;

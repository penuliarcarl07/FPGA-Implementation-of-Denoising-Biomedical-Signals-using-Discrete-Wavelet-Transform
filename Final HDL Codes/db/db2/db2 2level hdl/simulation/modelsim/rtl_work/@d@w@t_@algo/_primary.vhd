library verilog;
use verilog.vl_types.all;
entity DWT_Algo is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        clk_enable      : in     vl_logic;
        In_E            : in     vl_logic_vector(15 downto 0);
        ce_out          : out    vl_logic;
        Out1            : out    vl_logic_vector(15 downto 0)
    );
end DWT_Algo;

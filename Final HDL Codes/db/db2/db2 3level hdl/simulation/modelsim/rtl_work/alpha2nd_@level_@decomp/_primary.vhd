library verilog;
use verilog.vl_types.all;
entity alpha2nd_Level_Decomp is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        enb             : in     vl_logic;
        In_E            : in     vl_logic_vector(15 downto 0);
        In_O            : in     vl_logic_vector(15 downto 0);
        Out_HiD         : out    vl_logic_vector(15 downto 0);
        Out_LoD         : out    vl_logic_vector(15 downto 0)
    );
end alpha2nd_Level_Decomp;

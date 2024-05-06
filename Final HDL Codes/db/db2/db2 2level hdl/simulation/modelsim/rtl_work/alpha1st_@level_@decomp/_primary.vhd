library verilog;
use verilog.vl_types.all;
entity alpha1st_Level_Decomp is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        enb             : in     vl_logic;
        enb_1_30_1      : in     vl_logic;
        enb_1_30_0      : in     vl_logic;
        In_E            : in     vl_logic_vector(15 downto 0);
        Out_HiD         : out    vl_logic_vector(15 downto 0);
        Out_LoD         : out    vl_logic_vector(15 downto 0)
    );
end alpha1st_Level_Decomp;

library verilog;
use verilog.vl_types.all;
entity LoR_Even is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        enb             : in     vl_logic;
        In_LoR_e        : in     vl_logic_vector(15 downto 0);
        Out_LoR_e       : out    vl_logic_vector(15 downto 0)
    );
end LoR_Even;

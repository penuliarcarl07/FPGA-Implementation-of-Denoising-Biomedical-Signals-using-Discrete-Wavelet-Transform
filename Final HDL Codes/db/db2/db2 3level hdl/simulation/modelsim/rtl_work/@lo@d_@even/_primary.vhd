library verilog;
use verilog.vl_types.all;
entity LoD_Even is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        enb             : in     vl_logic;
        In_LoD_e        : in     vl_logic_vector(15 downto 0);
        Out_LoD_e       : out    vl_logic_vector(15 downto 0)
    );
end LoD_Even;

library verilog;
use verilog.vl_types.all;
entity HiR_Even_block is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        enb             : in     vl_logic;
        In_HiR_e        : in     vl_logic_vector(15 downto 0);
        Out_HiR_e       : out    vl_logic_vector(15 downto 0)
    );
end HiR_Even_block;

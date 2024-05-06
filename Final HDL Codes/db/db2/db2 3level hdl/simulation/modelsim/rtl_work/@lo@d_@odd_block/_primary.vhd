library verilog;
use verilog.vl_types.all;
entity LoD_Odd_block is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        enb             : in     vl_logic;
        In_LoD_o        : in     vl_logic_vector(15 downto 0);
        Out_LoD_o       : out    vl_logic_vector(15 downto 0)
    );
end LoD_Odd_block;

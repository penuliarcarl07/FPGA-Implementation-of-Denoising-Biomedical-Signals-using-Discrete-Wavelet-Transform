library verilog;
use verilog.vl_types.all;
entity HiD_Odd_block is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        enb             : in     vl_logic;
        In_HiD_o        : in     vl_logic_vector(15 downto 0);
        Out_HiD_o       : out    vl_logic_vector(15 downto 0)
    );
end HiD_Odd_block;

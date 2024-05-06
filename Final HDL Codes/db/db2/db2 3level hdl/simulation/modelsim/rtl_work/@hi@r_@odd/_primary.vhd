library verilog;
use verilog.vl_types.all;
entity HiR_Odd is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        enb             : in     vl_logic;
        In_HiR_o        : in     vl_logic_vector(15 downto 0);
        Out_HiR_o       : out    vl_logic_vector(15 downto 0)
    );
end HiR_Odd;

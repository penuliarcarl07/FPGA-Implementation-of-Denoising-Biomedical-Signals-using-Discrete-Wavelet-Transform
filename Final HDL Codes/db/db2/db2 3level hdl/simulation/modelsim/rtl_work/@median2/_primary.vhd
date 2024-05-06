library verilog;
use verilog.vl_types.all;
entity Median2 is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        enb             : in     vl_logic;
        Signal_w3       : in     vl_logic_vector(15 downto 0);
        Median          : out    vl_logic_vector(15 downto 0)
    );
end Median2;

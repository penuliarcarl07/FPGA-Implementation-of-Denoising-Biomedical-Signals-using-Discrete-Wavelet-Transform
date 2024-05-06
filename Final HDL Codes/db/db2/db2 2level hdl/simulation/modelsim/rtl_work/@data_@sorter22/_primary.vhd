library verilog;
use verilog.vl_types.all;
entity Data_Sorter22 is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        enb             : in     vl_logic;
        Signal1         : in     vl_logic_vector(15 downto 0);
        Signal2         : in     vl_logic_vector(15 downto 0);
        Low_Data        : out    vl_logic_vector(15 downto 0)
    );
end Data_Sorter22;

library verilog;
use verilog.vl_types.all;
entity Threshold_Estimator is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        enb             : in     vl_logic;
        Signal_w        : in     vl_logic_vector(15 downto 0);
        Threshold       : out    vl_logic_vector(15 downto 0)
    );
end Threshold_Estimator;

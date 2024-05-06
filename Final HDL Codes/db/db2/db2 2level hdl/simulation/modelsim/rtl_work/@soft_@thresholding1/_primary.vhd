library verilog;
use verilog.vl_types.all;
entity Soft_Thresholding1 is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        enb             : in     vl_logic;
        Signal_w        : in     vl_logic_vector(15 downto 0);
        Threshold1      : in     vl_logic_vector(15 downto 0);
        New_Threshold   : out    vl_logic_vector(15 downto 0)
    );
end Soft_Thresholding1;

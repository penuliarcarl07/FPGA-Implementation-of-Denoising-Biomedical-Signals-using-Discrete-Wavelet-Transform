library verilog;
use verilog.vl_types.all;
entity db2_level2_final_hdl_2_tc is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        clk_enable      : in     vl_logic;
        enb             : out    vl_logic;
        enb_1_1_1       : out    vl_logic;
        enb_1_30_0      : out    vl_logic;
        enb_1_30_1      : out    vl_logic;
        enb_1_30_4      : out    vl_logic
    );
end db2_level2_final_hdl_2_tc;

library verilog;
use verilog.vl_types.all;
entity alpha2nd_Level_Recon is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        enb             : in     vl_logic;
        In_HiD          : in     vl_logic_vector(15 downto 0);
        In_LoD          : in     vl_logic_vector(15 downto 0);
        \Out\           : out    vl_logic_vector(15 downto 0)
    );
end alpha2nd_Level_Recon;

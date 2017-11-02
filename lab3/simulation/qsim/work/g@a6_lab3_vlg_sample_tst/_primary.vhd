library verilog;
use verilog.vl_types.all;
entity gA6_lab3_vlg_sample_tst is
    port(
        addr            : in     vl_logic_vector(5 downto 0);
        button          : in     vl_logic;
        clk             : in     vl_logic;
        data            : in     vl_logic_vector(5 downto 0);
        enable          : in     vl_logic;
        mode            : in     vl_logic_vector(1 downto 0);
        mode_segment    : in     vl_logic;
        rst             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end gA6_lab3_vlg_sample_tst;

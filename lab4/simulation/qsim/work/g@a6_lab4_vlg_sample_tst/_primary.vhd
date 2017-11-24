library verilog;
use verilog.vl_types.all;
entity gA6_lab4_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        mode            : in     vl_logic_vector(1 downto 0);
        request_deal    : in     vl_logic;
        rst             : in     vl_logic;
        stack           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end gA6_lab4_vlg_sample_tst;

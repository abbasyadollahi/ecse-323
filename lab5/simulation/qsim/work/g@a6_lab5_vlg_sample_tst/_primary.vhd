library verilog;
use verilog.vl_types.all;
entity gA6_lab5_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        player_sum      : in     vl_logic_vector(5 downto 0);
        rst             : in     vl_logic;
        sum             : in     vl_logic_vector(5 downto 0);
        turn            : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end gA6_lab5_vlg_sample_tst;

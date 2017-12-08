library verilog;
use verilog.vl_types.all;
entity gA6_lab5_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        hit             : in     vl_logic;
        led_mode        : in     vl_logic_vector(1 downto 0);
        new_game        : in     vl_logic;
        rst             : in     vl_logic;
        stay            : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end gA6_lab5_vlg_sample_tst;

library verilog;
use verilog.vl_types.all;
entity gA6_lab5_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        hit_en          : in     vl_logic;
        led_mode        : in     vl_logic_vector(1 downto 0);
        new_en          : in     vl_logic;
        rst_en          : in     vl_logic;
        stay_en         : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end gA6_lab5_vlg_sample_tst;

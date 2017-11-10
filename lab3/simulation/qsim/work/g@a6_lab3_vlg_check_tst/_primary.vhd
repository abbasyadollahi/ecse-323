library verilog;
use verilog.vl_types.all;
entity gA6_lab3_vlg_check_tst is
    port(
        empty           : in     vl_logic;
        full            : in     vl_logic;
        led_empty       : in     vl_logic_vector(6 downto 0);
        led_floor       : in     vl_logic_vector(6 downto 0);
        led_lights      : in     vl_logic_vector(9 downto 0);
        led_mod         : in     vl_logic_vector(6 downto 0);
        led_mode        : in     vl_logic_vector(6 downto 0);
        num             : in     vl_logic_vector(5 downto 0);
        value           : in     vl_logic_vector(5 downto 0);
        sampler_rx      : in     vl_logic
    );
end gA6_lab3_vlg_check_tst;

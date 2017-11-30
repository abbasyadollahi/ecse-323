library verilog;
use verilog.vl_types.all;
entity gA6_lab5_vlg_check_tst is
    port(
        dealer_wins     : in     vl_logic;
        done            : in     vl_logic;
        hit             : in     vl_logic;
        led_display1    : in     vl_logic_vector(6 downto 0);
        led_display2    : in     vl_logic_vector(6 downto 0);
        led_display3    : in     vl_logic_vector(6 downto 0);
        led_display4    : in     vl_logic_vector(6 downto 0);
        player_wins     : in     vl_logic;
        state_out       : in     vl_logic_vector(1 downto 0);
        sum_out         : in     vl_logic_vector(5 downto 0);
        sampler_rx      : in     vl_logic
    );
end gA6_lab5_vlg_check_tst;

library verilog;
use verilog.vl_types.all;
entity gA6_lab5 is
    port(
        hit             : out    vl_logic;
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        turn            : in     vl_logic;
        sum             : in     vl_logic_vector(5 downto 0);
        done            : out    vl_logic;
        player_wins     : out    vl_logic;
        player_sum      : in     vl_logic_vector(5 downto 0);
        dealer_wins     : out    vl_logic;
        led_display1    : out    vl_logic_vector(6 downto 0);
        led_display2    : out    vl_logic_vector(6 downto 0);
        led_display3    : out    vl_logic_vector(6 downto 0);
        led_display4    : out    vl_logic_vector(6 downto 0);
        state_out       : out    vl_logic_vector(1 downto 0);
        sum_out         : out    vl_logic_vector(5 downto 0)
    );
end gA6_lab5;

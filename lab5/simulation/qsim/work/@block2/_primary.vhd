library verilog;
use verilog.vl_types.all;
entity Block2 is
    port(
        altera_reserved_tms: in     vl_logic;
        altera_reserved_tck: in     vl_logic;
        altera_reserved_tdi: in     vl_logic;
        altera_reserved_tdo: out    vl_logic;
        hit             : out    vl_logic;
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        turn            : in     vl_logic;
        setup           : in     vl_logic;
        d_stack         : in     vl_logic;
        sum             : in     vl_logic_vector(5 downto 0);
        done            : out    vl_logic;
        player_wins     : out    vl_logic;
        enable          : in     vl_logic;
        new_game        : in     vl_logic;
        player_sum      : in     vl_logic_vector(5 downto 0);
        winner          : in     vl_logic_vector(1 downto 0);
        dealer_wins     : out    vl_logic;
        dealer_sum      : out    vl_logic_vector(5 downto 0);
        led_display1    : out    vl_logic_vector(6 downto 0);
        led_display2    : out    vl_logic_vector(6 downto 0);
        led_display3    : out    vl_logic_vector(6 downto 0);
        led_display4    : out    vl_logic_vector(6 downto 0)
    );
end Block2;

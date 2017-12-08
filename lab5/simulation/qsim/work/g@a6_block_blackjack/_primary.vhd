library verilog;
use verilog.vl_types.all;
entity gA6_block_blackjack is
    port(
        altera_reserved_tms: in     vl_logic;
        altera_reserved_tck: in     vl_logic;
        altera_reserved_tdi: in     vl_logic;
        altera_reserved_tdo: out    vl_logic;
        empty           : out    vl_logic;
        mode            : out    vl_logic_vector(1 downto 0);
        clk             : in     vl_logic;
        rst_en          : in     vl_logic;
        p_wins          : out    vl_logic;
        dealer_done     : out    vl_logic;
        computer_turn   : out    vl_logic;
        d_setup         : out    vl_logic;
        dealer_stack    : out    vl_logic;
        dealer_sum      : out    vl_logic_vector(5 downto 0);
        new_en          : in     vl_logic;
        popped          : out    vl_logic_vector(5 downto 0);
        player_sum      : out    vl_logic_vector(5 downto 0);
        player_stack    : out    vl_logic;
        player_turn     : out    vl_logic;
        p_sum           : out    vl_logic_vector(5 downto 0);
        d_wins          : out    vl_logic;
        hit_en          : in     vl_logic;
        stay_en         : in     vl_logic;
        addr            : out    vl_logic_vector(5 downto 0);
        num             : out    vl_logic_vector(5 downto 0);
        full            : out    vl_logic;
        led1            : out    vl_logic_vector(6 downto 0);
        led_mode        : in     vl_logic_vector(1 downto 0);
        led2            : out    vl_logic_vector(6 downto 0);
        led3            : out    vl_logic_vector(6 downto 0);
        led4            : out    vl_logic_vector(6 downto 0)
    );
end gA6_block_blackjack;

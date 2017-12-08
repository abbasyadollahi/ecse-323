library verilog;
use verilog.vl_types.all;
entity gA6_block_blackjack_vlg_check_tst is
    port(
        addr            : in     vl_logic_vector(5 downto 0);
        computer_turn   : in     vl_logic;
        d_setup         : in     vl_logic;
        d_wins          : in     vl_logic;
        dealer_done     : in     vl_logic;
        dealer_stack    : in     vl_logic;
        dealer_sum      : in     vl_logic_vector(5 downto 0);
        empty           : in     vl_logic;
        full            : in     vl_logic;
        led1            : in     vl_logic_vector(6 downto 0);
        led2            : in     vl_logic_vector(6 downto 0);
        led3            : in     vl_logic_vector(6 downto 0);
        led4            : in     vl_logic_vector(6 downto 0);
        mode            : in     vl_logic_vector(1 downto 0);
        num             : in     vl_logic_vector(5 downto 0);
        p_sum           : in     vl_logic_vector(5 downto 0);
        p_wins          : in     vl_logic;
        player_stack    : in     vl_logic;
        player_sum      : in     vl_logic_vector(5 downto 0);
        player_turn     : in     vl_logic;
        popped          : in     vl_logic_vector(5 downto 0);
        sampler_rx      : in     vl_logic
    );
end gA6_block_blackjack_vlg_check_tst;

library verilog;
use verilog.vl_types.all;
entity Block2_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        d_stack         : in     vl_logic;
        enable          : in     vl_logic;
        new_game        : in     vl_logic;
        player_sum      : in     vl_logic_vector(5 downto 0);
        rst             : in     vl_logic;
        setup           : in     vl_logic;
        sum             : in     vl_logic_vector(5 downto 0);
        turn            : in     vl_logic;
        winner          : in     vl_logic_vector(1 downto 0);
        sampler_tx      : out    vl_logic
    );
end Block2_vlg_sample_tst;

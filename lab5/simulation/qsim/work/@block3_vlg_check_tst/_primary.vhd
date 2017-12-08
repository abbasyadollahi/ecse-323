library verilog;
use verilog.vl_types.all;
entity Block3_vlg_check_tst is
    port(
        d_setup         : in     vl_logic;
        d_streak        : in     vl_logic_vector(1 downto 0);
        d_turn          : in     vl_logic;
        game_count      : in     vl_logic_vector(3 downto 0);
        mode            : in     vl_logic_vector(1 downto 0);
        p_streak        : in     vl_logic_vector(1 downto 0);
        p_sum_out       : in     vl_logic_vector(5 downto 0);
        p_turn          : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end Block3_vlg_check_tst;

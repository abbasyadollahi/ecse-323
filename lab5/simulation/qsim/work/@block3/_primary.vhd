library verilog;
use verilog.vl_types.all;
entity Block3 is
    port(
        altera_reserved_tms: in     vl_logic;
        altera_reserved_tck: in     vl_logic;
        altera_reserved_tdi: in     vl_logic;
        altera_reserved_tdo: out    vl_logic;
        d_setup         : out    vl_logic;
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        p_wins          : in     vl_logic;
        d_wins          : in     vl_logic;
        \new\           : in     vl_logic;
        hit             : in     vl_logic;
        stay            : in     vl_logic;
        p_stack         : in     vl_logic;
        d_stack         : in     vl_logic;
        p_sum           : in     vl_logic_vector(5 downto 0);
        p_turn          : out    vl_logic;
        d_turn          : out    vl_logic;
        d_streak        : out    vl_logic_vector(1 downto 0);
        game_count      : out    vl_logic_vector(3 downto 0);
        mode            : out    vl_logic_vector(1 downto 0);
        p_streak        : out    vl_logic_vector(1 downto 0);
        p_sum_out       : out    vl_logic_vector(5 downto 0)
    );
end Block3;

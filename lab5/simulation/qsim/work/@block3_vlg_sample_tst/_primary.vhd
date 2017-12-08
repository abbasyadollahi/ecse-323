library verilog;
use verilog.vl_types.all;
entity Block3_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        d_stack         : in     vl_logic;
        d_wins          : in     vl_logic;
        hit             : in     vl_logic;
        \new\           : in     vl_logic;
        p_stack         : in     vl_logic;
        p_sum           : in     vl_logic_vector(5 downto 0);
        p_wins          : in     vl_logic;
        rst             : in     vl_logic;
        stay            : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Block3_vlg_sample_tst;

library verilog;
use verilog.vl_types.all;
entity gA6_lab4_vlg_check_tst is
    port(
        ace_out         : in     vl_logic;
        fsm_state       : in     vl_logic_vector(1 downto 0);
        legal_play      : in     vl_logic;
        out_1           : in     vl_logic_vector(5 downto 0);
        out_2           : in     vl_logic_vector(5 downto 0);
        out_3           : in     vl_logic_vector(5 downto 0);
        out_4           : in     vl_logic;
        out_5           : in     vl_logic;
        rand_enable     : in     vl_logic;
        stack_enable    : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end gA6_lab4_vlg_check_tst;

library verilog;
use verilog.vl_types.all;
entity gA6_lab4 is
    port(
        legal_play      : out    vl_logic;
        hand_sum        : in     vl_logic_vector(5 downto 0);
        new_card        : in     vl_logic_vector(5 downto 0);
        ace_out         : out    vl_logic;
        out_4           : out    vl_logic;
        out_5           : out    vl_logic;
        rand_enable     : out    vl_logic;
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        legal_num       : in     vl_logic;
        request_deal    : in     vl_logic;
        stack_enable    : out    vl_logic;
        fsm_state       : out    vl_logic_vector(1 downto 0);
        out_1           : out    vl_logic_vector(5 downto 0);
        out_2           : out    vl_logic_vector(5 downto 0);
        out_3           : out    vl_logic_vector(5 downto 0)
    );
end gA6_lab4;

library verilog;
use verilog.vl_types.all;
entity gA6_lab4_vlg_check_tst is
    port(
        ace_out         : in     vl_logic;
        addr            : in     vl_logic_vector(5 downto 0);
        empty           : in     vl_logic;
        full            : in     vl_logic;
        led_empty       : in     vl_logic_vector(6 downto 0);
        led_mode        : in     vl_logic_vector(6 downto 0);
        led_suit        : in     vl_logic_vector(6 downto 0);
        led_value       : in     vl_logic_vector(6 downto 0);
        legal_play      : in     vl_logic;
        num             : in     vl_logic_vector(5 downto 0);
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

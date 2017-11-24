library verilog;
use verilog.vl_types.all;
entity gA6_lab4_vlg_check_tst is
    port(
        addr            : in     vl_logic_vector(5 downto 0);
        empty           : in     vl_logic;
        full            : in     vl_logic;
        led_empty       : in     vl_logic_vector(6 downto 0);
        led_mode        : in     vl_logic_vector(6 downto 0);
        led_suit        : in     vl_logic_vector(6 downto 0);
        led_value       : in     vl_logic_vector(6 downto 0);
        num             : in     vl_logic_vector(5 downto 0);
        sampler_rx      : in     vl_logic
    );
end gA6_lab4_vlg_check_tst;

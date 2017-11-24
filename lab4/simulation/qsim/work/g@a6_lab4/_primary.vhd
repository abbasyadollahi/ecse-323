library verilog;
use verilog.vl_types.all;
entity gA6_lab4 is
    port(
        empty           : out    vl_logic;
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        stack           : in     vl_logic;
        request_deal    : in     vl_logic;
        mode            : in     vl_logic_vector(1 downto 0);
        full            : out    vl_logic;
        addr            : out    vl_logic_vector(5 downto 0);
        led_empty       : out    vl_logic_vector(6 downto 0);
        led_mode        : out    vl_logic_vector(6 downto 0);
        led_suit        : out    vl_logic_vector(6 downto 0);
        led_value       : out    vl_logic_vector(6 downto 0);
        num             : out    vl_logic_vector(5 downto 0)
    );
end gA6_lab4;

library verilog;
use verilog.vl_types.all;
entity gA6_lab3 is
    port(
        altera_reserved_tms: in     vl_logic;
        altera_reserved_tck: in     vl_logic;
        altera_reserved_tdi: in     vl_logic;
        altera_reserved_tdo: out    vl_logic;
        empty           : out    vl_logic;
        button          : in     vl_logic;
        rst             : in     vl_logic;
        clk             : in     vl_logic;
        addr            : in     vl_logic_vector(5 downto 0);
        mode            : in     vl_logic_vector(1 downto 0);
        full            : out    vl_logic;
        led_empty       : out    vl_logic_vector(6 downto 0);
        led_floor       : out    vl_logic_vector(6 downto 0);
        led_lights      : out    vl_logic_vector(9 downto 0);
        led_mod         : out    vl_logic_vector(6 downto 0);
        led_mode        : out    vl_logic_vector(6 downto 0);
        num             : out    vl_logic_vector(5 downto 0);
        value           : out    vl_logic_vector(5 downto 0)
    );
end gA6_lab3;

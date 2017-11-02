library verilog;
use verilog.vl_types.all;
entity gA6_lab3 is
    port(
        empty           : out    vl_logic;
        enable          : in     vl_logic;
        rst             : in     vl_logic;
        clk             : in     vl_logic;
        addr            : in     vl_logic_vector(5 downto 0);
        data            : in     vl_logic_vector(5 downto 0);
        mode            : in     vl_logic_vector(1 downto 0);
        full            : out    vl_logic;
        led_floor       : out    vl_logic_vector(6 downto 0);
        button          : in     vl_logic;
        mode_segment    : in     vl_logic;
        led_mod         : out    vl_logic_vector(6 downto 0);
        num             : out    vl_logic_vector(5 downto 0);
        value           : out    vl_logic_vector(5 downto 0)
    );
end gA6_lab3;

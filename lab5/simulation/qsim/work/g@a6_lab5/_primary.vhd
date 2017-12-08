library verilog;
use verilog.vl_types.all;
entity gA6_lab5 is
    port(
        altera_reserved_tms: in     vl_logic;
        altera_reserved_tck: in     vl_logic;
        altera_reserved_tdi: in     vl_logic;
        altera_reserved_tdo: out    vl_logic;
        empty           : out    vl_logic;
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        new_game        : in     vl_logic;
        hit             : in     vl_logic;
        stay            : in     vl_logic;
        led_mode        : in     vl_logic_vector(1 downto 0);
        full            : out    vl_logic;
        d_score         : out    vl_logic_vector(2 downto 0);
        led1            : out    vl_logic_vector(6 downto 0);
        led2            : out    vl_logic_vector(6 downto 0);
        led3            : out    vl_logic_vector(6 downto 0);
        led4            : out    vl_logic_vector(6 downto 0);
        p_score         : out    vl_logic_vector(2 downto 0)
    );
end gA6_lab5;

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
        num             : out    vl_logic_vector(5 downto 0);
        value           : out    vl_logic_vector(5 downto 0)
    );
end gA6_lab3;

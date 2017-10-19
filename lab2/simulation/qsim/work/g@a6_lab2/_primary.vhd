library verilog;
use verilog.vl_types.all;
entity gA6_lab2 is
    port(
        P_EN            : out    vl_logic_vector(51 downto 0);
        clk             : in     vl_logic;
        N               : in     vl_logic_vector(5 downto 0);
        rand            : out    vl_logic_vector(29 downto 0);
        seed            : in     vl_logic_vector(15 downto 0)
    );
end gA6_lab2;

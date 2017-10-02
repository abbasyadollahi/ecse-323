library verilog;
use verilog.vl_types.all;
entity gA6_lab1 is
    port(
        AeqB            : out    vl_logic;
        B               : in     vl_logic_vector(6 downto 0);
        C               : in     vl_logic_vector(6 downto 0);
        Amod13          : out    vl_logic_vector(3 downto 0);
        A               : in     vl_logic_vector(5 downto 0)
    );
end gA6_lab1;

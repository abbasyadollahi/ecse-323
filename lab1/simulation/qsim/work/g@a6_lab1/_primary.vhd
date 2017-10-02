library verilog;
use verilog.vl_types.all;
entity gA6_lab1 is
    port(
        Amod13          : out    vl_logic_vector(3 downto 0);
        A               : in     vl_logic_vector(5 downto 0)
    );
end gA6_lab1;

library verilog;
use verilog.vl_types.all;
entity gA6_lab5 is
    port(
        new_total       : out    vl_logic_vector(5 downto 0);
        clk             : in     vl_logic;
        enable          : in     vl_logic;
        rst             : in     vl_logic;
        hand_sum        : in     vl_logic_vector(5 downto 0);
        new_card        : in     vl_logic_vector(5 downto 0)
    );
end gA6_lab5;

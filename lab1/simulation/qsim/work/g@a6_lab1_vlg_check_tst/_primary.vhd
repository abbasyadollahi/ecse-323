library verilog;
use verilog.vl_types.all;
entity gA6_lab1_vlg_check_tst is
    port(
        AeqB            : in     vl_logic;
        Amod13          : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end gA6_lab1_vlg_check_tst;

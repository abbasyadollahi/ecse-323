library verilog;
use verilog.vl_types.all;
entity gA6_lab5_vlg_check_tst is
    port(
        new_total       : in     vl_logic_vector(5 downto 0);
        sampler_rx      : in     vl_logic
    );
end gA6_lab5_vlg_check_tst;

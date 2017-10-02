library verilog;
use verilog.vl_types.all;
entity gA6_lab1_vlg_sample_tst is
    port(
        A               : in     vl_logic_vector(5 downto 0);
        sampler_tx      : out    vl_logic
    );
end gA6_lab1_vlg_sample_tst;

library verilog;
use verilog.vl_types.all;
entity g06_lab2_vlg_sample_tst is
    port(
        seed            : in     vl_logic_vector(15 downto 0);
        sampler_tx      : out    vl_logic
    );
end g06_lab2_vlg_sample_tst;

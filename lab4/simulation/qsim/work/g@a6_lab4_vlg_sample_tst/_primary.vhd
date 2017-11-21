library verilog;
use verilog.vl_types.all;
entity gA6_lab4_vlg_sample_tst is
    port(
        hand_sum        : in     vl_logic_vector(5 downto 0);
        new_card        : in     vl_logic_vector(5 downto 0);
        sampler_tx      : out    vl_logic
    );
end gA6_lab4_vlg_sample_tst;

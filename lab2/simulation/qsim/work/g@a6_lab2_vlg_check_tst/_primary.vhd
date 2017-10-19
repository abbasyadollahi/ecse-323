library verilog;
use verilog.vl_types.all;
entity gA6_lab2_vlg_check_tst is
    port(
        P_EN            : in     vl_logic_vector(51 downto 0);
        rand            : in     vl_logic_vector(31 downto 0);
        segments_out    : in     vl_logic_vector(6 downto 0);
        sampler_rx      : in     vl_logic
    );
end gA6_lab2_vlg_check_tst;

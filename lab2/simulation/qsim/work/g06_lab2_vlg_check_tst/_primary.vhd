library verilog;
use verilog.vl_types.all;
entity g06_lab2_vlg_check_tst is
    port(
        P_EN            : in     vl_logic_vector(51 downto 0);
        rand            : in     vl_logic_vector(29 downto 0);
        sampler_rx      : in     vl_logic
    );
end g06_lab2_vlg_check_tst;

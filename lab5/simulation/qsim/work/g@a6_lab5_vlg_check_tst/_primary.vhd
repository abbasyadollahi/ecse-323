library verilog;
use verilog.vl_types.all;
entity gA6_lab5_vlg_check_tst is
    port(
        d_score         : in     vl_logic_vector(2 downto 0);
        empty           : in     vl_logic;
        full            : in     vl_logic;
        led1            : in     vl_logic_vector(6 downto 0);
        led2            : in     vl_logic_vector(6 downto 0);
        led3            : in     vl_logic_vector(6 downto 0);
        led4            : in     vl_logic_vector(6 downto 0);
        p_score         : in     vl_logic_vector(2 downto 0);
        sampler_rx      : in     vl_logic
    );
end gA6_lab5_vlg_check_tst;

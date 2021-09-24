library verilog;
use verilog.vl_types.all;
entity signedparamulti is
    port(
        x               : in     vl_logic_vector(4 downto 0);
        y               : in     vl_logic_vector(4 downto 0);
        \out\           : out    vl_logic_vector(9 downto 0)
    );
end signedparamulti;

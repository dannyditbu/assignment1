library verilog;
use verilog.vl_types.all;
entity paramulti is
    port(
        x               : in     vl_logic_vector(3 downto 0);
        y               : in     vl_logic_vector(3 downto 0);
        \out\           : out    vl_logic_vector(7 downto 0)
    );
end paramulti;

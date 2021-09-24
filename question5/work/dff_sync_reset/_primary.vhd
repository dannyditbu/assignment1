library verilog;
use verilog.vl_types.all;
entity dff_sync_reset is
    port(
        data            : in     vl_logic;
        clk             : in     vl_logic;
        q               : out    vl_logic
    );
end dff_sync_reset;

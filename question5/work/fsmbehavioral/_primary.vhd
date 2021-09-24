library verilog;
use verilog.vl_types.all;
entity fsmbehavioral is
    port(
        e               : in     vl_logic;
        w               : in     vl_logic;
        clk             : in     vl_logic;
        \out\           : out    vl_logic
    );
end fsmbehavioral;

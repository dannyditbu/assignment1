library verilog;
use verilog.vl_types.all;
entity andadder is
    port(
        a               : in     vl_logic;
        b               : in     vl_logic;
        sin             : in     vl_logic;
        cin             : in     vl_logic;
        cout            : out    vl_logic;
        sum             : out    vl_logic
    );
end andadder;

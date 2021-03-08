library verilog;
use verilog.vl_types.all;
entity mux4_1 is
    port(
        result          : out    vl_logic;
        S1              : in     vl_logic;
        S0              : in     vl_logic;
        I3              : in     vl_logic;
        I2              : in     vl_logic;
        I1              : in     vl_logic;
        I0              : in     vl_logic
    );
end mux4_1;

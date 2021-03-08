library verilog;
use verilog.vl_types.all;
entity mux2_1 is
    port(
        result          : out    vl_logic;
        S0              : in     vl_logic;
        I1              : in     vl_logic;
        I0              : in     vl_logic
    );
end mux2_1;

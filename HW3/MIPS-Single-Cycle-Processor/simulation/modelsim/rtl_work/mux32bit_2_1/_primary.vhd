library verilog;
use verilog.vl_types.all;
entity mux32bit_2_1 is
    port(
        result          : out    vl_logic_vector(31 downto 0);
        S0              : in     vl_logic;
        I1              : in     vl_logic_vector(31 downto 0);
        I0              : in     vl_logic_vector(31 downto 0)
    );
end mux32bit_2_1;

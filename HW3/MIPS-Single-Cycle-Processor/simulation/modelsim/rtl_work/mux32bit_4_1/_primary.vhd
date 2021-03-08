library verilog;
use verilog.vl_types.all;
entity mux32bit_4_1 is
    port(
        result          : out    vl_logic_vector(31 downto 0);
        S1              : in     vl_logic;
        S0              : in     vl_logic;
        I3              : in     vl_logic_vector(31 downto 0);
        I2              : in     vl_logic_vector(31 downto 0);
        I1              : in     vl_logic_vector(31 downto 0);
        I0              : in     vl_logic_vector(31 downto 0)
    );
end mux32bit_4_1;

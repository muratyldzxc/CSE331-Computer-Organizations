library verilog;
use verilog.vl_types.all;
entity ALU32bit is
    port(
        Z               : out    vl_logic;
        V               : out    vl_logic;
        Cout            : out    vl_logic;
        Output          : out    vl_logic_vector(31 downto 0);
        I1              : in     vl_logic_vector(31 downto 0);
        I2              : in     vl_logic_vector(31 downto 0);
        ALUop           : in     vl_logic_vector(2 downto 0)
    );
end ALU32bit;

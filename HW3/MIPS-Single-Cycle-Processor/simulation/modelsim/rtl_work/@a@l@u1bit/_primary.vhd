library verilog;
use verilog.vl_types.all;
entity ALU1bit is
    port(
        Cout            : out    vl_logic;
        result          : out    vl_logic;
        input1          : in     vl_logic;
        input2          : in     vl_logic;
        ALUop           : in     vl_logic_vector(2 downto 0);
        Cin             : in     vl_logic;
        Less            : in     vl_logic
    );
end ALU1bit;

library verilog;
use verilog.vl_types.all;
entity Control_Unit is
    port(
        signal_RegWrite : out    vl_logic;
        signal_ALUSrc   : out    vl_logic;
        signal_MemtoReg1: out    vl_logic;
        signal_MemtoReg2: out    vl_logic;
        signal_MemRead  : out    vl_logic;
        signal_MemWrite : out    vl_logic;
        signal_sb       : out    vl_logic;
        signal_sh       : out    vl_logic;
        signal_sw       : out    vl_logic;
        OpCode          : in     vl_logic_vector(5 downto 0)
    );
end Control_Unit;

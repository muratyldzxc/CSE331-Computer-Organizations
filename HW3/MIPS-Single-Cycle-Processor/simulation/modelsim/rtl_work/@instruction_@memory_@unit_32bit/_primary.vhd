library verilog;
use verilog.vl_types.all;
entity Instruction_Memory_Unit_32bit is
    port(
        Instruction     : out    vl_logic_vector(31 downto 0);
        PC              : in     vl_logic_vector(31 downto 0)
    );
end Instruction_Memory_Unit_32bit;

library verilog;
use verilog.vl_types.all;
entity Immediate_16to32 is
    port(
        extended_immediate_32bit: out    vl_logic_vector(31 downto 0);
        Imm_16bit       : in     vl_logic_vector(15 downto 0)
    );
end Immediate_16to32;

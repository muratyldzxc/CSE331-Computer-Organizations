library verilog;
use verilog.vl_types.all;
entity ZeroExtendImm_16bit_to_32bit is
    port(
        ZeroExtImm_32bit: out    vl_logic_vector(31 downto 0);
        Imm_16bit       : in     vl_logic_vector(15 downto 0)
    );
end ZeroExtendImm_16bit_to_32bit;

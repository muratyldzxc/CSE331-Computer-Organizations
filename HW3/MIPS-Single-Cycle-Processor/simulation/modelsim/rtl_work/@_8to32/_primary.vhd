library verilog;
use verilog.vl_types.all;
entity \_8to32\ is
    port(
        extended_32bit  : out    vl_logic_vector(31 downto 0);
        \_8bit\         : in     vl_logic_vector(7 downto 0)
    );
end \_8to32\;

library verilog;
use verilog.vl_types.all;
entity Data_Memory_Unit_32bit is
    port(
        Read_data       : out    vl_logic_vector(31 downto 0);
        memory_adress   : in     vl_logic_vector(31 downto 0);
        write_data      : in     vl_logic_vector(31 downto 0);
        read_signal     : in     vl_logic;
        write_signal    : in     vl_logic;
        signal_sb       : in     vl_logic;
        signal_sh       : in     vl_logic;
        signal_sw       : in     vl_logic;
        clk             : in     vl_logic
    );
end Data_Memory_Unit_32bit;

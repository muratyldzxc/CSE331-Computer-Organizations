library verilog;
use verilog.vl_types.all;
entity Registers_Unit_32bit is
    port(
        Read_data_1     : out    vl_logic_vector(31 downto 0);
        Read_data_2     : out    vl_logic_vector(31 downto 0);
        Read_reg_1      : in     vl_logic_vector(4 downto 0);
        Read_reg_2      : in     vl_logic_vector(4 downto 0);
        Write_register  : in     vl_logic_vector(4 downto 0);
        Write_data      : in     vl_logic_vector(31 downto 0);
        signal_RegWrite : in     vl_logic;
        clk             : in     vl_logic
    );
end Registers_Unit_32bit;

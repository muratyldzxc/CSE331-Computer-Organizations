`define DELAY 50
module Registers_Unit_32bit_testbench();
 
reg [4:0] Read_reg_1, Read_reg_2, Write_register ; // 5 bit
reg [31:0] Write_data ; // 32 bit
reg signal_RegWrite, clk  ; // 1 bit signals
wire [31:0] Read_data_1, Read_data_2 ;

Registers_Unit_32bit  test_Registers_Unit_32bit ( Read_data_1, Read_data_2, Read_reg_1, Read_reg_2, Write_register, Write_data, signal_RegWrite, clk );

initial clk = 1;

always
	#50 clk=~clk;
 
 
initial begin
	#201 $finish;

end

initial begin

Read_reg_1 = 5'd12 ;
Read_reg_2 = 5'd3 ;
Write_register = 5'd7 ;
Write_data = 32'd31 ; 
signal_RegWrite = 1'b1 ;
#100

Read_reg_1 = 5'd7 ;
Read_reg_2 = 5'd5 ;
Write_register = 5'd2 ;
Write_data = 32'd8 ; 
signal_RegWrite = 1'b1 ;
#100 ;



end

initial
begin

$monitor(" time = %2d,\nRead_reg_1 = %2d, Read_data_1 = %32b \n Read_reg_2 = %5d, Read_data_2 = %32b \n Write_register = %2d, Write_data = %32b signal_RegWrite = %1b clk = 1 ", $time, Read_reg_1, Read_data_1, Read_reg_2, Read_data_2, Write_register, Write_data, signal_RegWrite );

end
 
endmodule
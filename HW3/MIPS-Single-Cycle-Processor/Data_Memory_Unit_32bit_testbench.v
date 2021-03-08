`define DELAY 50
module Data_Memory_Unit_32bit_testbench();
 
reg [31:0] memory_adress ;
reg [31:0] write_data ;
reg read_signal, write_signal, clk ;

wire [31:0] Read_data ;


Data_Memory_Unit_32bit  test_Data_Memory_Unit_32bit ( Read_data, memory_adress, write_data, read_signal, write_signal, clk );

initial clk = 1;

always
	#50 clk=~clk;
 
 
initial begin
	#1000 $finish;

end

initial begin

memory_adress = 32'd0 ;
read_signal = 1'b1 ;
write_signal = 1'b0 ;
write_data = 32'd0 ;
#100

memory_adress = 32'd1 ;
#100

memory_adress = 32'd2 ;
#100

memory_adress = 32'd3 ;
#100

memory_adress = 32'd4 ;
#100

memory_adress = 32'd5 ;
#100

memory_adress = 32'd6 ;
#100 

memory_adress = 32'd5 ;
read_signal = 1'b0 ;
write_signal = 1'b1 ;
write_data = 32'd31 ;

#100 
memory_adress = 32'd10 ;
write_data = 32'd8 ;
#100 ;

end

initial
begin

$monitor(" time = %2d,Read_data = %32b, memory_adress = %32b, write_data = %32b, read_signal = %1b, write_signal = %1b, clk= 1 ", $time, Read_data, memory_adress, write_data, read_signal, write_signal  );

end
 
endmodule
module Data_Memory_Unit_32bit ( Read_data, memory_adress, write_data, read_signal, write_signal, signal_sb, signal_sh, signal_sw, clk );

input [31:0] memory_adress;
input [31:0] write_data;
input read_signal;
input write_signal;
input clk ;
input signal_sb, signal_sh, signal_sw ;
output reg [31:0] Read_data;

reg [31:0] Data_Memory  [255:0];

initial begin
	$readmemb("data.txt", Data_Memory );
end



always @( * ) begin

	if (read_signal) begin
		Read_data <= Data_Memory[ memory_adress ];
	end
	
	if (write_signal) begin
		if( signal_sb) begin
			Data_Memory[ memory_adress ] <= write_data[7:0];
		end
		else if( signal_sh )begin
			Data_Memory[ memory_adress ] <= write_data[15:0];
		end
		else if( signal_sw )begin
			Data_Memory[ memory_adress ] <= write_data[31:0];
		end
			
		$writememb("data.txt", Data_Memory);
	end
end


endmodule
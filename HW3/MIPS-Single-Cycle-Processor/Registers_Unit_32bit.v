module Registers_Unit_32bit( Read_data_1, Read_data_2, Read_reg_1, Read_reg_2, Write_register, Write_data, signal_RegWrite, clk );

	input [4:0] Read_reg_1, Read_reg_2, Write_register ;
	input [31:0] Write_data ;
	input signal_RegWrite ; 
	input clk ;
	
	reg [31:0] Registers [31:0];
	output [31:0] Read_data_1, Read_data_2 ;
	
	initial begin
		$readmemb("registers.mem", Registers);
	end

	assign Read_data_1 = Registers[Read_reg_1];
	assign Read_data_2 = Registers[Read_reg_2];
	
	always @ ( posedge clk ) begin
		
		if ( signal_RegWrite ) begin
			Registers[Write_register] <= Write_data;
		end
		
	end
	
	always @(negedge clk) begin
		if(signal_RegWrite) begin
			$writememb("registers.mem",Registers);
		end
	end

endmodule

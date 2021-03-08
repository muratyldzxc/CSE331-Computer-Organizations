
`define DELAY 50
module MIPS_32bit_testbench();
 
reg clock ;


MIPS_32bit test_MIPS_32bit( clock );

initial clock = 0;
 


initial begin

		#50 clock=~clock; #50 clock=~clock;
		#50 clock=~clock; #50 clock=~clock;
		#50 clock=~clock; #50 clock=~clock;
		#50 clock=~clock; #50 clock=~clock;
		#50 clock=~clock; #50 clock=~clock;
		#50 clock=~clock; #50 clock=~clock;
		#50 clock=~clock; #50 clock=~clock;
		#50 clock=~clock; #50 clock=~clock;
		#50 clock=~clock; #50 clock=~clock;
		#50 clock=~clock; #50 clock=~clock;
		#50 clock=~clock; #50 clock=~clock;
		#50 clock=~clock; #50 clock=~clock;
		#50 clock=~clock; #50 clock=~clock;
		#50 clock=~clock; #50 clock=~clock;
		#50 clock=~clock; #50 clock=~clock;
		#50 clock=~clock; #50 clock=~clock;
		#50 clock=~clock; #50 clock=~clock;
		

end

endmodule






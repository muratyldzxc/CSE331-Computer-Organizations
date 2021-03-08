module Instruction_Memory_Unit_32bit( Instruction, PC  );

input [31:0] PC ;
output [31:0] Instruction ;

reg [31:0] Instruction_Memory [17:0];

initial begin
	$readmemb("instruction.mem", Instruction_Memory);
end

 assign Instruction = Instruction_Memory[ PC ];

endmodule

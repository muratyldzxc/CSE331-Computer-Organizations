`define DELAY 20
module Instruction_Memory_Unit_32bit_testbench();
 
reg [31:0] PC ;
wire [31:0] Insruction ;

Instruction_Memory_Unit_32bit test_Instruction_Memory_Unit_32bit( Insruction, PC );

initial begin
PC = 32'd0;
#`DELAY;

PC = 32'd1;
#`DELAY;

PC = 32'd2;
#`DELAY;

PC = 32'd3;
#`DELAY;

PC = 32'd4;
#`DELAY;

PC = 32'd5;
#`DELAY;

PC = 32'd6;
#`DELAY;

PC = 32'd7;
#`DELAY;

PC = 32'd8;
#`DELAY;

PC = 32'd9;
#`DELAY;

PC = 32'd10;
#`DELAY;

PC = 32'd11;
#`DELAY;

PC = 32'd12;
#`DELAY;

PC = 32'd13;
#`DELAY;

PC = 32'd14;
#`DELAY;

PC = 32'd15;
#`DELAY;

PC = 32'd16;
#`DELAY;

PC = 32'd17;
#`DELAY;

PC = 32'd3;
#`DELAY;
end

 
 
initial
begin
$monitor(" time = %2d, Insruction: %32b ", $time, Insruction  );

end
 
endmodule
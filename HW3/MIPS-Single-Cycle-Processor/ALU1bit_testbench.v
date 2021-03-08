`define DELAY 20
module ALU1bit_testbench(); 
reg input1, input2, Cin, Less ;
reg [2:0] ALUop ;
wire Cout, result;

ALU1bit test_ALU1bit ( Cout, result, input1, input2, ALUop, Cin, Less );

initial begin

// for AND operation
input1 = 1'b0; input2 = 1'b0; Cin = 1'b0; Less = 1'b0; ALUop = 3'b000; // 0 0
#`DELAY;

input1 = 1'b0; input2 = 1'b1; Cin = 1'b0; Less = 1'b0; ALUop = 3'b000; // 0 1
#`DELAY;

input1 = 1'b1; input2 = 1'b0; Cin = 1'b0; Less = 1'b0; ALUop = 3'b000; // 1 0
#`DELAY;

input1 = 1'b1; input2 = 1'b1; Cin = 1'b0; Less = 1'b0; ALUop = 3'b000; // 1 1
#`DELAY;

// for OR operation
input1 = 1'b0; input2 = 1'b0; Cin = 1'b0; Less = 1'b0; ALUop = 3'b001; // 0 0
#`DELAY;

input1 = 1'b0; input2 = 1'b1; Cin = 1'b0; Less = 1'b0; ALUop = 3'b001; // 0 1
#`DELAY;

input1 = 1'b1; input2 = 1'b0; Cin = 1'b0; Less = 1'b0; ALUop = 3'b001; // 1 0
#`DELAY;

input1 = 1'b1; input2 = 1'b1; Cin = 1'b0; Less = 1'b0; ALUop = 3'b001; // 1 1
#`DELAY;


// for ADD operation
input1 = 1'b0; input2 = 1'b0; Cin = 1'b0; Less = 1'b0; ALUop = 3'b010; // 0 0 0
#`DELAY;

input1 = 1'b0; input2 = 1'b0; Cin = 1'b1; Less = 1'b0; ALUop = 3'b010; // 0 0 1
#`DELAY;

input1 = 1'b0; input2 = 1'b1; Cin = 1'b0; Less = 1'b0; ALUop = 3'b010; // 0 1 0
#`DELAY;

input1 = 1'b0; input2 = 1'b1; Cin = 1'b1; Less = 1'b0; ALUop = 3'b010; // 0 1 1
#`DELAY;

 
input1 = 1'b1; input2 = 1'b0; Cin = 1'b0; Less = 1'b0; ALUop = 3'b010; // 1 0 0
#`DELAY;

input1 = 1'b1; input2 = 1'b0; Cin = 1'b1; Less = 1'b0; ALUop = 3'b010; // 1 0 1
#`DELAY;

input1 = 1'b1; input2 = 1'b1; Cin = 1'b0; Less = 1'b0; ALUop = 3'b010; // 1 1 0
#`DELAY;

input1 = 1'b1; input2 = 1'b1; Cin = 1'b1; Less = 1'b0; ALUop = 3'b010; // 1 1 1
#`DELAY;


// for SUBTRACTION operation
input1 = 1'b0; input2 = 1'b0; Cin = 1'b1; Less = 1'b0; ALUop = 3'b110; // 0 0 0
#`DELAY;

input1 = 1'b0; input2 = 1'b1; Cin = 1'b1; Less = 1'b0; ALUop = 3'b110; // 0 0 1
#`DELAY;

input1 = 1'b1; input2 = 1'b0; Cin = 1'b1; Less = 1'b0; ALUop = 3'b110; // 0 1 0
#`DELAY;

input1 = 1'b1; input2 = 1'b1; Cin = 1'b1; Less = 1'b0; ALUop = 3'b110; // 0 1 1
#`DELAY;


end
 
 
initial
begin
$monitor(" ALUop: %3b,input1 = %1b, input2 = %1b, Cin = %1b result = %1b, Cout = %1b, ", ALUop, input1, input2, Cin, result, Cout );
end
 
endmodule
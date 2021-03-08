`define DELAY 20
module ALU32bit_testbench();
 
reg [31:0] I1, I2 ;
reg Cin ;
reg [2:0] ALUop ;
wire Z, V, Cout ;
wire [31:0] Output ;

ALU32bit test_ALU32bit( Z, V, Cout, Output, I1, I2, ALUop );

initial begin

I1 = 32'b0000_0000_0000_0000_0000_0000_0000_0000; I2 = 32'b0000_1111_0000_1111_0000_1111_0000_0000; Cin = 1'b0; ALUop = 3'b000;  // 0 0 0
#`DELAY;

I1 = 32'b0000_1111_0000_1111_0000_0000_0000_0000; I2 = 32'b0000_1111_0000_1111_0000_1111_0000_0000; Cin = 1'b0; ALUop = 3'b000;  // 0 0 0
#`DELAY;

I1 = 32'b0000_0000_1111_0000_0000_0000_0000_0000; I2 = 32'b0000_1111_0000_1111_0000_1111_0000_0000; Cin = 1'b0; ALUop = 3'b001;  // 0 0 1
#`DELAY;

I1 = 32'b0000_0000_0000_0000_0000_0000_0000_0011; I2 = 32'b0000_0000_0000_1111_0000_1111_0000_0000; Cin = 1'b0; ALUop = 3'b010;  // 0 1 0
#`DELAY;

I1 = 32'b0000_0000_0000_0000_0000_0000_0000_0100; I2 = 32'b0000_0000_0000_0000_0000_0000_0000_0010; Cin = 1'b0; ALUop = 3'b110;  // 1 1 0
#`DELAY;

I1 = 32'b0111_1111_1111_1111_1111_1111_1111_0000; I2 = 32'b0111_0000_0000_0000_1111_0000_0000_0010; Cin = 1'b0; ALUop = 3'b010;  // 0 1 0 overflow
#`DELAY;

I1 = 32'b0000_0000_0000_0000_0000_0000_0000_0100; I2 = 32'b0000_0000_0000_0000_0000_0000_0000_0010; Cin = 1'b0; ALUop = 3'b111;  // 1 1 1 I1>I2
#`DELAY;

I1 = 32'b0000_0000_0000_0000_0000_0000_0000_0010; I2 = 32'b0000_0000_0000_0000_0000_0000_0000_0100; Cin = 1'b0; ALUop = 3'b110;  // 1 1 0 
#`DELAY;

I1 = 32'b0000_0000_0000_0000_0000_0000_0000_0010; I2 = 32'b0000_0000_0000_0000_0000_0000_0000_0100; Cin = 1'b0; ALUop = 3'b111;  // 1 1 1 I1<I2
#`DELAY;
end
 
 
initial
begin
$monitor("time = %2d, ALUop =%3b, I1=%32b, I2=%32b, result=%32b, Cout=%1b, overflow=%1b, Z=%1b,", $time, ALUop, I1, I2, Output, Cout, V, Z  );
end
 
 
endmodule
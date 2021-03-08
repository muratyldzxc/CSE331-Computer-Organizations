`define DELAY 20
module _xor_testbench(); 
reg a, b;
wire sum;

_xor test_xor (sum, a, b);

initial begin
a = 1'b0; b = 1'b0;
#`DELAY;
a = 1'b1; b = 1'b0;
#`DELAY;
a = 1'b0; b = 1'b1;
#`DELAY;
a = 1'b1; b = 1'b1;
end
 
 
initial
begin
$monitor("time = %2d, a =%1b, b=%1b, result=%1b", $time, a, b, sum);
end
 
endmodule
`define DELAY 20
module mux32bit_2_1_testbench(); 
reg [31:0]I0, I1 ; 
reg S0;
wire [31:0] Q;

mux32bit_2_1 text_mux32bit_2_1 ( Q, S0, I1, I0 );

initial begin

S0 = 1'b0; I1 = 32'd32; I0 = 32'd35;
#`DELAY;
S0 = 1'b0; I1 = 32'd35; I0 = 32'd64;
#`DELAY;
S0 = 1'b1; I1 = 32'd32; I0 = 32'd35;
#`DELAY;
S0 = 1'b1; I1 = 32'd35; I0 = 32'd64;
#`DELAY;


end
 
 
initial
begin
$monitor("time = %2d, S0 = %1b, I1 = %2d, I0 = %2d, Q = %2d", $time, S0, I1, I0, Q );
end
 
endmodule
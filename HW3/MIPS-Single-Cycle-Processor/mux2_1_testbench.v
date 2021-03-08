`define DELAY 20
module mux2_1_testbench(); 
reg I0, I1, S0;
wire Q;

mux2_1 text_mux2_1 ( Q, S0, I1, I0 );

initial begin

S0 = 1'b0; I1 = 1'b0; I0 = 1'b0;
#`DELAY;
S0 = 1'b0; I1 = 1'b0; I0 = 1'b1;
#`DELAY;
S0 = 1'b1; I1 = 1'b1; I0 = 1'b0;
#`DELAY;
S0 = 1'b1; I1 = 1'b0; I0 = 1'b1;
#`DELAY;


end
 
 
initial
begin
$monitor("time = %2d, S0 = %1b, I1 = %1b, I0 = %1b, Q = %1b", $time, S0, I1, I0, Q );
end
 
endmodule
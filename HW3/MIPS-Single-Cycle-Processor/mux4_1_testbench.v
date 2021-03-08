`define DELAY 20
module mux4_1_testbench(); 
reg I0, I1, I2, I3, S0, S1;
wire Q;

mux4_1 text_mux4_1 ( Q, S1, S0, I3, I2, I1, I0 );

initial begin

S1 = 1'b0; S0 = 1'b0; I3 = 1'b1; I2 = 1'b0; I1 = 1'b0; I0 = 1'b0;
#`DELAY;
S1 = 1'b0; S0 = 1'b1; I3 = 1'b0; I2 = 1'b1; I1 = 1'b1; I0 = 1'b0;
#`DELAY;
S1 = 1'b1; S0 = 1'b0; I3 = 1'b0; I2 = 1'b0; I1 = 1'b1; I0 = 1'b0;
#`DELAY;
S1 = 1'b1; S0 = 1'b1; I3 = 1'b1; I2 = 1'b0; I1 = 1'b0; I0 = 1'b1;

#`DELAY;
S1 = 1'b0; S0 = 1'b0; I3 = 1'b1; I2 = 1'b1; I1 = 1'b1; I0 = 1'b0;
#`DELAY;
S1 = 1'b0; S0 = 1'b1; I3 = 1'b0; I2 = 1'b0; I1 = 1'b0; I0 = 1'b0;
#`DELAY;
S1 = 1'b1; S0 = 1'b0; I3 = 1'b0; I2 = 1'b0; I1 = 1'b0; I0 = 1'b0;
#`DELAY;
S1 = 1'b1; S0 = 1'b1; I3 = 1'b0; I2 = 1'b1; I1 = 1'b1; I0 = 1'b1;
#`DELAY;

end
 
 
initial
begin
$monitor("time = %2d, S1 = %1b, S0 = %1b, I3 = %1b, I2 = %1b, I1 = %1b, I0 = %1b, Q = %1b", $time, S1, S0, I3, I2, I1, I0, Q );
end
 
endmodule
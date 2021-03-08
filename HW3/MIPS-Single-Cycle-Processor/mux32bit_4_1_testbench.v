`define DELAY 20
module mux32bit_4_1_testbench(); 
reg [31:0] I3, I2, I0, I1 ; 
reg S1, S0;
wire [31:0] Q;

mux32bit_4_1 text_mux32bit_4_1 ( Q, S1, S0, I3, I2, I1, I0 );

initial begin

 S1 = 1'b0; S0 = 1'b0; I3 =32'd20; I2= 32'd12; I1 = 32'd32; I0 = 32'd35;
#`DELAY;
 S1 = 1'b0; S0 = 1'b1; I3 =32'd20; I2= 32'd12; I1 = 32'd32; I0 = 32'd35;
#`DELAY;
 S1 = 1'b1; S0 = 1'b0; I3 =32'd20; I2= 32'd12; I1 = 32'd32; I0 = 32'd35;
#`DELAY;
 S1 = 1'b1; S0 = 1'b1; I3 =32'd20; I2= 32'd12; I1 = 32'd32; I0 = 32'd35;
#`DELAY;


end
 
 
initial
begin
$monitor("time = %2d, S1 = %1b  S0 = %1b, I3 = %2d, I2 = %2d, I1 = %2d, I0 = %2d, Q = %2d", $time, S1, S0, I3, I2, I1, I0, Q );
end
 
endmodule
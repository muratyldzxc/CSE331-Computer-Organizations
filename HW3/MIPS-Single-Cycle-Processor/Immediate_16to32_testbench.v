`define DELAY 20
module Immediate_16to32_testbench();
 
reg [15:0] Imm_16bit ;
wire [31:0] extended_immediate_32bit ;

Immediate_16to32 test_Immediate_16to32( extended_immediate_32bit, Imm_16bit );

initial begin

Imm_16bit = 16'b0111_0000_0110_0110;
#`DELAY;
Imm_16bit = 16'b0000_0000_0000_0000;
#`DELAY;
Imm_16bit = 16'b1111_1111_1110_1111;
#`DELAY;
end
 
 
initial
begin
$monitor(" Imm_16bit =              %16b\n extended_immediate_32bit=%32b ", Imm_16bit, extended_immediate_32bit  );

end
 
endmodule
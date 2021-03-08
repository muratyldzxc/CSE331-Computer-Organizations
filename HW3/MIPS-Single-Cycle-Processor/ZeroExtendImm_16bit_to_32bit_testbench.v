`define DELAY 20
module ZeroExtendImm_16bit_to_32bit_testbench();
 
reg [15:0] Imm_16bit ;
wire [31:0] ZeroExtImm_32bit ;

ZeroExtendImm_16bit_to_32bit test_ZeroExtendImm_16bit_to_32bit( ZeroExtImm_32bit, Imm_16bit );

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
$monitor(" Imm_16bit =                      %16b\n ZeroExtImm_32bit=%32b ", Imm_16bit, ZeroExtImm_32bit  );

end
 
endmodule
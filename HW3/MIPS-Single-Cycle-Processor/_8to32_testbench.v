`define DELAY 20
module _8to32_testbench();
 
reg [7:0] _8bit ;
wire [31:0] extended_32bit ;

_8to32 test_8to32( extended_32bit, _8bit );

initial begin

_8bit = 8'b0110_0110;
#`DELAY;
_8bit = 8'b0111_0000;
#`DELAY;
_8bit = 8'b1110_1111;
#`DELAY;
end
 
 
initial
begin
$monitor(" 8bit =                          %16b\n extended_32bit =%32b ", _8bit, extended_32bit  );

end
 
endmodule
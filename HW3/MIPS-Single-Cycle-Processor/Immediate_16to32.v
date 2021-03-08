module Immediate_16to32( extended_immediate_32bit, Imm_16bit);
	
	input [15:0] Imm_16bit ;
	output [31:0] extended_immediate_32bit ;
// 15:0	
and extended_immediate_bit_0(  extended_immediate_32bit[0],  Imm_16bit[0], 1'b0 ) ; // put zero's at the end of th immediate[15:0]
and extended_immediate_bit_1(  extended_immediate_32bit[1],  Imm_16bit[1], 1'b0 ) ;
and extended_immediate_bit_2(  extended_immediate_32bit[2],  Imm_16bit[2], 1'b0 ) ;
and extended_immediate_bit_3(  extended_immediate_32bit[3],  Imm_16bit[3], 1'b0 ) ;

and extended_immediate_bit_4(  extended_immediate_32bit[4],  Imm_16bit[4], 1'b0 ) ;
and extended_immediate_bit_5(  extended_immediate_32bit[5],  Imm_16bit[5], 1'b0 ) ;
and extended_immediate_bit_6(  extended_immediate_32bit[6],  Imm_16bit[6], 1'b0 ) ;
and extended_immediate_bit_7(  extended_immediate_32bit[7],  Imm_16bit[7], 1'b0 ) ;

and extended_immediate_bit_8(  extended_immediate_32bit[8],  Imm_16bit[8], 1'b0 ) ;
and extended_immediate_bit_9(  extended_immediate_32bit[9],  Imm_16bit[9], 1'b0 ) ;
and extended_immediate_bit_10( extended_immediate_32bit[10], Imm_16bit[10], 1'b0 ) ;
and extended_immediate_bit_11( extended_immediate_32bit[11], Imm_16bit[11], 1'b0 ) ;

and extended_immediate_bit_12( extended_immediate_32bit[12], Imm_16bit[12], 1'b0 ) ;
and extended_immediate_bit_13( extended_immediate_32bit[13], Imm_16bit[13], 1'b0 ) ;
and extended_immediate_bit_14( extended_immediate_32bit[14], Imm_16bit[14], 1'b0 ) ;
and extended_immediate_bit_15( extended_immediate_32bit[15], Imm_16bit[15], 1'b0 ) ;
	
// 31:16
or extended_immediate_bit_16( extended_immediate_32bit[16], Imm_16bit[0], 1'b0 ) ;// give it self
or extended_immediate_bit_17( extended_immediate_32bit[17], Imm_16bit[1], 1'b0 ) ;
or extended_immediate_bit_18( extended_immediate_32bit[18], Imm_16bit[2], 1'b0 ) ;
or extended_immediate_bit_19( extended_immediate_32bit[19], Imm_16bit[3], 1'b0 ) ;

or extended_immediate_bit_20( extended_immediate_32bit[20], Imm_16bit[4], 1'b0 ) ;
or extended_immediate_bit_21( extended_immediate_32bit[21], Imm_16bit[5], 1'b0 ) ;
or extended_immediate_bit_22( extended_immediate_32bit[22], Imm_16bit[6], 1'b0 ) ;
or extended_immediate_bit_23( extended_immediate_32bit[23], Imm_16bit[7], 1'b0 ) ;

or extended_immediate_bit_24( extended_immediate_32bit[24], Imm_16bit[8], 1'b0 ) ;
or extended_immediate_bit_25( extended_immediate_32bit[25], Imm_16bit[9], 1'b0 ) ;
or extended_immediate_bit_26( extended_immediate_32bit[26], Imm_16bit[10], 1'b0 ) ;
or extended_immediate_bit_27( extended_immediate_32bit[27], Imm_16bit[11], 1'b0 ) ;

or extended_immediate_bit_28( extended_immediate_32bit[28], Imm_16bit[12], 1'b0 ) ;
or extended_immediate_bit_29( extended_immediate_32bit[29], Imm_16bit[13], 1'b0 ) ;
or extended_immediate_bit_30( extended_immediate_32bit[30], Imm_16bit[14], 1'b0 ) ;
or extended_immediate_bit_31( extended_immediate_32bit[31], Imm_16bit[15], 1'b0 ) ;


endmodule

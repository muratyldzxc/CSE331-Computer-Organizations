module SignExtendImm_16bit_to_32bit( SignExtImm_32bit , Imm_16bit );

input [15:0] Imm_16bit ;
output [31:0] SignExtImm_32bit ;

or SignExtImm_bit_0(  SignExtImm_32bit[0],  Imm_16bit[0], 1'b0 ) ; // give it self
or SignExtImm_bit_1(  SignExtImm_32bit[1],  Imm_16bit[1], 1'b0 ) ;
or SignExtImm_bit_2(  SignExtImm_32bit[2],  Imm_16bit[2], 1'b0 ) ;
or SignExtImm_bit_3(  SignExtImm_32bit[3],  Imm_16bit[3], 1'b0 ) ;

or SignExtImm_bit_4(  SignExtImm_32bit[4],  Imm_16bit[4], 1'b0 ) ;
or SignExtImm_bit_5(  SignExtImm_32bit[5],  Imm_16bit[5], 1'b0 ) ;
or SignExtImm_bit_6(  SignExtImm_32bit[6],  Imm_16bit[6], 1'b0 ) ;
or SignExtImm_bit_7(  SignExtImm_32bit[7],  Imm_16bit[7], 1'b0 ) ;

or SignExtImm_bit_8(  SignExtImm_32bit[8],  Imm_16bit[8], 1'b0 ) ;
or SignExtImm_bit_9(  SignExtImm_32bit[9],  Imm_16bit[9], 1'b0 ) ;
or SignExtImm_bit_10( SignExtImm_32bit[10], Imm_16bit[10], 1'b0 ) ;
or SignExtImm_bit_11( SignExtImm_32bit[11], Imm_16bit[11], 1'b0 ) ;

or SignExtImm_bit_12( SignExtImm_32bit[12], Imm_16bit[12], 1'b0 ) ;
or SignExtImm_bit_13( SignExtImm_32bit[13], Imm_16bit[13], 1'b0 ) ;
or SignExtImm_bit_14( SignExtImm_32bit[14], Imm_16bit[14], 1'b0 ) ;
or SignExtImm_bit_15( SignExtImm_32bit[15], Imm_16bit[15], 1'b0 ) ;
// 31:16
or SignExtImm_bit_16( SignExtImm_32bit[16], Imm_16bit[15], 1'b0 ) ;
or SignExtImm_bit_17( SignExtImm_32bit[17], Imm_16bit[15], 1'b0 ) ;
or SignExtImm_bit_18( SignExtImm_32bit[18], Imm_16bit[15], 1'b0 ) ;
or SignExtImm_bit_19( SignExtImm_32bit[19], Imm_16bit[15], 1'b0 ) ;

or SignExtImm_bit_20( SignExtImm_32bit[20], Imm_16bit[15], 1'b0 ) ;
or SignExtImm_bit_21( SignExtImm_32bit[21], Imm_16bit[15], 1'b0 ) ;
or SignExtImm_bit_22( SignExtImm_32bit[22], Imm_16bit[15], 1'b0 ) ;
or SignExtImm_bit_23( SignExtImm_32bit[23], Imm_16bit[15], 1'b0 ) ;

or SignExtImm_bit_24( SignExtImm_32bit[24], Imm_16bit[15], 1'b0 ) ;
or SignExtImm_bit_25( SignExtImm_32bit[25], Imm_16bit[15], 1'b0 ) ;
or SignExtImm_bit_26( SignExtImm_32bit[26], Imm_16bit[15], 1'b0 ) ;
or SignExtImm_bit_27( SignExtImm_32bit[27], Imm_16bit[15], 1'b0 ) ;

or SignExtImm_bit_28( SignExtImm_32bit[28], Imm_16bit[15], 1'b0 ) ;
or SignExtImm_bit_29( SignExtImm_32bit[29], Imm_16bit[15], 1'b0 ) ;
or SignExtImm_bit_30( SignExtImm_32bit[30], Imm_16bit[15], 1'b0 ) ;
or SignExtImm_bit_31( SignExtImm_32bit[31], Imm_16bit[15], 1'b0 ) ;


endmodule

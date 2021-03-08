module ZeroExtendImm_16bit_to_32bit( ZeroExtImm_32bit , Imm_16bit );

input [15:0] Imm_16bit ;
output [31:0] ZeroExtImm_32bit ;

or ZeroExtImm_bit_0(  ZeroExtImm_32bit[0],  Imm_16bit[0], 1'b0 ) ; // give it self
or ZeroExtImm_bit_1(  ZeroExtImm_32bit[1],  Imm_16bit[1], 1'b0 ) ;
or ZeroExtImm_bit_2(  ZeroExtImm_32bit[2],  Imm_16bit[2], 1'b0 ) ;
or ZeroExtImm_bit_3(  ZeroExtImm_32bit[3],  Imm_16bit[3], 1'b0 ) ;

or ZeroExtImm_bit_4(  ZeroExtImm_32bit[4],  Imm_16bit[4], 1'b0 ) ;
or ZeroExtImm_bit_5(  ZeroExtImm_32bit[5],  Imm_16bit[5], 1'b0 ) ;
or ZeroExtImm_bit_6(  ZeroExtImm_32bit[6],  Imm_16bit[6], 1'b0 ) ;
or ZeroExtImm_bit_7(  ZeroExtImm_32bit[7],  Imm_16bit[7], 1'b0 ) ;

or ZeroExtImm_bit_8(  ZeroExtImm_32bit[8],  Imm_16bit[8], 1'b0 ) ;
or ZeroExtImm_bit_9(  ZeroExtImm_32bit[9],  Imm_16bit[9], 1'b0 ) ;
or ZeroExtImm_bit_10( ZeroExtImm_32bit[10], Imm_16bit[10], 1'b0 ) ;
or ZeroExtImm_bit_11( ZeroExtImm_32bit[11], Imm_16bit[11], 1'b0 ) ;

or ZeroExtImm_bit_12( ZeroExtImm_32bit[12], Imm_16bit[12], 1'b0 ) ;
or ZeroExtImm_bit_13( ZeroExtImm_32bit[13], Imm_16bit[13], 1'b0 ) ;
or ZeroExtImm_bit_14( ZeroExtImm_32bit[14], Imm_16bit[14], 1'b0 ) ;
or ZeroExtImm_bit_15( ZeroExtImm_32bit[15], Imm_16bit[15], 1'b0 ) ;
// 31:16
and ZeroExtImm_bit_16( ZeroExtImm_32bit[16], Imm_16bit[15], 1'b0 ) ;
and ZeroExtImm_bit_17( ZeroExtImm_32bit[17], Imm_16bit[15], 1'b0 ) ;
and ZeroExtImm_bit_18( ZeroExtImm_32bit[18], Imm_16bit[15], 1'b0 ) ;
and ZeroExtImm_bit_19( ZeroExtImm_32bit[19], Imm_16bit[15], 1'b0 ) ;

and ZeroExtImm_bit_20( ZeroExtImm_32bit[20], Imm_16bit[15], 1'b0 ) ;
and ZeroExtImm_bit_21( ZeroExtImm_32bit[21], Imm_16bit[15], 1'b0 ) ;
and ZeroExtImm_bit_22( ZeroExtImm_32bit[22], Imm_16bit[15], 1'b0 ) ;
and ZeroExtImm_bit_23( ZeroExtImm_32bit[23], Imm_16bit[15], 1'b0 ) ;

and ZeroExtImm_bit_24( ZeroExtImm_32bit[24], Imm_16bit[15], 1'b0 ) ;
and ZeroExtImm_bit_25( ZeroExtImm_32bit[25], Imm_16bit[15], 1'b0 ) ;
and ZeroExtImm_bit_26( ZeroExtImm_32bit[26], Imm_16bit[15], 1'b0 ) ;
and ZeroExtImm_bit_27( ZeroExtImm_32bit[27], Imm_16bit[15], 1'b0 ) ;

and ZeroExtImm_bit_28( ZeroExtImm_32bit[28], Imm_16bit[15], 1'b0 ) ;
and ZeroExtImm_bit_29( ZeroExtImm_32bit[29], Imm_16bit[15], 1'b0 ) ;
and ZeroExtImm_bit_30( ZeroExtImm_32bit[30], Imm_16bit[15], 1'b0 ) ;
and ZeroExtImm_bit_31( ZeroExtImm_32bit[31], Imm_16bit[15], 1'b0 ) ;


endmodule

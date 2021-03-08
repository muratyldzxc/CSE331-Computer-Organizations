module _8to32( extended_32bit , _8bit );

input [7:0] _8bit ;
output [31:0] extended_32bit ;

// 7:0
or extended_bit_0(  extended_32bit[0],  _8bit[0], 1'b0 ) ; // give it self
or extended_bit_1(  extended_32bit[1],  _8bit[1], 1'b0 ) ;
or extended_bit_2(  extended_32bit[2],  _8bit[2], 1'b0 ) ;
or extended_bit_3(  extended_32bit[3],  _8bit[3], 1'b0 ) ;

or extended_bit_4(  extended_32bit[4],  _8bit[4], 1'b0 ) ;
or extended_bit_5(  extended_32bit[5],  _8bit[5], 1'b0 ) ;
or extended_bit_6(  extended_32bit[6],  _8bit[6], 1'b0 ) ;
or extended_bit_7(  extended_32bit[7],  _8bit[7], 1'b0 ) ;

// 31:8
and extended_bit_8(  extended_32bit[8],  1'b0, 1'b0 ) ;
and extended_bit_9(  extended_32bit[9],  1'b0, 1'b0 ) ;
and extended_bit_10( extended_32bit[10], 1'b0, 1'b0 ) ;
and extended_bit_11( extended_32bit[11], 1'b0, 1'b0 ) ;

and extended_bit_12( extended_32bit[12], 1'b0, 1'b0 ) ;
and extended_bit_13( extended_32bit[13], 1'b0, 1'b0 ) ;
and extended_bit_14( extended_32bit[14], 1'b0, 1'b0 ) ;
and extended_bit_15( extended_32bit[15], 1'b0, 1'b0 ) ;

and extended_bit_16( extended_32bit[16], 1'b0, 1'b0 ) ;
and extended_bit_17( extended_32bit[17], 1'b0, 1'b0 ) ;
and extended_bit_18( extended_32bit[18], 1'b0, 1'b0 ) ;
and extended_bit_19( extended_32bit[19], 1'b0, 1'b0 ) ;

and extended_bit_20( extended_32bit[20], 1'b0, 1'b0 ) ;
and extended_bit_21( extended_32bit[21], 1'b0, 1'b0 ) ;
and extended_bit_22( extended_32bit[22], 1'b0, 1'b0 ) ;
and extended_bit_23( extended_32bit[23], 1'b0, 1'b0 ) ;

and extended_bit_24( extended_32bit[24], 1'b0, 1'b0 ) ;
and extended_bit_25( extended_32bit[25], 1'b0, 1'b0 ) ;
and extended_bit_26( extended_32bit[26], 1'b0, 1'b0 ) ;
and extended_bit_27( extended_32bit[27], 1'b0, 1'b0 ) ;

and extended_bit_28( extended_32bit[28], 1'b0, 1'b0 ) ;
and extended_bit_29( extended_32bit[29], 1'b0, 1'b0 ) ;
and extended_bit_30( extended_32bit[30], 1'b0, 1'b0 ) ;
and extended_bit_31( extended_32bit[31], 1'b0, 1'b0 ) ;


endmodule

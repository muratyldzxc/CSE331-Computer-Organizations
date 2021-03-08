module mux32bit_4_1( result, S1, S0, I3, I2, I1, I0);

input [31:0] I3, I2, I0, I1 ;
input S0, S1 ;

output [31:0] result ;

mux4_1 output_0( result[0],  S1,  S0, I3[0], I2[0], I1[0], I0[0] ) ; 
mux4_1 output_1( result[1],  S1,  S0, I3[1], I2[1], I1[1], I0[1] ) ; 
mux4_1 output_2( result[2],  S1,  S0, I3[2], I2[2], I1[2], I0[2] ) ; 
mux4_1 output_3( result[3],  S1,  S0, I3[3], I2[3], I1[3], I0[3] ) ;

mux4_1 output_4( result[4],  S1,  S0, I3[4], I2[4], I1[4], I0[4] ) ; 
mux4_1 output_5( result[5],  S1,  S0, I3[5], I2[5], I1[5], I0[5] ) ; 
mux4_1 output_6( result[6],  S1,  S0, I3[6], I2[6], I1[6], I0[6] ) ; 
mux4_1 output_7( result[7],  S1,  S0, I3[7], I2[7], I1[7], I0[7] ) ;

mux4_1 output_8( result[8],  S1,  S0, I3[8], I2[8], I1[8],  I0[8] ) ; 
mux4_1 output_9( result[9],  S1,  S0, I3[9], I2[9], I1[9],  I0[9] ) ; 
mux4_1 output_10( result[10],S1,  S0, I3[10], I2[10], I1[10], I0[10] ) ; 
mux4_1 output_11( result[11],S1,  S0, I3[11], I2[11], I1[11], I0[11] ) ; 

mux4_1 output_12( result[12],S1,  S0, I3[12], I2[12], I1[12], I0[12] ) ; 
mux4_1 output_13( result[13],S1,  S0, I3[13], I2[13], I1[13], I0[13] ) ; 
mux4_1 output_14( result[14],S1,  S0, I3[14], I2[14], I1[14], I0[14] ) ; 
mux4_1 output_15( result[15],S1,  S0, I3[15], I2[15], I1[15], I0[15] ) ;

mux4_1 output_16( result[16],S1,  S0, I3[16], I2[16], I1[16], I0[16] ) ; 
mux4_1 output_17( result[17],S1,  S0, I3[17], I2[17], I1[17], I0[17] ) ; 
mux4_1 output_18( result[18],S1,  S0, I3[18], I2[18], I1[18], I0[18] ) ; 
mux4_1 output_19( result[19],S1,  S0, I3[19], I2[19], I1[19], I0[19] ) ;

mux4_1 output_20( result[20],S1,  S0, I3[20], I2[20], I1[20], I0[20] ) ; 
mux4_1 output_21( result[21],S1,  S0, I3[21], I2[21], I1[21], I0[21] ) ; 
mux4_1 output_22( result[22],S1,  S0, I3[22], I2[22], I1[22], I0[22] ) ; 
mux4_1 output_23( result[23],S1,  S0, I3[23], I2[23], I1[23], I0[23] ) ;

mux4_1 output_24( result[24],S1,  S0, I3[24], I2[24], I1[24], I0[24] ) ; 
mux4_1 output_25( result[25],S1,  S0, I3[25], I2[25], I1[25], I0[25] ) ; 
mux4_1 output_26( result[26],S1,  S0, I3[26], I2[26], I1[26], I0[26] ) ; 
mux4_1 output_27( result[27],S1,  S0, I3[27], I2[27], I1[27], I0[27] ) ; 

mux4_1 output_28( result[28],S1,  S0, I3[28], I2[28], I1[28], I0[28] ) ; 
mux4_1 output_29( result[29],S1,  S0, I3[29], I2[29], I1[29], I0[29] ) ; 
mux4_1 output_30( result[30],S1,  S0, I3[30], I2[30], I1[30], I0[30] ) ; 
mux4_1 output_31( result[31],S1,  S0, I3[31], I2[31], I1[31], I0[31] ) ;  



endmodule


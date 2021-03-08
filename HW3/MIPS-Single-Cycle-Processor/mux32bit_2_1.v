module mux32bit_2_1( result, S0, I1, I0);

input [31:0] I0, I1 ;
input S0 ;

output [31:0] result ;

mux2_1 output_0( result[0],    S0, I1[0], I0[0] ) ; 
mux2_1 output_1( result[1],    S0, I1[1], I0[1] ) ; 
mux2_1 output_2( result[2],    S0, I1[2], I0[2] ) ; 
mux2_1 output_3( result[3],    S0, I1[3], I0[3] ) ;

mux2_1 output_4( result[4],    S0, I1[4], I0[4] ) ; 
mux2_1 output_5( result[5],    S0, I1[5], I0[5] ) ; 
mux2_1 output_6( result[6],    S0, I1[6], I0[6] ) ; 
mux2_1 output_7( result[7],    S0, I1[7], I0[7] ) ;

mux2_1 output_8( result[8],    S0, I1[8],  I0[8] ) ; 
mux2_1 output_9( result[9],    S0, I1[9],  I0[9] ) ; 
mux2_1 output_10( result[10],  S0, I1[10], I0[10] ) ; 
mux2_1 output_11( result[11],  S0, I1[11], I0[11] ) ; 

mux2_1 output_12( result[12],  S0, I1[12], I0[12] ) ; 
mux2_1 output_13( result[13],  S0, I1[13], I0[13] ) ; 
mux2_1 output_14( result[14],  S0, I1[14], I0[14] ) ; 
mux2_1 output_15( result[15],  S0, I1[15], I0[15] ) ;

mux2_1 output_16( result[16],  S0, I1[16], I0[16] ) ; 
mux2_1 output_17( result[17],  S0, I1[17], I0[17] ) ; 
mux2_1 output_18( result[18],  S0, I1[18], I0[18] ) ; 
mux2_1 output_19( result[19],  S0, I1[19], I0[19] ) ;

mux2_1 output_20( result[20],  S0, I1[20], I0[20] ) ; 
mux2_1 output_21( result[21],  S0, I1[21], I0[21] ) ; 
mux2_1 output_22( result[22],  S0, I1[22], I0[22] ) ; 
mux2_1 output_23( result[23],  S0, I1[23], I0[23] ) ;

mux2_1 output_24( result[24],  S0, I1[24],  I0[24] ) ; 
mux2_1 output_25( result[25],  S0, I1[25],  I0[25] ) ; 
mux2_1 output_26( result[26],  S0, I1[26], I0[26] ) ; 
mux2_1 output_27( result[27],  S0, I1[27], I0[27] ) ; 

mux2_1 output_28( result[28],  S0, I1[28], I0[28] ) ; 
mux2_1 output_29( result[29],  S0, I1[29], I0[29] ) ; 
mux2_1 output_30( result[30],  S0, I1[30], I0[30] ) ; 
mux2_1 output_31( result[31],  S0, I1[31], I0[31] ) ;  



endmodule


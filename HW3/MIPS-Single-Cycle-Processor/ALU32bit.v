module ALU32bit( Z, V, Cout, Output, I1, I2, ALUop );

input [31:0] I1, I2 ;

output Z, V, Cout ;
input [2:0] ALUop ;
output [31:0] Output ;
wire [31:0] Couts ;
wire set,set_Cout, set_output, ignore_Cout, ignore_output, Temp_Z ;


ALU1bit for_bit_0( Couts[0], ignore_output, I1[0], I2[0], ALUop, ALUop[2], 1'b0 ) , // 1
		  for_bit_1( Couts[1], Output[1], I1[1], I2[1], ALUop, Couts[0], 1'b0 ) , // 2
		  for_bit_2( Couts[2], Output[2], I1[2], I2[2], ALUop, Couts[1], 1'b0 ) , // 3
		  for_bit_3( Couts[3], Output[3], I1[3], I2[3], ALUop, Couts[2], 1'b0 ) ,
		  
		  for_bit_4( Couts[4], Output[4], I1[4], I2[4], ALUop, Couts[3], 1'b0 ) ,
		  for_bit_5( Couts[5], Output[5], I1[5], I2[5], ALUop, Couts[4], 1'b0 ) ,
		  for_bit_6( Couts[6], Output[6], I1[6], I2[6], ALUop, Couts[5], 1'b0 ) ,
		  for_bit_7( Couts[7], Output[7], I1[7], I2[7], ALUop, Couts[6], 1'b0 ) ,
		  
		  for_bit_8( Couts[8], Output[8], I1[8], I2[8], ALUop, Couts[7], 1'b0 ) ,
		  for_bit_9( Couts[9], Output[9], I1[9], I2[9], ALUop, Couts[8], 1'b0 ) ,
		  for_bit_10( Couts[10], Output[10], I1[10], I2[10], ALUop, Couts[9], 1'b0 ) ,
		  for_bit_11( Couts[11], Output[11], I1[11], I2[11], ALUop, Couts[10], 1'b0 ) ,
		  
		  for_bit_12( Couts[12], Output[12], I1[12], I2[12], ALUop, Couts[11], 1'b0 ) ,
		  for_bit_13( Couts[13], Output[13], I1[13], I2[13], ALUop, Couts[12], 1'b0 ) ,
		  for_bit_14( Couts[14], Output[14], I1[14], I2[14], ALUop, Couts[13], 1'b0 ) ,
		  for_bit_15( Couts[15], Output[15], I1[15], I2[15], ALUop, Couts[14], 1'b0 ) ,
		  
		  for_bit_16( Couts[16], Output[16], I1[16], I2[16], ALUop, Couts[15], 1'b0 ) ,
		  for_bit_17( Couts[17], Output[17], I1[17], I2[17], ALUop, Couts[16], 1'b0 ) ,
		  for_bit_18( Couts[18], Output[18], I1[18], I2[18], ALUop, Couts[17], 1'b0 ) ,
		  for_bit_19( Couts[19], Output[19], I1[19], I2[19], ALUop, Couts[18], 1'b0 ) ,
		  
		  for_bit_20( Couts[20], Output[20], I1[20], I2[20], ALUop, Couts[19], 1'b0 ) ,
		  for_bit_21( Couts[21], Output[21], I1[21], I2[21], ALUop, Couts[20], 1'b0 ) ,
		  for_bit_22( Couts[22], Output[22], I1[22], I2[22], ALUop, Couts[21], 1'b0 ) ,
		  for_bit_23( Couts[23], Output[23], I1[23], I2[23], ALUop, Couts[22], 1'b0 ) ,
		  	  
		  for_bit_24( Couts[24], Output[24], I1[24], I2[24], ALUop, Couts[23], 1'b0 ) ,
		  for_bit_25( Couts[25], Output[25], I1[25], I2[25], ALUop, Couts[24], 1'b0 ) ,
		  for_bit_26( Couts[26], Output[26], I1[26], I2[26], ALUop, Couts[25], 1'b0 ) ,
		  for_bit_27( Couts[27], Output[27], I1[27], I2[27], ALUop, Couts[26], 1'b0 ) ,
		  
		  for_bit_28( Couts[28], Output[28], I1[28], I2[28], ALUop, Couts[27], 1'b0 ) ,
		  for_bit_29( Couts[29], Output[29], I1[29], I2[29], ALUop, Couts[28], 1'b0 ) ,
		  for_bit_30( Couts[30], Output[30], I1[30], I2[30], ALUop, Couts[29], 1'b0 ) ,
		  for_bit_31( Couts[31], Output[31], I1[31], I2[31], ALUop, Couts[30], 1'b0 ) ;
		  
		  or find_cout32( Cout, 1'b0, Couts[31] ) ; // find Cout
		  
		  _xor check_overflow( V, Couts[30], Couts[31] ) ; // 4
		  
		  ALU1bit for_set_op( set_Cout, set_output, I1[31], I2[31], 3'b110, Couts[30], 1'b0 ) ; // 5
		  
		  _xor for_set( set, set_output, V ) ; // 6
		  
		  ALU1bit for_less( ignore_Cout, Output[0], I1[0], I2[0], ALUop, ALUop[2], set ) ; // 7
		  
		  or or_all_outputs( Temp_Z, Output[0], Output[1], Output[2], Output[3], Output[4], Output[5], Output[6], Output[7] 
						, Output[8], Output[9], Output[10], Output[11], Output[12], Output[13], Output[14], Output[15]
						, Output[16], Output[17], Output[18], Output[19], Output[20], Output[21], Output[22], Output[23] 		
						, Output[24], Output[25], Output[26], Output[27], Output[28], Output[29], Output[30], Output[31]
			 ) ;

			not get_Z( Z, Temp_Z ) ;			

endmodule


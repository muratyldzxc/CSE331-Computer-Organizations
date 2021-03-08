module mux4_1( result, S1, S0, I3, I2, I1, I0);

input I0, I1, I2, I3;
input S0, S1 ;

output result ;

wire not_S1, not_S0 ;
wire and_input0, and_input1, and_input2, and_input3 ;

not notS0( not_S0, S0 ) ; // 1
not notS1( not_S1, S1 ) ; // 2


and andInput0( and_input0, not_S1, not_S0, I0 ) ; // 3

and andInput1( and_input1, not_S1, S0, I1 ) ;  // 4

and andInput2( and_input2, S1, not_S0, I2 ) ; // 5

and andInput3( and_input3, S1, S0, I3 ) ;  // 6

or create_result( result, and_input0, and_input1, and_input2, and_input3 ); // 7

endmodule


module mux2_1( result, S0, I1, I0);

input I0, I1 ;
input S0 ;

output result ;

wire not_S0 ;
wire and_input0, and_input1, not_and_input0, not_and_input1, andAllinput ;

not notS0( not_S0, S0 ) ; // 1



and andInput0( and_input0, not_S0, I0 ) ; // 3

and andInput1( and_input1, S0, I1 ) ;  // 4

not notandInput0( not_and_input0, and_input0 ) ;

not notandInput1( not_and_input1, and_input1 ) ;

and andAll( andAllinput, not_and_input0, not_and_input1 ) ;

not create_result( result, andAllinput ) ;

endmodule


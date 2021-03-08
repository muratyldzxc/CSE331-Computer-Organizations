module ALU1bit( Cout, result, input1, input2, ALUop, Cin, Less);

input input1, input2, Cin, Less;
input [2:0] ALUop ;

output Cout, result ;

wire after_xor, after_and1, after_or1, after_and2, after_and3, after_or2 ;
wire not_after_and1, not_after_and3 ; 
wire option_2 ; 

_xor decide_add_or_subtract( after_xor, ALUop[2], input2 ) ; // 1


// for option 0
and after_xor_and_two_Input( after_and1, input1, after_xor ) ; // 2

// for option 1
or after_xor_or_two_input( after_or1, after_xor, input1 ) ; // 3

// for option 2

not after_and1_not_it( not_after_and1, after_and1 ) ; // 4

and after_not_after_and1( after_and2, not_after_and1, after_or1 ) ; // 5

and after_after_and2( after_and3, after_and2, Cin ) ; // 6

not after_and3_not_it( not_after_and3, after_and3 ) ; // 7

or after_or_after_and2_Cin( after_or2, after_and2, Cin ) ; // 8

and result_of_addOrsubract( option_2, not_after_and3, after_or2 ) ; // 9

// for Cout
or result_of_Cout( Cout, after_and1, after_and3 ) ; // 10

// for selection

mux4_1 select( result, ALUop[1], ALUop[0], Less, option_2, after_or1, after_and1 ) ; // 11

endmodule

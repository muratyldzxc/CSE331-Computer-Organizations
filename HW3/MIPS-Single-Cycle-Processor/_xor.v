module _xor( result, input1, input2);

input input1, input2 ;
output result ;
wire notInput1 , notInput2, result_input1, result_input2 ;

not not_input1( notInput1, input1 ) ; // 2
not not_input2( notInput2, input2 ) ; // 1

and before_result1( result_input1, notInput1, input2 ) ; // 4
and before_result2( result_input2, notInput2, input1 ) ; // 3

or now_result( result, result_input1, result_input2);  // 5

endmodule


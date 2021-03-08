module Control_Unit( signal_RegWrite, signal_ALUSrc, signal_MemtoReg1, signal_MemtoReg2, signal_MemRead, signal_MemWrite, signal_sb, signal_sh, signal_sw, OpCode) ;
	
	input [5:0] OpCode ;
	output signal_RegWrite, signal_ALUSrc, signal_MemtoReg1, signal_MemtoReg2, signal_MemRead, signal_MemWrite, signal_sb, signal_sh, signal_sw ;
	wire [5:0] notOpCode ;
	wire lb, lbu, lh, lhu, lui, lw, sb, sh, sw ;
	
	not notOpCode_0( notOpCode[0], OpCode[0] ) ;
	not notOpCode_1( notOpCode[1], OpCode[1] ) ;
	not notOpCode_2( notOpCode[2], OpCode[2] ) ;
	not notOpCode_3( notOpCode[3], OpCode[3] ) ;
	not notOpCode_4( notOpCode[4], OpCode[4] ) ;
	not notOpCode_5( notOpCode[5], OpCode[5] ) ;
	
										// 1				0					0					0				1				1
	and for_lw_instruction( lw, OpCode[5], notOpCode[4], notOpCode[3], notOpCode[2], OpCode[1] , OpCode[0] ) ;
	
										// 1				0					1					0				1				1
	and for_sw_instruction( sw, OpCode[5], notOpCode[4], OpCode[3], notOpCode[2], OpCode[1] , OpCode[0] ) ;
	
											// 1				0					0					1				0				0
	and for_lbu_instruction( lbu, OpCode[5], notOpCode[4], notOpCode[3], OpCode[2], notOpCode[1] , notOpCode[0] ) ;
	
											// 1				0					0					1				0				1
	and for_lhu_instruction( lhu, OpCode[5], notOpCode[4], notOpCode[3], OpCode[2], notOpCode[1] , OpCode[0] ) ;
	
											// 1				0					1					0				0				1
	and for_sh_instruction( sh, OpCode[5], notOpCode[4], 	  OpCode[3],  notOpCode[2], notOpCode[1] , OpCode[0] ) ;
	
											// 1				0					1					0				0				0
	and for_sb_instruction( sb, OpCode[5], notOpCode[4], 	  OpCode[3],  notOpCode[2], notOpCode[1] , notOpCode[0] ) ;
	
											// 1				0					0					0				0				0
	and for_lb_instruction( lb, OpCode[5], notOpCode[4], notOpCode[3], notOpCode[2], notOpCode[1] , notOpCode[0] ) ;
	
											// 1				0					0					0				0				1
	and for_lh_instruction( lh, OpCode[5], notOpCode[4], notOpCode[3], notOpCode[2], notOpCode[1] , OpCode[0] ) ;
	
											// 0				0					1					1				1				1
	and for_lui_instruction( lui, notOpCode[5], notOpCode[4], OpCode[3], OpCode[2], OpCode[1] , OpCode[0] ) ;
	
	// if one of them is 1  it choose sign extend in mux
	or for_AluSrc( signal_ALUSrc, lbu, lhu, lw, sb, sh, sw ) ;
	
	// if one of them is 1  it  allows to writing registers
	or for_signal_RegWrite( signal_RegWrite, lw, lui, lb, lh, lbu, lhu ) ;
	
	// if one of them is 1  it  allows to writing data memory
	or for_signal_MemWrite( signal_MemWrite, sw, sb, sh ) ;
	
	// if one of them is 1  it  allows to writing registers
	or for_signal_MemRead( signal_MemRead, lw, lb, lh, lbu, lhu ) ;
	
	or for_signal_MemtoReg1( signal_MemtoReg1, lui, lh, lhu ) ;
	
	or for_signal_MemtoReg2( signal_MemtoReg2, lh, lhu, lb, lbu ) ;
	
	or for_signal_sb( signal_sb, sb, 1'b0 ) ;
	
	or for_signal_sh( signal_sh, sh, 1'b0 ) ;	
	
	or for_signal_sw( signal_sw, sw, 1'b0 ) ;	
	
endmodule
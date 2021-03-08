module MIPS_32bit( clock );

	input clock;
	
	// Program counter
	reg[31:0] PC = 32'b0;
	
	// Intruction
	wire [31:0] Instruction;
	
	// fields 
	wire [4:0] rs, rt ;
	wire [15:0] immediate;
	wire [5:0] OpCode;
	
	// Control signals
	wire signal_RegWrite, signal_ALUSrc, signal_MemtoReg1, signal_MemtoReg2, signal_MemRead, signal_MemWrite, signal_sb, signal_sh, signal_sw ;
	
	// Registers Unit inputs and outputs
	wire [31:0] Write_data_register, Read_data_1, Read_data_2;
	
	// Data Memory Unit inputs and outputs
	wire [31:0] Memory_Adress, Write_data_memory, Read_data_memory ;
	
	// for ALU
	wire Z, V, Cout;
	
	// unnecessary wires
	wire [31:0] ALU_input_from_mux, ZeroExtended, SignExtended, ImmediateExtended, ZeroExtended_Read_data_memory, _8to32_Read_data_memory ;
	
	Instruction_Memory_Unit_32bit get_Instruction( Instruction, PC ) ;
	
	assign OpCode = Instruction[31:26] ;
	assign rs = Instruction[25:21] ;
	assign rt = Instruction[20:16] ;
	assign immediate = Instruction[15:0] ;
	
	assign Write_data_memory = Read_data_2 ;
	
	
	Control_Unit send_control_signals( signal_RegWrite, signal_ALUSrc, signal_MemtoReg1, signal_MemtoReg2, signal_MemRead, signal_MemWrite, signal_sb, signal_sh, signal_sw, OpCode ) ;
	
	Registers_Unit_32bit read_or_write_to_registers( Read_data_1, Read_data_2, rs, rt, rt, Write_data_register, signal_RegWrite, clock ) ;
	
	ZeroExtendImm_16bit_to_32bit Zeroextend_16bit_immediate_to_32bit( ZeroExtended, immediate ) ;
	
	SignExtendImm_16bit_to_32bit Signextend_16bit_immediate_to_32bit( SignExtended, immediate ) ;
	
	Immediate_16to32 extend_16bit_immediate_to_32bit( ImmediateExtended , immediate ) ; 
	
	mux32bit_2_1 selection_of_Alu_input( ALU_input_from_mux, signal_ALUSrc, SignExtended, ZeroExtended ) ;
	
	ALU32bit add_operation( Z, V, Cout, Memory_Adress, Read_data_1, ALU_input_from_mux, 3'b010 ) ;
	
	Data_Memory_Unit_32bit read_or_write_to_DataMemory( Read_data_memory, Memory_Adress, Write_data_memory, signal_MemRead, signal_MemWrite,signal_sb, signal_sh, signal_sw, clock ) ;
	
	ZeroExtendImm_16bit_to_32bit ZeroExtend_Read_data_memory( ZeroExtended_Read_data_memory, Read_data_memory[15:0] ) ;
	
	_8to32  extend_Read_data_memory_8to32( _8to32_Read_data_memory, Read_data_memory[7:0]  ) ;
	
	mux32bit_4_1 selection_of_whichData_writeToRegisters( Write_data_register, signal_MemtoReg2, signal_MemtoReg1, ZeroExtended_Read_data_memory, _8to32_Read_data_memory, ImmediateExtended, Read_data_memory  ) ;
	
	
	always @(posedge clock) begin 
		
		PC = PC+1;
		
	end 

	initial begin

	//	$monitor(" time: %2d \n clock: %1b \n PC unit: PC: %2d \n Instruction Memory Unit:\n instruction: %32b \n Opcode= %2h , rs = %2d , rt = %2d , immediate = %2d \n\n Registers Unit: signal_RegWrite: %1b \n  Read_data_1: %2d Read_data_2: %2d Write_data_register: %2d \n\n Between registers and ALU : signal_ALUSrc: %1b \n zeroExtended: %2d signExtended: %2d ALU_input_from_mux: %2d \n\n signals:: signal_MemRead: %1b signal_MemWrite: %1b signal_sb: %1b signal_sh: %1b signal_sw: %1b signal_MemtoReg2: %1b signal_MemtoReg1: %1b \n\n\n  ", $time, clock, PC, Instruction, OpCode , rs , rt , immediate, signal_RegWrite, Read_data_1, Read_data_2, Write_data_register, signal_ALUSrc, ZeroExtended, SignExtended, ALU_input_from_mux, signal_MemRead, signal_MemWrite, signal_sb, signal_sh, signal_sw, signal_MemtoReg2, signal_MemtoReg1 );
	$monitor(" time: %2d \n clock: %1b \n PC unit: PC: %2d \n Instruction Memory Unit:\n instruction: %32b \n Opcode= %2h , rs = %2d , rt = %2d , immediate = %2d \n\n Registers Unit: signal_RegWrite: %1b \n  Read_data_1: %2d Read_data_2: %2d Write_data_register: %2d \n\n Between registers and ALU : signal_ALUSrc: %1b \n zeroExtended: %2d signExtended: %2d ALU_input_from_mux: %2d \n\n Data Memory Unit: signal_MemRead: %1b signal_MemWrite: %1b signal_sb: %1b signal_sh: %1b signal_sw: %1b \n Memory_Adress: %2d read_data_memory: %2d write_data_memory: %2d \n\n Between data memory  and registers: signal_MemtoReg2: %1b signal_MemtoReg1: %1b \n read_data_memory: %2d ImmediateExtended: %2d _8to32_Read_data_memory: %2d ZeroExtended_Read_data_memory: %2d  result of mux: Write_data_register: %2d \n\n\n  ", $time,clock, PC, Instruction, OpCode , rs , rt , immediate, signal_RegWrite, Read_data_1, Read_data_2, Write_data_register, signal_ALUSrc, ZeroExtended, SignExtended, ALU_input_from_mux, signal_MemRead, signal_MemWrite, signal_sb, signal_sh, signal_sw, Memory_Adress, Read_data_memory, Write_data_memory, signal_MemtoReg2, signal_MemtoReg1, Read_data_memory, ImmediateExtended, _8to32_Read_data_memory, ZeroExtended_Read_data_memory, Write_data_register );

	end
endmodule

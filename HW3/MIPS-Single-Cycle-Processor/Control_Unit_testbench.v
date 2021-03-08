`define DELAY 20
module Control_Unit_testbench();
 
reg [5:0] OpCode ;
wire signal_RegWrite, signal_ALUSrc, signal_MemtoReg1, signal_MemtoReg2, signal_MemRead, signal_MemWrite, signal_sb, signal_sh, signal_sw ;

Control_Unit testControl_Unit( signal_RegWrite, signal_ALUSrc, signal_MemtoReg1, signal_MemtoReg2, signal_MemRead, signal_MemWrite, signal_sb, signal_sh, signal_sw, OpCode );

initial begin

OpCode = 6'h20;
#`DELAY;
OpCode = 6'h24;
#`DELAY;
OpCode = 6'h21;
#`DELAY;

OpCode = 6'h25;
#`DELAY;
OpCode = 6'hf;
#`DELAY;
OpCode = 6'h23;
#`DELAY;

OpCode = 6'h28;
#`DELAY;
OpCode = 6'h29;
#`DELAY;
OpCode = 6'h2b;
#`DELAY;
end
 
 
initial
begin
$monitor(" OpCode =%6h signal_RegWrite = %1b, signal_ALUSrc = %1b, signal_MemtoReg1 = %1b, signal_MemtoReg2 = %1b, signal_MemRead = %1b, signal_MemWrite = %1b, signal_sb = %1b signal_sh = %1b signal_sw = %1b \n", OpCode,signal_RegWrite, signal_ALUSrc, signal_MemtoReg1, signal_MemtoReg2, signal_MemRead, signal_MemWrite, signal_sb, signal_sh, signal_sw  );

end
 
endmodule
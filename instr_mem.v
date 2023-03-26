`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:24:21 03/20/2023 
// Design Name: 
// Module Name:    instr_mem 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module instr_mem(
    input [31:0] PC,
    input Reset,
    output [31:0] Instruction_code
    );
reg [7:0] Mem [35:0];
assign Instruction_code = { Mem[PC], Mem[PC+1], Mem[PC+2], Mem[PC+3] };
always @(Reset)
begin
if (Reset==0)
begin
$readmemh("Instruction.mem",Mem);
end
end
endmodule

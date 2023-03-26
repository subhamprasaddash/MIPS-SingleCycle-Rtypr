`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:  
// Engineer: 
// 
// Create Date:    11:26:06 03/20/2023 
// Design Name: 
// Module Name:    instr_fetch 
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
module instr_fetch(
    input clk,
    input Reset,
    output [31:0] Instruction_code
    );

reg [31:0] PC;
instr_mem f1(PC,Reset,Instruction_code);
always @(posedge clk,negedge Reset)
begin
if (Reset==0)
PC<=0;
else
PC<=PC+4;
end
endmodule

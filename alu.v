`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:22:46 03/20/2023 
// Design Name: 
// Module Name:    alu 
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
module alu(
    input [31:0] A,
    input [31:0] B,
    input [1:0] S,
    output reg [31:0] out,
    output reg  ZF
    );
parameter s0 =2'b00, s1= 2'b01, s2=2'b10, s3= 2'b11; 
always@(*)
begin
case(S)
	s0:
		out <= A & B;
	s1:
		out <= A | B;
	s2:
		out <= A + B;
	s3:begin
		if(A<B)
			out <= 1;
		else
			out <= 0;
		end
endcase

begin
	if (out == 0)
		ZF <= 1;
	else
		ZF <= 0;
end
end
endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:20:58 03/20/2023 
// Design Name: 
// Module Name:    mux 
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
module mux(
    input I0,
    input I1,
    input  S,
    output reg Out
	 
    );
	 always @ (S or I0 or I1)
	 begin
	 case (S)
	 1'b0:Out=I0;
	 1'b1:Out=I1;
	 
	 endcase
    end
endmodule

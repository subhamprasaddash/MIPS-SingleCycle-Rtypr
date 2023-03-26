`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:09:33 03/20/2023 
// Design Name: 
// Module Name:    shft 
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
module shft(
    input clk,
    input [25:0] shft_in,
    output reg [27:0] shft_out
    );
	 
	 always @(posedge clk)
	 begin
	 shft_out<={shft_in,2'b00} ;
    end

endmodule

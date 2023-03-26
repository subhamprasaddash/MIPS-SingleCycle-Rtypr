`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:35:10 03/20/2023 
// Design Name: 
// Module Name:    sign_extend 
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
module sign_extend(
    input clk,
    input [15:0] extend_in,
    output reg [31:0] extend_out
    );
always @(posedge clk)
begin
extend_out[31:0]<={{16{extend_in[15]}},extend_in[15:0]};
end

endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:27:00 03/20/2023 
// Design Name: 
// Module Name:    data_mem 
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
module reg_file(
    input [4:0] Read_Reg_1,
    input [4:0] Read_Reg_2,
    input [4:0] Write_Reg,
    input [31:0] Write_Data,
    output  [31:0] Read_Data_1,
    output  [31:0] Read_Data_2,
    input RegWrite,
    input clk,
	 input rst
    );
	 reg [31:0] Rmem[31:0];
	 always @(negedge rst)
	 begin
	 $readmemh("regmem.mem",Rmem);
	 end
	 assign Read_Data_1 = Rmem[Read_Reg_1];
	 assign Read_Data_2 = Rmem[Read_Reg_2];
	 always @(posedge clk)
	 begin
	 if(RegWrite==1)
	 begin
	 Rmem[Write_Reg] <= Write_Data;
	 end
	 end
	 endmodule

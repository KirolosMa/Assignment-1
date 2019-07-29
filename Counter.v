`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:42:12 06/23/2019 
// Design Name: 
// Module Name:    Counter 
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
module Counter(
    input [3:0] in,
    input latch,
    input dec,
    input clock,
    output zero
    );
	reg [3:0] Value  ;
	
	always @(posedge clock)
		begin
		if (latch) Value <= in ; 
		else if (dec && !zero) Value <= Value - 1'b1 ;
		end 
	assign zero = (Value == 4'b0) ;

endmodule

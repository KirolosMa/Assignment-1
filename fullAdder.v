`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Si-vision
// Engineer: Kirolos Magdy 
// 
// Create Date:    12:13:38 02/06/2019 
// Design Name: 
// Module Name:    fullAdder 
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
module fullAdder(i_a,i_b,i_cin,i_clock,o_s,o_cout );
	 /* Inputs and Outputs */
	 input i_a;
    input i_b;
    input i_cin;
    input i_clock; 
    output o_s; 
    output o_cout; 
	 /*Output Reg Declaration*/
	 reg o_s ; 
	 reg o_cout ; 
	 always @(posedge i_clock )
	 begin
			o_s <= (i_a ^ i_b ^ i_cin) ; 
			o_cout <= ((i_a ^ i_b) & i_cin ) | (i_a & i_b) ;
         			
    end 			


endmodule

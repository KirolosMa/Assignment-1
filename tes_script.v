`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:44:00 06/24/2019
// Design Name:   Counter
// Module Name:   D:/si-vision/Assignment1/tes_script.v
// Project Name:  Assignmen
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Counter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 

module tes_script;

	// Inputs
	reg [3:0] in;
	reg latch;
	reg dec;
	reg clock;
	// Outputs
	wire zero;
	/*the intial porcedure block */
	initial 
		begin 
		$dumpfile("count.vcd");
		$dumpvars;
		clock = 0 ;
		in =  4'b0100 ;
		latch = 0 ;
		dec = 0 ;
		#16 latch = 1 ;
		#10 latch = 0;
		#10 dec = 1 ;
		#100 $finish ;
		end 
	always #5 clock = ~clock ; 

	// Instantiate the Unit Under Test (UUT)
	Counter uut (
		.in(in), 
		.latch(latch), 
		.dec(dec), 
		.clock(clock), 
		.zero(zero)
	);

endmodule


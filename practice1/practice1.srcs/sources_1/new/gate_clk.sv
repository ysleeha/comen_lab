`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/01/04 05:35:07
// Design Name: 
// Module Name: gate_clk
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module gate_clk
(
	// output
	output	    wire	gclk,
	
	// inptut
	input		wire	enable,
	input		wire	clk_0
);
			
	// create reg 
				reg	    g_enable;
	
	// create signal  
	always @(negedge clk_0) begin
		g_enable <= enable;
	end
	
	// on & off gclk
	assign gclk = g_enable & clk_0;
	
endmodule 
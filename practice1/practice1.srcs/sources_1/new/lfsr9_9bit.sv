
`timescale 1ns / 1ps

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

module lfsr9_9bit
#(
	parameter BW = 9
)

(
	// output
	output	wire	[BW-1:0]	data_out_0,
	output	wire                valid_out,
	
	// input
	input		wire			clk,
	input		wire			reset,
	input		wire			valid_in
);

	// init
	wire   [BW-1:0]    w_seed = 2;
	reg    [BW-1:0]    init_mask;
	
	// lfsr 
	wire   [BW-1:0]    w_mask; 
	wire   [BW-1:0]    w_lfsr_pre;
	wire   [BW-1:0]    w_lfsr;
	
	// gclk
	wire               gclk_0;
	wire               enable_0 = valid_in | !reset;
	
	// reg 
	reg    [BW-1:0]    r_lfsr;			
	
	// bit num 
	wire   [3:0]		bit_num = BW;	
	
	// instance
	gate_clk   gate_clk_0
	(
		// output
		.gclk(gclk_0),
		
		// inptut
		.enable(enable_0),
		.clk_0(clk)
	);
				
	// w_lfsr feedback
	always @(posedge gclk_0) begin
		if (!reset)	        r_lfsr <= w_seed;
		else if (valid_in)	r_lfsr <= w_lfsr;
	end 
	
	always @(*) begin
		case (bit_num)
			'd9  :  init_mask = 'hB8;
			'd10 :  init_mask = 'h240;
			'd11 :  init_mask = 'h500;
			'd12 :  init_mask = 'hE08;
		endcase
	end
	
	// lfsr calcul  
	assign w_lfsr_pre = r_lfsr;
	assign w_mask	 	= (w_lfsr_pre[0])? init_mask : 0;
	assign w_lfsr 		= (r_lfsr >> 1) ^ w_mask;
	
	// data out
    assign  data_out_0 = w_lfsr;
    assign  valid_out = valid_in;
    
endmodule
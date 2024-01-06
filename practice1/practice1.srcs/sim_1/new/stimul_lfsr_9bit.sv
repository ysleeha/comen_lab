`timescale  1ns/1ps

module stimul_lfsr9;

	//parameter
	parameter		BW = 9;
	
	
	// output 
	wire	[BW-1:0]  tb_data_out_0;
	wire 		      tb_valid_out;
	
	
	// input
	reg				tb_clk;
	reg				tb_reset;
	reg				tb_valid_in;
	
	
	// instance
	lfsr9_9bit 
	#(
		.BW(BW)
	) 
	
	dut_lfsr9_9bit(
		.data_out_0(tb_data_out_0),
		.valid_out(tb_valid_out),
		
		.clk(tb_clk),
		.reset(tb_reset),
		.valid_in(tb_valid_in)
	);
	
	
	// initialization, enable_0 = valid_in & reset;
	initial begin 
		tb_clk 		<= 0;
		tb_reset 	<= 1;
		tb_valid_in <= 0;
	end
	
	// gen clk
	always begin 
		#5
		tb_clk <= ~tb_clk; 
	end 
	
	
	// start 
	initial begin
	    #20 
	    tb_reset <= 0;
	    #20 
	    tb_reset <= 1;
	    #20
		tb_valid_in <= 1;
		#2550
		tb_valid_in <= 0;
		#20
		tb_valid_in <= 1;
		#20
		$fclose(file);
		$stop;
	end 
	
	
	// create file;
	integer file;
	
	initial begin 
		file = $fopen("output.txt");
	end
	
	
	always @(posedge tb_clk) begin
		if(tb_reset) $fwrite(file, "%x\n", tb_data_out_0);
	end

endmodule

	
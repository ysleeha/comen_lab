
`timescale 1ns / 1ps

module tb_main_light_fsm();
    
    // input 
    logic tb_clk;
    logic tb_rst_n;

    traffic_light tb_north;
    traffic_light tb_south; 
    traffic_light tb_east; 
    traffic_light tb_west; 
    
    
    main_light_fsm dut(
        .clk(tb_clk),
        .rst_n(tb_rst_n),
        .north(tb_north),
        .south(tb_south),
        .east(tb_east),
        .west(tb_west)
    );
    
    // clock
    always begin
        #5
        tb_clk = ~tb_clk;
    end
    
    // initialization & reset 
    initial begin
		tb_north 	<= RED;
		tb_south 	<= RED;
		tb_east 	<= RED;
		tb_west 	<= RED;
		    
        tb_clk 	= 0;
        tb_rst_n 	= 1;
    
        #20
        tb_rst_n 	= 0;
    
        #20
        tb_rst_n 	= 1;
    end

endmodule


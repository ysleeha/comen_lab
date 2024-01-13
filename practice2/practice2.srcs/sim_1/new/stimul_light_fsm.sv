`timescale 1ns / 1ps

//`include "../sources_1/new/light_fsm.sv"


module stimul_light_fsm;
    
    // input 
    logic tb_clk;
    logic tb_rst_n;

    // output traffic_light는 dut에 선언되어있는데 어떻게 쓸수있지?
    traffic_light tb_north;
    traffic_light tb_south; 
    traffic_light tb_east; 
    traffic_light tb_west; 
    
    
    light_fsm dut(
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

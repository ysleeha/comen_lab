
`timescale 1ns / 1ps

    // 20Mhz -> 1Mhz
    // 0.05us -> 1us
    
module tb_uart_tx();
    
    reg clk = 0;
    
    logic rst;
    logic tx;
    
    always begin 
        // 0.25us  high -> low 
        #25
        clk = ~clk;
    end 
    
    initial begin 
        rst = 1;
        #1000
        rst = 0; 
        #1000
        rst = 1;
    end

    uart_tx DUT
    (
        .clk(clk), // 10khz (주기 : 0.1ms)  0.05ms 마다 반전 
        .rst(rst),
        .tx(tx)
    ); 
    
endmodule

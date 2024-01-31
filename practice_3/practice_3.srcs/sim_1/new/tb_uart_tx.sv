
`timescale 1ns / 1ps
    
module tb_uart_tx();
    
    logic tb_clk;
    
//    logic tb_rst;
    logic tb_tx;
    
    always begin 
        // frequency 12Mhz
        // period 83.33333ns  
        #41.666
        tb_clk = ~tb_clk;
    end 
    
    initial begin
        tb_clk = 0;
//        tb_rst = 1;
//        #1000
//        tb_rst = 0; 
//        #1000
//        tb_rst = 1;
    end

    uart_tx DUT
    (
        .clk(tb_clk), // 12M (주기 : 0.1ms)  0.05ms 마다 반전 
    //    .rst(tb_rst),
        .tx(tb_tx)
    ); 
    
endmodule

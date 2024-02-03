
`timescale 1ns / 1ps

module tb_uart_trans();

    reg     clk;
    wire    tx;
    
    always begin 
        #50000
        clk = ~clk;
    end     

    initial begin
        clk = 0; 
//        rst = 1;
//        #10000
//        rst = 0; 
//        #10000
//        rst = 1;
    end
    
    uart_trans DUT
    (
        .clk(clk), // 10khz (�ֱ� : 0.1ms)  0.05ms ���� ���� 
//        .rst(rst),
        .tx(tx)
    ); 

endmodule

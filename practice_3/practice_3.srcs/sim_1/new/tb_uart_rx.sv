
`timescale 1ns / 1ps

module tb_uart_rx();
    
    logic clk = 0;
    logic rst;
    logic rx; 
    
    always begin 
        #50000 // 0.1ms clk [0.05ms high -> 0.05ms low] 
        clk = ~clk;
    end  
    
    initial begin
        rst = 1;
        #10000
        rst = 0; 
        #10000
        rst = 1;
        
        // 시뮬레이션을 위해 rx 신호에 시리얼 데이터 제공
        // 예: 0x48 (ASCII 'H') 전송
        // 시작 비트 (0), 데이터 비트 (01001000), 정지 비트 (1)
        #10000 rx = 0; // 시작 비트
        #10000 rx = 0; // LSB
        #10000 rx = 0;
        #10000 rx = 1;
        #10000 rx = 0;
        #10000 rx = 0;
        #10000 rx = 1;
        #10000 rx = 0;
        #10000 rx = 1; // MSB
        #10000 rx = 1; // 정지 비트
    end
    
    uart_rx DUT
    (
        .clk(clk),
        .rst(rst),
        .rx(rx)
    ); 
    
endmodule

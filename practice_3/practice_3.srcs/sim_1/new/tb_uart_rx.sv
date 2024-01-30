
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
        
        // �ùķ��̼��� ���� rx ��ȣ�� �ø��� ������ ����
        // ��: 0x48 (ASCII 'H') ����
        // ���� ��Ʈ (0), ������ ��Ʈ (01001000), ���� ��Ʈ (1)
        #10000 rx = 0; // ���� ��Ʈ
        #10000 rx = 0; // LSB
        #10000 rx = 0;
        #10000 rx = 1;
        #10000 rx = 0;
        #10000 rx = 0;
        #10000 rx = 1;
        #10000 rx = 0;
        #10000 rx = 1; // MSB
        #10000 rx = 1; // ���� ��Ʈ
    end
    
    uart_rx DUT
    (
        .clk(clk),
        .rst(rst),
        .rx(rx)
    ); 
    
endmodule

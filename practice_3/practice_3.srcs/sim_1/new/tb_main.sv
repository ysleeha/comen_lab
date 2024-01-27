
`timescale 1ns / 1ps

module tb_main();

    reg     clk = 0; 
    reg     rst;
    wire    tx;
    
    
    always begin 
        #50000
        clk = ~clk;
    end     

    initial begin 
        rst = 1;
        #10000
        rst = 0; 
        #10000
        rst = 1;
    end
    
    main DUT
    (
        .clk(clk), // 10khz (�ֱ� : 0.1ms)  0.05ms ���� ���� 
        .rst(rst),
        .tx(tx)
    ); 

endmodule

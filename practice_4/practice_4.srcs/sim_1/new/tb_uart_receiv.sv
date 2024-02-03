
`timescale 1ns / 1ps

module tb_uart_receiv();

    logic         tb_clk;
    logic         tb_rst;
    logic   [7:0] tb_rx;
    
    wire    [7:0] data_buffer; // 수신된 문자열 데이터 버퍼
    
    logic   [7:0] text_H = "H";
        
    always begin 
        #50000
        tb_clk = ~tb_clk;
    end     

    uart_receiv DUT
    (
        .clk(tb_clk), // 10khz (주기 : 0.1ms)  0.05ms 마다 반전 
        .rst(tb_rst),
        .rx(tb_rx),
        
        .data_buffer(data_buffer)
    ); 
    
    // text trans
    initial begin
        tb_rx = 0;
        #10000
        tb_rx = text_H;
    end 
    
    // signal 
    initial begin
        tb_clk = 0; 
        tb_rst = 1;
        #10000
        tb_rst = 0; 
        #10000
        tb_rst = 1;
    end
   
endmodule



//`timescale 1ns / 1ps

//module tb_uart_receiv();

//    logic         tb_clk;
//    logic         tb_rst;
//    logic         tb_rx;
//    logic   [2:0] tb_cnt;
    
//    wire    [7:0] data_buffer; // 수신된 문자열 데이터 버퍼
    
//    logic   [7:0] text_H = "H";
        
//    always begin 
//        #50000
//        tb_clk = ~tb_clk;
//    end     

//    uart_receiv DUT
//    (
//        .clk(tb_clk), // 10khz (주기 : 0.1ms)  0.05ms 마다 반전 
//        .rst(tb_rst),
//        .rx(tb_rx),
        
//        .data_buffer(data_buffer)
//    ); 
    

  
 
//    // text trans
//    initial begin
//        tb_rx = 0;
//        #5000
//        case (tb_cnt) 
//            0 : tb_rx = text_H[tb_cnt];
//            1 : tb_rx = text_H[tb_cnt];
//            2 : tb_rx = text_H[tb_cnt];
//            3 : tb_rx = text_H[tb_cnt];
//            4 : tb_rx = text_H[tb_cnt];
//            5 : tb_rx = text_H[tb_cnt];
//            6 : tb_rx = text_H[tb_cnt];
//            7 : tb_rx = text_H[tb_cnt];
//        endcase
//        //tb_rx = text_H;
//    end 
    
//    // signal 
//    initial begin
//        tb_clk = 0; 
//        tb_rst = 1;
//        #10000
//        tb_rst = 0; 
//        #10000
//        tb_rst = 1;
//        //tb_en = 1;
//    end
   
//endmodule

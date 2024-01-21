`timescale 1ns / 1ps

/**********************************
            MMCM Testbench
***********************************/

module tb_mmcm();
    
    // 1000us = 1ns 
    localparam real PERIOD_NS_20MHZ = 1000/20;
    
    logic out;
    
    logic clk;
    logic rst_n;

    
    hw_mmcm_50 dut (  // <--- 여기를 수정했습니다.
        .out    (out),
        
        .clk    (clk),
        .rst_n  (rst_n)
    );
    
    
    initial begin
        clk = 0;
        rst_n = 1;
    
        #40 rst_n = 0;
        #40 rst_n = 1;
    end
    
    
    /*
       input clock      50ns 
       output clock     12ns (주기가 주기가 약 3배만큼 줄었으니 3배 PLL 되었다고 볼수있다)
    */
    // 20MHz 클럭 생성
    always begin
        #(PERIOD_NS_20MHZ/2)
        clk = ~clk;
    end
    
endmodule
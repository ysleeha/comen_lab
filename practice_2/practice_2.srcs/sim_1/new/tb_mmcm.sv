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

    
    hw_mmcm_50 dut (  // <--- ���⸦ �����߽��ϴ�.
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
       output clock     12ns (�ֱⰡ �ֱⰡ �� 3�踸ŭ �پ����� 3�� PLL �Ǿ��ٰ� �����ִ�)
    */
    // 20MHz Ŭ�� ����
    always begin
        #(PERIOD_NS_20MHZ/2)
        clk = ~clk;
    end
    
endmodule
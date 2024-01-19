`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/01/19 05:44:20
// Design Name: 
// Module Name: stimul_gray_encoder
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module stimul_gray_encoder;

    // 입출력 
    parameter num_test = 10;
    
    logic   [7:0]   tb_en_bin_code;     //input 
    logic   [7:0]   tb_en_gray_code;    //output
    logic   [7:0]   tb_de_gray_code;    //input 
    logic   [7:0]   tb_de_bin_code;     //output
    //wire    [7:0]   wire_c1;
    
    // # 카운트 
    int success_cnt;
    int fail_cnt;
    
    // 값 생성 
    logic   [7:0]   test_bin_values [0:num_test-1] = {8'h00, 8'h01, 8'h02, 8'h03, 8'h04, 8'h05, 8'h06, 8'h07, 8'h08, 8'h09};
    logic   [7:0]   test_gray_values [0:num_test-1] = {8'h00, 8'h01, 8'h03, 8'h02, 8'h06, 8'h07, 8'h05, 8'h04, 8'h0c, 8'h0d};
    
    // # DUT # 
    gray_encoder    dut_gray_encoder(
                                    .gray_code(tb_en_gray_code), //output connect
                                    .bin_code(tb_en_bin_code)    //input
                                    );
                                    
    gray_decoder    dut_gray_decoder(
                                    .bin_code(tb_de_bin_code),  //output
                                    .gray_code(tb_de_gray_code) //input connect
                                    );
                                    
    assign tb_de_gray_code = tb_en_gray_code; 

     // 초기화 
     initial begin
//        tb_en_bin_code = 0;
//        tb_de_gray_code = 0;
        success_cnt = 0;
        fail_cnt = 0;
     end

     
     // simulation 
     initial begin
        $display("#Start#");
        
        for(int i=0; i<num_test; i=i+1) begin
            tb_en_bin_code = test_bin_values[i];
            #5; 
                
            $display("[%0d] EN binary code = %b, EN gray code = %b, DE binary code = %b", i, tb_en_bin_code, tb_en_gray_code, tb_de_bin_code);
            if (tb_de_bin_code == test_bin_values[i]) begin
                success_cnt++;
            end 
            else begin
                fail_cnt++;
                $display("Error! Expected binary: %b, Got: %b", test_bin_values[i], tb_de_bin_code);
            end
        end
                    
        $display("\n");
        $display("Success : %0d", success_cnt);
        $display("Fail : %0d\n", fail_cnt);
        
        $finish();
        end
endmodule

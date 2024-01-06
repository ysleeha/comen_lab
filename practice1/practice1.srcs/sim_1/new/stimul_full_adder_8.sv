`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/12/25 20:32:45
// Design Name: 
// Module Name: stimul_full_adder_8
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

module stimul_full_adder_8();
    
    parameter num_test = 10;
    
    // # input, output # 
    logic  	[7:0]   tb_s; 
    logic           tb_c_out;
    logic  	[7:0]   tb_a, tb_b; 
    logic           tb_c_in;
        
    // # Scoreboard #
    int success_cnt;
    int fail_cnt;
    
    // # generator #
    logic [7:0] test_a_values [0:num_test-1] = { 8'h00, 8'h23, 8'h4f, 8'h5f, 8'h61, 8'h32, 8'h52, 8'haa, 8'hbf, 8'h12 };
    logic [7:0] test_b_values [0:num_test-1] = { 8'h12, 8'h45, 8'h01, 8'h02, 8'h45, 8'hff, 8'h23, 8'h01, 8'h34, 8'h56 };
    
    logic [0:0] test_c_in_operand [0:num_test-1] = { 0,1,0,1,0,1,0,1,0,1 };

    // # Golden model #
    logic   [7:0]   sum_golden  [0:num_test-1];
    logic   [0:0]   cout_golden [0:num_test-1];
    
    
    // # DUT # 
    full_adder_8 dut_full_adder_8(
                                .s 	    (tb_s),
                                .c_out 	(tb_c_out),
                                .a 	    (tb_a),
                                .b 	    (tb_b),
                                .c_in 	(tb_c_in)
                                );


    // # Test #
    initial begin
    
        // # initial #
        tb_a 	    = 8'b0;
        tb_b        = 8'b0;
        tb_c_in     = 1'b0;
        success_cnt = 0;
        fail_cnt    = 0;
        
    end
    
    initial begin 
        
        // # Agent #
        for (int i = 0; i < num_test; i++) begin 
            // carry out sum
            logic [8:0] added = {1'b0, test_a_values[i]} + {1'b0, test_b_values[i]} + {8'b0, test_c_in_operand[i]};
        
            sum_golden[i]  = added[7:0];
            cout_golden[i] = added[8];
        end
        
        // # Driver #
        for (int i = 0; i < num_test; i++) begin
            tb_a    = test_a_values[i];
            tb_b    = test_b_values[i];
            tb_c_in = test_c_in_operand[i];
    
             // # Monitor & Checker & Scoreboard #        
            #5	
            $display("[%0d] a = 0x%h, b = 0x%h, cin=%b, sum=0x%h, cout=%b", i, tb_a, tb_b, tb_c_in, tb_s, tb_c_out);
            if ((tb_c_out == cout_golden[i]) && (tb_s == sum_golden[i])) begin
                success_cnt++;
            end 
            else begin
                fail_cnt++;
                $display("Error! Expected sum: 0x%h, Expected cout: %b", sum_golden[i], cout_golden[i]);
            end
        end
        
        $display("\n");
        $display("Success : %0d", success_cnt);
        $display("Fail : %0d\n", fail_cnt);
        
        $finish();

    end
   
endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/12/25 02:49:28
// Design Name: 
// Module Name: Multiple
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

module Multiple # (parameter WIDTH = 8)(
    
    output  wire    [WIDTH*2-1:0]   product,
    input   wire    [WIDTH-1:0]     a, b
    );
            
            wire    [WIDTH-1:0]     partial_sum [WIDTH-1:0];
            wire                    carry [WIDTH-1:0];

    assign carry[0] = 0;
    
    generate
        /* col은 세로 위치, row는 가로 위치, WIDTH는 8 */ 
        for (genvar col = 0; col < WIDTH; col++) begin
            if (col == 0) begin
                for (genvar row = 0; row < WIDTH; row++) begin
                    assign partial_sum[col][row] = a[row]&b[col];
                end 
            end 
            else if (col == 1) begin
                full_adder_8 cra(
                                .s      (partial_sum[col]),
                                .c_out  (carry[col]),
                                .a      (b[col] ? a : 8'b0),
                                .b      ({1'b0, partial_sum[col-1][WIDTH-1:1]}),
                                .c_in   (1'b0)
                                ); 
            end 
            else begin
                full_adder_8 cra(
                                .s      (partial_sum[col]),
                                .c_out  (carry[col]),
                                .a      (b[col] ? a : 8'b0),
                                .b      ({carry[col-1], partial_sum[col-1][WIDTH-1:1]}),
                                .c_in   (1'b0)
                                ); 
            end
        end

        for (genvar col = 0; col < WIDTH; col++) begin
            if (col == (WIDTH-1)) begin
                for (genvar row = 0; row < WIDTH; row++) begin
                    assign product[col+row] = partial_sum[col][row];
                end
                assign product[2*WIDTH-1] = carry[col]; 
            end else begin
                assign product[col] = partial_sum[col][0];
            end
        end
    endgenerate

endmodule



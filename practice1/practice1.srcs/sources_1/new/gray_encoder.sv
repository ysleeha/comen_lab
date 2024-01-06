`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/12/26 01:32:29
// Design Name: 
// Module Name: gray_encoder
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


module gray_encoder #(parameter max_gray_code=7)
    (
    output  wire    [7:0]   gray_code,
    input   wire    [7:0]   bin_code
    );
    
    genvar i;
    generate
        assign gray_code[0] = bin_code[0];    
        for (i=1; i <= max_gray_code; i=i+1) begin
            assign gray_code[i] = bin_code[i] ^ bin_code[i-1];
        end
    endgenerate
endmodule

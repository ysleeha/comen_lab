`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/01/19 05:38:32
// Design Name: 
// Module Name: gray_decoder
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


module gray_decoder #(parameter max_bin_code=7)
    (
    output  wire    [7:0]   bin_code,
    input   wire    [7:0]   gray_code
    );
    
    genvar i;
    generate
        assign bin_code[0] = gray_code[0];    
        for (i=0; i < max_bin_code; i=i+1) begin
            assign bin_code[i+1] = bin_code[i] ^ gray_code[i+1];
        end
    endgenerate
endmodule


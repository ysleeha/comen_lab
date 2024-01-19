`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/01/19 05:36:48
// Design Name: 
// Module Name: full_adder_8
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

module f_a(

    output  wire    s,
    output  wire    c_out, 
    input   wire    a, b, 
    input   wire    c_in
    );

    assign s     = a ^ b ^ c_in;
    assign c_out = (a & b) | ((a ^ b) & c_in);

endmodule

module full_adder_8(
    
    output  wire    [7:0]   s,
    output  wire            c_out,
    input   wire    [7:0]   a, b,
    input   wire            c_in
);

            wire    [8:0]   w_c;

    assign  w_c[0]  = c_in;
    assign  c_out   = w_c[8];
    
    //instansiation
    genvar i;
    generate ;
        for (i=0; i<8; i=i+1) begin 
            f_a stimul_f_a(
                            .s      (s[i]),
                            .c_out  (w_c[i+1]),
                            .a      (a[i]),
                            .b      (b[i]),
                            .c_in   (w_c[i])
                            );
        end
    endgenerate
    
endmodule

`timescale 1ns / 1ps

module hw_mmcm_50
(
    output  logic   out,
    
    input   wire    clk,
    input   wire    rst_n
);

            wire    clk_ff;
            wire    pll_locked;
            
    mmcm_50m mmcm_inst(
        .clk_out1	(clk_ff),
        
        .reset 	    (1'b0),
        .locked 	(pll_locked),
        
        .clk_in1	(clk)
    );
    
    always_ff @(posedge clk_ff or negedge rst_n) begin
        if(~rst_n) begin
            out <= 0;
        end else begin
            out <= ~out;
        end
    end

endmodule


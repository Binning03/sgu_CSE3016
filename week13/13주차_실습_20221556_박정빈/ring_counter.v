`timescale 1ns / 1ps

module ring_counter (
    input clk,
    input rst,
    output reg [3:0] out
);

    wire tmp;
    assign tmp = out[0];
    
    always @(posedge clk) begin
        if (rst == 1'b1) begin
            out <= 4'b1000;
        end else begin
            out = out >> 1;
            out[3] = tmp;
        end
    end

endmodule

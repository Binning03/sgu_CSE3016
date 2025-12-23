`timescale 1ns / 1ps

module shift_register (
    input clk,
    input rst,
    input in,
    output reg [3:0] out
);

    always @(posedge clk) begin
        if (rst == 1'b1) begin
            out <= 4'b0000;
        end else begin
            out = out >> 1;
            out[3] = in;
        end
    end

endmodule

`timescale 1ns / 1ps

module sequence_detector (
    input clk, rst, in,
    output reg [3:0] sequence,
    output reg out
);

    always @(posedge clk) begin
        if (rst) begin
            sequence = 4'b0000;
            out = 1'b0;
        end else begin
            sequence = sequence << 1;
            sequence[0] = in;
            if(sequence == 4'b1101) begin
                out = 1'b1;
            end else begin
                out = 1'b0;
            end
        end
    end

endmodule

`timescale 1ns / 1ps

module updown_counter (
    input clk,
    input rst,
    input updown,
    output reg [3:0] out,
    output reg [6:0] display,
    output dp, digit
);
    assign dp = 1'b0;
    assign digit = 1'b1;
    
    always @(posedge clk) begin
        if (rst == 1'b1) begin
            out <= 4'b0000;
            display <= 7'b0000000;
        end else begin
            if (updown) begin
                display <= 7'b0111110;
                out <= out + 1;
            end else begin
                display <= 7'b1011110;
                out <= out - 1;
            end
        end
    end

endmodule

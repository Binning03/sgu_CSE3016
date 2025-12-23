`timescale 1ns / 1ps

module two_bit_counter(clk, rst, out);

input clk, rst;
output reg [1:0] out;

always @(posedge clk) begin
    if(!rst)
        out <= 0;
    else
        out <= out + 1;
end
    
endmodule

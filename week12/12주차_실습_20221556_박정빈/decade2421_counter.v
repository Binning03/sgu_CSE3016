`timescale 1ns / 1ps

module decade2421_counter(clk, rst, out);

input clk, rst;
output reg [3:0] out;

always @(posedge clk) begin
    if(!rst)
        out <= 0;
    else if(out == 4'b0100)
        out <= 4'b1011;
    else
        out <= out + 1;
end
    
endmodule

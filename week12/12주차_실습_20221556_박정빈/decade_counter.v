`timescale 1ns / 1ps

module decade_counter(clk, rst, out);

input clk, rst;
output reg [3:0] out;

always @(posedge clk) begin
    if(!rst)
        out <= 0;
    else if(out == 4'b1001)
        out <= 0;
    else
        out <= out + 1;
end

    
endmodule

`timescale 1ns/1ps

module D_FlipFlop (
    input clk, D,
    output reg Q, notQ
);
    
    always @(posedge clk) begin
        Q <= D;
        notQ <= ~D;
    end

endmodule

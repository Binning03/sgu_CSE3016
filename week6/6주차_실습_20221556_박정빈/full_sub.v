`timescale 1ns / 1ps

module full_sub(
    input A,
    input B,
    input bin,
    output D,
    output bout
    );

assign D = (A^B)^bin;
assign bout = ((~(A^B))&bin)|((~A)&B);

endmodule
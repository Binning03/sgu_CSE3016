`timescale 1ns / 1ps

module mux(
    input a,
    input b,
    input A,
    input B,
    input C,
    input D,
    output Y
    );

    assign Y = (~b&~a&A)|( ~b&a&B)|(b&~a&C)|(a&b&D);

endmodule

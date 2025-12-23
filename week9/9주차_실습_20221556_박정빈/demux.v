`timescale 1ns / 1ps

module demux(
    input a,
    input b,
    input X,
    output A,
    output B,
    output C,
    output D
    );
    
    assign A = ~b&~a&X;
    assign B = ~b&a&X;
    assign C = b&~a&X;
    assign D = a&b&X;
endmodule

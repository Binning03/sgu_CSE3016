`timescale 1ns/1ps

module parallel_subtractor (
    input [3:0] A,
    input [3:0] B,
    input b_in,
    output [3:0] D,
    output b_out
);

    wire b1, b2, b3;

    assign D[0] = (A[0] ^ B[0]) ^ b_in;
    assign b1   = ((~(A[0] ^ B[0])) & b_in) | ((~A[0]) & B[0]);

    assign D[1] = (A[1] ^ B[1]) ^ b1;
    assign b2   = ((~(A[1] ^ B[1])) & b1) | ((~A[1]) & B[1]);

    assign D[2] = (A[2] ^ B[2]) ^ b2;
    assign b3   = ((~(A[2] ^ B[2])) & b2) | ((~A[2]) & B[2]);

    assign D[3]   = (A[3] ^ B[3]) ^ b3;
    assign b_out  = ((~(A[3] ^ B[3])) & b3) | ((~A[3]) & B[3]);

endmodule

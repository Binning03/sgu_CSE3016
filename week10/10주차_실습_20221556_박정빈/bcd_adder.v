`timescale 1ns/1ps

module bcd_adder (
    input  [3:0] A,
    input  [3:0] B,
    input  C_in,
    output [3:0] S,
    output C_out
);

    wire [3:0] S_tmp;
    wire K;
    wire [3:0] BCD_plus;
    wire carry_tmp;
    wire output_carry;

    parallel_adder FA1 (
        .A(A),
        .B(B),
        .C_in(C_in),
        .C_out(K),
        .S(S_tmp)
    );

    assign output_carry = K | (S_tmp[3] & S_tmp[2]) | (S_tmp[3] & S_tmp[1]);
    assign BCD_plus = {1'b0, output_carry, output_carry, 1'b0};

    parallel_adder FA2 (
        .A(S_tmp),
        .B(BCD_plus),
        .C_in(1'b0),
        .C_out(carry_tmp),
        .S(S)
    );

    assign C_out = output_carry;

endmodule

`timescale 1ns / 1ps

module parallel_adder (
    input [3:0] A,
    input [3:0] B,
    input C_in, 
    output [3:0] S,
    output C_out
);

    wire C1, C2, C3;
    FA FA0 (
        .A(A[0]), 
        .B(B[0]), 
        .Cin(C_in), 
        .S(S[0]), 
        .Cout(C1)
    );
    FA FA1 (
        .A(A[1]), 
        .B(B[1]), 
        .Cin(C1),     
        .S(S[1]), 
        .Cout(C2)
    );
    FA FA2 (
        .A(A[2]), 
        .B(B[2]), 
        .Cin(C2),  
        .S(S[2]), 
        .Cout(C3)
    );
  FA FA3 (
        .A(A[3]), 
        .B(B[3]), 
        .Cin(C3),
        .S(S[3]), 
        .Cout(C_out)
    );

endmodule

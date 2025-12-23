`timescale 1ns/1ps

module tb_mux;

    reg a, b;
    reg A, B, C, D;
    
    wire Y;

    mux u_mux (
        .a(a),
        .b(b),
        .A(A),
        .B(B),
        .C(C),
        .D(D),
        .Y(Y)
    );

    initial begin
a = 1'b0;
b = 1'b0;
    A = 1'b0;
    B = 1'b0;
    C = 1'b0;
    D = 1'b0;
end

always @(*) begin
    a <= #10 ~a;
    b <= #20 ~b;
    A <= #40 ~A;
    B <= #80 ~B;
    C <= #160 ~C;
    D <= #320 ~D;
end

initial begin
    #1000
    $finish;
end

endmodule

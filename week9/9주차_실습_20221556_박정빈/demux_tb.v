`timescale 1ns/1ps

module tb_demux;

    reg X;
    reg a, b;

    wire A, B, C, D;

    demux u_demux (
        .X(X),
        .a(a),
        .b(b),
        .A(A),
        .B(B),
        .C(C),
        .D(D)
    );

  initial begin
X = 1'b0;
a = 1'b0;
b = 1'b0;

end

always @(*) begin
    a <= #10 ~a;
    b <= #20 ~b;
    X <= #40 ~X;
end

initial begin
    #200
    $finish;
end

endmodule

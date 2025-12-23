`timescale 1ns / 1ps

module bcd_tb;

reg A0,A1,A2,A3;

wire D0, D1,D2,D3,D4,D5,D6,D7,D8,D9;

bcd u_bcd(
    .A0(A0),
    .A1(A1),
    .A2(A2),
    .A3(A3),
    .D0(D0),
    .D1(D1),
    .D2(D2),
    .D3(D3),
    .D4(D4),
    .D5(D5),
    .D6(D6),
    .D7(D7),
    .D8(D8),
    .D9(D9)
   
);

initial begin
    A0 = 1'b0;
    A1 = 1'b0;
    A2 = 1'b0;
    A3 = 1'b0;
end

always @(*) begin
    A0 <= #10 ~A0;
    A1 <= #20 ~A1;
    A2 <= #40 ~A2;
    A3 <= #80 ~A3;
end

initial begin
    #400
    $finish;
end

endmodule

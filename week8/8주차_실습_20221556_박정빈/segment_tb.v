`timescale 1ns / 1ps

module segment_tb;

reg aa, bb, cc, dd;
wire AA, BB, CC, DD, EE, FF, GG, DP, digit;

segment u_segment(
    .a (aa ),
    .b (bb ),
    .c (cc ),
    .d (dd ),
    .A (AA ),
    .B (BB ),
    .C (CC ),
    .D (DD ),
    .E (EE ),
    .F (FF ),
    .G (GG ),
    .DP (DP ),
    .digit (digit)
);

initial begin
    aa = 1'b0;
    bb = 1'b0;
    cc = 1'b0;
    dd = 1'b0;
end

always @(*) begin
    aa <= #10 ~aa;
    bb <= #20 ~bb;
    cc <= #40 ~cc;
    dd <= #80 ~dd;
end

initial begin
    #400
    $finish;
end

endmodule

`timescale 1ns / 1ps

module Boolean1_A_tb;

reg aa, bb, cc;
wire dd;

Boolean1_A u_Boolean1_A(
    .a (aa ),
    .b (bb ),
    .c (cc ),
    .d (dd )
);

initial begin
    aa = 1'b0;
    bb = 1'b0;
    cc = 1'b0;
end

always @(*) begin
    aa <= #10 ~aa;
    bb <= #20 ~bb;
    cc <= #30 ~cc;
end

initial begin
    #1000
    $finish;
end

endmodule

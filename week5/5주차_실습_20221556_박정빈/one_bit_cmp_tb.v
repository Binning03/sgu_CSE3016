`timescale 1ns / 1ps

module one_bit_cmp_tb;

reg aa, bb;
wire cc, dd, ee, ff;

one_bit_cmp u_one_bit_cmp(
    .a (aa ),
    .b (bb ),
    .c (cc ),
    .d (dd ),
    .e (ee ),
    .f (ff )
);

initial begin
    aa = 1'b0;
    bb = 1'b0;
end

always @(*) begin
    aa <= #10 ~aa;
    bb <= #20 ~bb;
end

initial begin
    #200
    $finish;
end

endmodule

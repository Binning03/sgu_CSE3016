`timescale 1ns / 1ps

module half_sub_tb;

reg AA,BB;
wire DD, bb;

half_sub u_half_sub(
    .A (AA ),
    .B (BB ),
    .D (DD ),
    .b (bb )
);

initial begin
    AA = 1'b0;
    BB = 1'b0;
end

always @(*) begin
    AA <= #10 ~AA;
    BB <= #20 ~BB;
end

initial begin
    #100
    $finish;
end

endmodule

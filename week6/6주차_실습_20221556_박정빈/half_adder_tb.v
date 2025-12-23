`timescale 1ns / 1ps

module half_adder_tb;

reg AA, BB;
wire CC, SS;

half_adder u_half_adder(
    .A (AA ),
    .B (BB ),
    .C (CC ),
    .S (SS )
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

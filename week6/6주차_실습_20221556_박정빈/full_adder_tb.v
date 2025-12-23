`timescale 1ns / 1ps

module full_adder_tb;

reg AA, BB, CCin;
wire CCout, SS;

full_adder u_full_adder(
    .A (AA ),
    .B (BB ),
    .Cin (CCin ),
    .S (SS ),
    .Cout (CCout)
);

initial begin
    AA = 1'b0;
    BB = 1'b0;
    CCin = 1'b0;
end

always @(*) begin
    AA <= #10 ~AA;
    BB <= #20 ~BB;
    CCin <= #40 ~CCin;
end

initial begin
    #100
    $finish;
end

endmodule

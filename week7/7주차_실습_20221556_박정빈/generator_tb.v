`timescale 1ns / 1ps

module generator_tb;

reg AA, BB, CC, DD;
wire PP;

generator u_generator(
    .A (AA ),
    .B (BB ),
    .C (CC ),
    .D (DD ),
    .P (PP )
);

initial begin
    AA = 1'b0;
    BB = 1'b0;
    CC = 1'b0;
    DD = 1'b0;
end

always @(*) begin
    AA <= #10 ~AA;
    BB <= #20 ~BB;
    CC <= #40 ~CC;
    DD <= #80 ~DD;
end

initial begin
    #400
    $finish;
end

endmodule

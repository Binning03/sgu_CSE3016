`timescale 1ns / 1ps

module converter_tb;

reg AA1, BB1, CC1, DD1;
wire AA2, BB2, CC2, DD2;

converter u_converter(
    .A1 (AA1 ),
    .B1 (BB1 ),
    .C1 (CC1 ),
    .D1 (DD1 ),
    .A2 (AA2 ),
    .B2 (BB2 ),
    .C2 (CC2 ),
    .D2 (DD2 )
);

initial begin
    AA1 = 1'b0;
    BB1 = 1'b0;
    CC1 = 1'b0;
    DD1 = 1'b0;
end

always @(*) begin
    AA1 <= #10 ~AA1;
    BB1 <= #20 ~BB1;
    CC1 <= #40 ~CC1;
    DD1 <= #80 ~DD1;
end

initial begin
    #400
    $finish;
end

endmodule

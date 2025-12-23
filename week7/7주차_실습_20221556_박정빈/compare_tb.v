`timescale 1ns / 1ps

module compare_tb;

reg AA1, AA2, BB1, BB2;
wire FF1, FF2, FF3;

compare u_compare(
    .A1 (AA1 ),
    .A2 (AA2 ),
    .B1 (BB1 ),
    .B2 (BB2 ),
    .F1 (FF1 ),
    .F2 (FF2 ),
    .F3 (FF3 )
);

initial begin
    AA1 = 1'b0;
    AA2 = 1'b0;
    BB1 = 1'b0;
    BB2 = 1'b0;
end

always @(*) begin
    AA1 <= #10 ~AA1;
    AA2 <= #20 ~AA2;
    BB1 <= #40 ~BB1;
    BB2 <= #80 ~BB2;
end

initial begin
    #400
    $finish;
end

endmodule

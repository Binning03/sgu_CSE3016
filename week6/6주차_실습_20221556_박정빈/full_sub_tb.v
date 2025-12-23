`timescale 1ns / 1ps

module full_sub_tb;

reg AA, BB, bbin;
wire DD, bbout;

full_sub u_full_sub(
    .A (AA ),
    .B (BB ),
    .bin (bbin ),
    .D (DD ),
    .bout (bbout )
);

initial begin
    AA = 1'b0;
    BB = 1'b0;
    bbin = 1'b0;
end

always @(*) begin
    AA <= #10 ~AA;
    BB <= #20 ~BB;
    bbin <= #40 ~bbin;
end

initial begin
    #100
    $finish;
end

endmodule

`timescale 1ns / 1ps

module RS_Latch_NAND (
    input R,S,E,
    output Q, notQ
);

    assign Q = ~(~(E & S) & notQ);
    assign notQ = ~(~(E & R) & Q);

endmodule

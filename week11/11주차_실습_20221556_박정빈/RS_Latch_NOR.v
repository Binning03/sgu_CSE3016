`timescale 1ns / 1ps

module RS_Latch_NOR (
    input R,S,E,
    output Q, notQ
);

    assign Q = ~((E & R) | notQ);
    assign notQ = ~((E & S) | Q);

endmodule

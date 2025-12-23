`timescale 1ns / 1ps

module half_sub(
    input A,
    input B,
    output D,
    output b
    );

assign D = A^B;
assign b= (~A)&B;

endmodule
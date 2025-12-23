`timescale 1ns / 1ps

module Boolean2_B(
    input a,
    input b,
    input c,
    output d
    );

assign d=~((a|b)&c);

endmodule
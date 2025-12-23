`timescale 1ns / 1ps

module segment(
    input a,
    input b,
    input c,
    input d,
    output A,
    output B,
    output C,
    output D,
    output E,
    output F,
    output G,
    output DP,
    output digit
    );

assign A = ((~a)&&c) || (b&&c) || ((~b)&&(~d)) || (a&&(~d)) || ((~a)&&b&&d) || (a&&(~b)&&(~c));
assign B = ((~a)&&(~b)) || ((~b)&&(~d)) || ((~a)&&(~c)&&(~d)) || ((~a)&&c&&d) || (a&&(~c)&&d);
assign C = ((~a)&&(~c)) || ((~a)&&d) || ((~c)&&d) || ((~a)&&b) || (a&&(~b));
assign D = ((~a)&&(~b)&&(~d)) || ((~b)&&c&&d) || (b&&(~c)&&d) || (b&&c&&(~d)) || (a&&(~c)&&(~d));
assign E = ((~b)&&(~d)) || (c&&(~d)) || (a&&c) || (a&&b);
assign F = ((~c)&&(~d)) || (b&&(~d)) || (a&&(~b)) || (a&&c) || ((~a)&&b&&(~c));
assign G = ((~b)&&c) || (c&&(~d)) || (a&&(~b)) || (a&&d) || ((~a)&&b&(~c));

assign DP = 1;
assign digit = A || B || C || D || E || F || G;

endmodule
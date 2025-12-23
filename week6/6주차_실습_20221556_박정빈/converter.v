`timescale 1ns / 1ps

module converter(
    input A1,
    input B1,
    input C1,
    input D1,
    output A2,
    output B2,
    output C2,
    output D2
    );

assign A2 = (B1&D1)|(B1&C1)|A1;
assign B2 = A1|(B1&(~D1))|(B1&C1);
assign C2 = A1|((~B1)&C1)|(B1&(~C1)&D1);
assign D2 = D1;

endmodule
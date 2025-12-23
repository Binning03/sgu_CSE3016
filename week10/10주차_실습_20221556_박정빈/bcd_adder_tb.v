`timescale 1ns/1ps

module bcd_adder_tb;
    reg [3:0] A;   
    reg [3:0] B;
    reg C_in; 
    wire [3:0] S;   
    wire C_out;
 
    bcd_adder u_bcd_adder (
        .A(A),
        .B(B),
        .C_in(C_in),
        .S(S),
        .C_out(C_out)
    );
    
   
    initial begin
            A = 4'D0;
            B = 4'D0;
            C_in = 1'b0;
        end
        
        always @(A or B or C_in) begin
            A <= #10 A+4'D1;
            B <= #20 B-4'D1;
            C_in <= #40 ~C_in;
        end

endmodule

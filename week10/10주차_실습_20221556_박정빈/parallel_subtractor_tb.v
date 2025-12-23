`timescale 1ns/1ps

module parallel_subtractor_tb;
    reg [3:0] A;   
    reg [3:0] B;   
    reg b_in; 
    wire [3:0] D;     
    wire b_out; 
 
    parallel_subtractor u_parallel_subtractor (
        .A(A),
        .B(B),
        .b_in(b_in),
        .D(D),
        .b_out(b_out)
    );
    
   
    initial begin
            A = 4'D0;
            B = 4'D0;
            b_in = 1'b0;
        end
        
        always @(A or B or b_in) begin
            A <= #10 A+4'D1;
            B <= #20 B-4'D1;
            b_in <= #40 ~b_in;
        end

endmodule

`timescale 1ns / 1ps

module D_FlipFlop_tb;

    reg clk;
    reg D;
    wire Q;
    wire notQ;

    D_FlipFlop u_D_FlipFlop (
        .clk(clk), 
        .D(D), 
        .Q(Q), 
        .notQ(notQ)
    );
    
    initial begin
        clk = 1'b0;
        D = 1'b0;
    end

    always @(*) begin
        D <= #7 ~D;
        clk <= #10 ~clk;
    end

    initial begin
        #100
        $finish;
    end

endmodule

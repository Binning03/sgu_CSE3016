`timescale 1ns / 1ps

module ring_counter_tb;
    reg clk, rst;
    wire [3:0] out;

    ring_counter ring_counter_tb(clk, rst, out);

    initial begin
        clk = 1'b0;
        rst = 1'b1;
    end
    
    always clk = #10 ~clk;
    
    initial begin
        #20;
        rst = 1'b0;
        #380;
        rst = 1'b1;
        #100;
        $finish;
    end

endmodule

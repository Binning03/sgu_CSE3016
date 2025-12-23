`timescale 1ns / 1ps

module two_bit_counter_tb;

    reg clk, rst;
    wire[1:0] out;
    
    two_bit_counter two_bit_counter_tb(clk, rst, out);
    
    always #10 clk = ~clk;
    
    initial begin
        clk <= 1'b0;
        rst <= 1'b0;
        #20 rst <= 1'b1;
        #80 rst <= 1'b0;
        #50 rst <= 1'b1;
    end
    
    initial begin
        #300
        $finish;
    end

endmodule

`timescale 1ns / 1ps

module decade_counter_tb;

    reg clk, rst;
    wire[3:0] out;
    
    decade_counter decade_counter_tb(clk, rst, out);
    
    always #10 clk = ~clk;
    
    initial begin
        clk <= 1'b0;
        rst <= 1'b0;
        #20 rst <= 1'b1;
        #80 rst <= 1'b0;
        #50 rst <= 1'b1;
    end
    
    initial begin
        #400
        $finish;
    end

endmodule

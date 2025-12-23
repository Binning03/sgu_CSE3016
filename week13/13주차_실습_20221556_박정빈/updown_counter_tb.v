`timescale 1ns / 1ps

module updown_counter_tb;
    reg clk, rst, updown;
    wire [3:0] out;
    wire [6:0] display;

    updown_counter u_updown_counter (
        .clk(clk),
        .rst(rst),
        .updown(updown),
        .out(out),
        .display(display)
    );

    initial begin
        clk = 1'b0;
        rst = 1'b1;
        updown = 1'b0;
    end
    
    always #10 clk = ~clk;

    initial begin
        #20;
        rst = 1'b0;
        #200;
        updown = 1'b1;
        #240;
        rst = 1'b1;
        #100;
        $finish;
    end

endmodule

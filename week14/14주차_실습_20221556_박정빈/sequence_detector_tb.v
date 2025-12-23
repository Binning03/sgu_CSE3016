`timescale 1ns/1ps

module sequence_detector_tb;

reg clk, rst, in;
wire [3:0] sequence;
wire out;

sequence_detector sequence_detector_tb(clk, rst, in, sequence, out);

initial begin
    clk = 1'b0;
    rst = 1'b1;
    in = 1'b1;
end
    
    always clk = #10 ~clk;
    
    initial begin
        #20;
        rst = 1'b0;
        #20
            in = 1;
            #20
            in = 0;
            #20
            in = 1;
            #20
            in = 1;
            #20
            in = 1;
            #20
            in = 0;
            #20
            in = 1;
            #20  
            in = 0;
            #20
            in = 0;
            #20
            in = 1;
            #20
            in = 1;
            #20
            in = 0;
            #20
            in = 0;
            #20
            in = 1;
            #20
            in = 1;
            #20  
            in = 0;
            #20
            in = 1;
            #20
            in = 1;
            #20
            in = 0;
            #20   
            $finish;
    end

endmodule

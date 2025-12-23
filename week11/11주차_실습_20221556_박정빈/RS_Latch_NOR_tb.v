`timescale 1ns/1ps

module RS_Latch_NOR_tb;

    reg R, S, E;
    wire Q, notQ;

    RS_Latch_NOR u_RS_Latch_NOR (
        .R(R),
        .S(S),
        .E(E),
        .Q(Q),
        .notQ(notQ)
    );

initial begin
       R = 1'b0;
       S = 1'b0;
       E =1'b0;
    end
    
always @(*) begin
    R <= #10 ~R;
    S <= #20 ~S;
    E <= #40 ~E;
end

initial begin
    #200
    $finish;
end

endmodule

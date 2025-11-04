module d_flop(
    input D, CLK,
    output reg Q,
    output nQ
);

    initial begin
        Q = 0;
    end
    
    always @(posedge CLK) begin
        Q <= D;
    end

    assign nQ = ~Q;

endmodule

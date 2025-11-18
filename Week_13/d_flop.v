module d_flop(
    input D, CLK, reset,
    output reg Q
);

    always @(posedge CLK) begin
        if(reset) begin
            Q <= 1'b0;
     end   else begin
        Q <= D;
    end
end

endmodule

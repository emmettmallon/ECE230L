module d_latch1(
    input wire D, 
    input wire E,
    output wire Q,
    output wire nQ
);

    reg q;
    always @(*) begin 
        if (E)
        q = D;
        end 
        
    assign Q = q;
    assign nQ = ~q;
    
endmodule

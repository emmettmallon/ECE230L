module d_latch_8bit (
    input  [7:0]D,
    input  E,
    output reg[7:0] Q
);
   
    genvar i;
    generate    
        for (i = 0; i < 8; i = i + 1) begin
          d_latch_8 u_latch( // some error on this line
            .D (D[i]),
            .E (E),
            .Q (Q[i])
         );
         end
         
       endgenerate
         
endmodule

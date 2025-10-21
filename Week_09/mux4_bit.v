module mux4_bit(
    input [3:0]CEO, YOU, FRED, JILL,
    input [1:0]Sel, 
    input Enable,
    output [3:0]Out
    );
    
    assign Out = Enable ?
    (Sel == 2'b00 ? CEO : 
    Sel == 2'b01 ? YOU :
    Sel == 2'b10 ? FRED :
    JILL) 
    : 4'b0000;
    
endmodule

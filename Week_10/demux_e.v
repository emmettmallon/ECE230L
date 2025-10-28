module demux_e(
    input wire data,
    input wire [1:0] sel,
    output reg A,
    output reg B,
    output reg C,
    output reg D
    );
    
    always @(*) begin 
        A = 1'b0; 
        B = 1'b0;
        C = 1'b0;
        D = 1'b0;
        
        case (sel) 
            2'b00: A = data;
            2'b01: B = data;
            2'b10: C = data;
            2'b11: D = data;
        endcase
        end
    
endmodule

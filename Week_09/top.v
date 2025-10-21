module top(
    input [15:0]sw,
    input btnL, btnU, btnD, btnR, btnC,
    output [15:0]led
    );
    
    wire [1:0] mux_sel = {btnU, btnL};
    wire [1:0] demux_sel = {btnR, btnD};
    
    wire [3:0] CEO = sw[3:0];
    wire [3:0] YOU = sw[7:4];
    wire [3:0] FRED = sw[11:8];
    wire [3:0] JILL = sw[15:12];
    wire [3:0] mux_out;
    
    mux4_bit mux(
        .CEO(CEO),
        .YOU(YOU),
        .FRED(FRED),
        .JILL(JILL),
        .Sel(mux_sel),
        .Enable(btnC),
        .Out(mux_out)
    );
    
    demux_4bit demux(
        .In(mux_out),
        .Sel(demux_sel),
        .Enable(btnC),
        .local_lib(led[3:0]),
        .fire_dept(led[7:4]),
        .school(led[11:8]),
        .rib_shack(led[15:12])
    );
    
endmodule

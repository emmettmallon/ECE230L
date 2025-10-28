module top(
    input [15:0] sw,
    input btnC,
    output [15:0] led
);

    d_latch1 latch (
        .D (sw[0]),
        .E (btnC),
        .Q (led[0]),
        .nQ (led[1])
     );
     
     wire[7:0] data_in = sw[15:8];
     wire[1:0] addr = sw[7:6];
     wire[7:0] dA, dB, dC, dD;
     
     demux eight_bit (
        .data (data_in),
        .sel (addr),
        .A (dA),
        .B (dB),
        .C (dC),
        .D (dD)
     );
     
     wire eA, eB, eC, eD;
     
     demux_e enable (
        .data (btnC),
        .sel (addr),
        .A (eA),
        .B (eB),
        .C (eC),
        .D (eD)
     );
     
     wire[7:0] qA, qB, qC, qD;
     
     d_latch_8bit byteA (
        .D (dA),
        .E (eA),
        .Q (qA)
     );
     
     d_latch_8bit byteB (
        .D (dB),
        .E (eB),
        .Q (qB)
     );
     
     d_latch_8bit byteC (
        .D (dC),
        .E (eC),
        .Q (qC)
      );
      
      d_latch_8bit byteD (
        .D (dD),
        .E (eD),
        .Q (qD)
      );
      
      wire[7:0] y_out;
      
      mux mux_out (
        .A (qA),
        .B (qB),
        .C (qC),
        .D (qD),
        .sel (addr),
        .Y(y_out)
      );
      
      assign led[15:8] = y_out;
      

endmodule

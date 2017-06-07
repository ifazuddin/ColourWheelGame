module hex_display(in, hexOut);
	/* Sets 7-segment display for hex output */

  input [3:0] in;
  output reg [6:0] hexOut;
  
  always @(in)
    case (in)
      4'h0: hexOut = 7'b1000000;
      4'h1: hexOut = 7'b1111001;
      4'h2: hexOut = 7'b0100100;
      4'h3: hexOut = 7'b0110000;
      4'h4: hexOut = 7'b0011001;
      4'h5: hexOut = 7'b0010010;
      4'h6: hexOut = 7'b0000010;
      4'h7: hexOut = 7'b1111000;
      4'h8: hexOut = 7'b0000000;
      4'h9: hexOut = 7'b0011000;
      default: hexOut = 7'b1000000;
    endcase
endmodule

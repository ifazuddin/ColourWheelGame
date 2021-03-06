//following modules intiially move the object 1 pixel every 15 frames
module sixty_h_div (clock, outclock, outValue, resetn, resetb, enable);
	input clock, resetn, resetb, enable;
	output outclock;
	output [19:0]outValue;
	
	reg [19:0]out;
	parameter n = 20'b1100_1011_0111_0011_0100; // 833333
	
	always @(posedge clock)
	begin
	if (resetn == 1'b0)
		out <= n;
	else if (resetb == 1'b1)
		out <= n;
	else if (out == 20'b0000_0000_0000_0000_0000)
		out <= n;
	else if (enable == 1'b1)
		out <= out - 1'b1;
	end
	assign outclock = (out==20'b0000_0000_0000_0000_0000)?1'b1:1'b0;
	assign outValue = out;
endmodule

module fif_frames (clock_from_ratediv, outfif, resetn, enable, resetb,fif_frames_value);
	input clock_from_ratediv, resetn, enable, resetb;
	output [4:0]fif_frames_value;
	output outfif;
	
	reg [4:0]outF;
	
	always @(posedge clock_from_ratediv)
	begin
	if (resetn == 1'b0)
		outF <= 5'b01110;
	else if (resetb == 1'b1)
		outF <= 5'b01110;
	else if (outF == 5'b00000)
		outF <= 5'b01110;
	else if (enable == 1'b1)
		outF <= outF - 1'b1;
	end

	assign outfif = (outF == 5'b00000)?1:0;
	assign fif_frames_value = outF;
endmodule

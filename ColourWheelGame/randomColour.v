module random_number_lfsr_4bit( //generates random numbers 0-15
  input clock,
  input resetn,

  output reg [3:0] data
);

reg [3:0] data_next;

always @* begin
  data_next[3] = data[3]^data[0];
  data_next[2] = data[2]^data[3];
  data_next[1] = data[1]^data_next[3];
  data_next[0] = data[0]^data_next[2];
  data_next[3] = data[3]^data_next[1];
end

always @(posedge clock)
  if(!resetn)
    data <= 4'hf;
  else
    data <= data_next;

endmodule

module random_colour(clock, resetn, randNum, pickCol, enable);
input clock, resetn, enable;
input [3:0] randNum;
output reg [2:0] pickCol;

initial begin 
pickCol = 3'b001;
end

always@(*)
	begin
	case(randNum)
	
	4'b0000:
	if (enable)
	begin
	pickCol = 3'b100; //red
	end

	4'b0001:
	if (enable)
	begin
	pickCol = 3'b100;
	end
	
	4'b0010:
	if (enable)
	begin
	pickCol = 3'b100;
	end
	
	4'b0011:
	if (enable)
	begin
	pickCol = 3'b100; 
	end
	
	4'b0100:
	if (enable)
	begin
	pickCol = 3'b001; //blue
	end
	
	4'b0101:
	if (enable)
	begin
	pickCol = 3'b001;
	end
	
	4'b0110:
	if (enable)
	begin
	pickCol = 3'b001;
	end
	
	4'b0111:
	if (enable)
	begin
	pickCol = 3'b001;
	end
	
	4'b1000:
	if (enable)
	begin
	pickCol = 3'b110; //yellow
	end	
	
	4'b1001:
	if (enable)
	begin
	pickCol = 3'b110;
	end	
	
	4'b1010:
	if (enable)
	begin
	pickCol = 3'b110;
	end	
	
	4'b1011:
	if (enable)
	begin
	pickCol = 3'b110;
	end
	
	4'b1100:
	if (enable)
	begin
	pickCol = 3'b010; //green
	end	
	
	4'b1101:
	if (enable)
	begin
	pickCol = 3'b010;
	end	
	
	4'b1110:
	if (enable)
	begin
	pickCol = 3'b010;
	end
	
	4'b1111:
	if (enable)
	begin
	pickCol = 3'b010;
	end	
	
	endcase
	end
endmodule

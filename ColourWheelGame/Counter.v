module counter (enable, resetn, clock, outy, outx, _Xr, _Xy, _Xb, _Xg, _Yr, _Yy, _Yb, _Yg, _Ben, _Gen, 
_Yen, _Ren, _Colb, _Colr, _Coly, _Colg, _Colout, _Bdone, _Ydone, _Rdone, _Gdone, resett, _clock, ballCol, 
_colSel, _resetAuto, incrS, gameE, outC_);

	input enable, resetn, _clock, _Bdone, _Ydone, _Rdone, _Gdone, resett, clock, _Ben, _Gen, _Yen, _Ren, 
	_colSel, gameE, _resetAuto;	
	input [6:0] _Yr, _Yy, _Yb, _Yg, incrS, outC_;
	input [7:0] _Xr, _Xy, _Xb, _Xg;
	input [2:0] _Colb, _Colr, _Coly, _Colg, ballCol;
	output reg [2:0] _Colout;
	output reg [6:0] outy;
	output reg [7:0] outx;
	reg [7:0] spd;

	
	initial 
	begin
	spd <= 7'b00000000;
	end
	
	/**********************************************************************/
	//The following always blocks writes from memory different rotations
	//of the wheel
	always@(posedge clock)
		begin
		if (_Ben) 
			begin
				outx <= _Xb;
				outy <= _Yb;
				_Colout <= _Colb;
			end
		if (_Ren) 
			begin
				outx <= _Xr;
				outy <= _Yr;
				_Colout <= _Colr;
			end
		if (_Yen) 
			begin
				outx <= _Xy;
				outy <= _Yy;
				_Colout <= _Coly;
			end
		if (_Gen) 
			begin
				outx <= _Xg;
				outy <= _Yg;
				_Colout <= _Colg;
			end
		else				
			begin
			if (resett == 1'b1)
				begin
				outy <= 7'b0000000;
				outx <= 8'b01010000;
				end
			if (resetn)
				begin
				outy <= 7'b0000000;
				outx <= 8'b01010000;
				end
			if (enable == 1'b1 && gameE == 1'b1)
				begin
				outx <= 8'b01010000; 
				outy <= spd + incrS + outC_[3:2] +10;
				_Colout <= ballCol;
				end
			end
		end
		/**********************************************************************/
	endmodule

//counter that counts to 15 frames	
module clock_counter (enable, resetn, clock, outC, resetAA);
	input enable, resetn, clock, resetAA;
	output reg[3:0]outC;
	
	initial begin
	outC <= 4'b000;
	end
	
	always@(posedge clock)
	begin
	if (enable == 1'b1)
		outC <= outC + 1;
	else if (resetAA == 1'b1)
		outC <= 4'b0000;
	else if (outC == 4'b1111)
		outC <= 4'b0000;
	
	end
endmodule

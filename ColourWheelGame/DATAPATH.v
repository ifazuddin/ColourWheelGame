module datapath (colourValue,enableXC, enableYC,enableC, enableRateDiv, colSel, resetn,
						xout, yout, colout, clock, resetAutoo, counterout,
						fif_framesout, outxCoun, outyCoun, enablefif, reset_Enable,_ben, 
						_gen, _yen, _ren, _colb, _colr, _coly, _colg, _xr, _xy, _xb, _xg, _yr, _yy, 
						_yb, _yg, _bdone, _ydone, _rdone, _gdone, _gameEn, ballC, newColEn, _incrSpeed);
		
		input [9:0]colourValue;
		input enableXC, enableYC, enableC, colSel, resetn, clock, resetAutoo, enableRateDiv, 
		enablefif, _ben, _gen, _yen, _ren, _bdone, _ydone, _rdone, _gdone, newColEn, _incrSpeed, reset_Enable, _gameEn;
		input [7:0] _xr, _xy, _xb, _xg;
		input [6:0] _yr, _yy, _yb, _yg;
		output [7:0]xout;
		output [6:0]yout;
		output [2:0]colout, _colb, _colr, _coly, _colg, ballC;
		output [3:0]counterout;
		output [4:0]fif_framesout;
		output [7:0]outxCoun;
		output [6:0]outyCoun;
		
		wire [7:0]xcountout;
		wire [6:0]ycountout;
		wire fifteen_frames;
		wire [3:0] rand_num;
		wire [2:0] ball_colour;	
		wire [3:0]outCounter;
		
		//4-bit wire "rand_num" is sent to "random_number_lfsr_4bit" module to generate 4-bit number
		random_number_lfsr_4bit randn(clock, resetn, rand_num);
		
		//colour of ball is chosen depending on value of "rand_num"
		random_colour randcol(clock, resetn, rand_num, ball_colour, newColEn); 
		
		assign ballC = ball_colour;
		
		//counter that controls x & y outputs to vga adapter
		counter counter_(enableYC, resetn, fifteen_frames, yout, xout, _xr, _xy,_xb, _xg, _yr, _yy, _yb,
		_yg, _ben, _gen, _yen, _ren, _colb, _colr, _coly, _colg, colout, _bdone, _ydone, _rdone, _gdone, reset_Enable, 
		clock, ball_colour, colSel, resetAutoo, _incrSpeed, _gameEn, outCounter);
		//counter that counts to 15 frames
		clock_counter clock_counter_ (enableC, resetn, clock, outCounter, reset_Enable); 
		
		wire outFromRateDiv;
		
		wire [19:0]outRate;
		wire [4:0]fifOut;
		
		//the following instances initially moves the object from the top of the screen one pixel every 15 frames
		sixty_h_div RD1 (clock, outFromRateDiv, outRate, resetn, resetAutoo, enableRateDiv);
		fif_frames F_F_1(outFromRateDiv, fifteen_frames, resetn, enablefif, resetAutoo,fifOut);				
		
		assign counterout = outCounter;
		assign fif_framesout = fifOut;
		assign outxCoun = xcountout;
		assign outyCoun = ycountout;
endmodule

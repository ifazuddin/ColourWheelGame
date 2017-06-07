module fsm (go, counter, frames, xcounterValue, ycounterValue,
				enablexcounter, enableycounter, enablecounter, selectcol, 
				ratedivEnable, framesEnable, autoReset, resetn,
				clock, writeEn, resetEnable, left, right, bdone_, ydone_, 
				rdone_, gdone_, xb_, xg_, xy_, xr_, yb_, yg_, yy_, 
				yr_, gen_, yen_, ren_, ben_, score1_, score2_, hscore1_, 
				hscore2_, gameEn_, x_, y_, colBall, newColEn_, incrSpeed_);
				
	input go, clock, left, right;
	input [2:0]colBall;
	input [3:0]counter;
	input [4:0]frames;
	input [7:0]xcounterValue, xb_, xg_, xy_, xr_, x_;
	input [6:0]ycounterValue, yb_, yg_, yy_, yr_, y_;
	input resetn, bdone_, ydone_, rdone_, gdone_;
	output reg newColEn_;
	output reg [3:0] score1_, score2_, hscore1_, hscore2_;
	output reg enablexcounter,resetEnable, enableycounter, enablecounter, 
	selectcol, ratedivEnable, framesEnable, autoReset, writeEn, gen_, yen_, ren_, ben_, gameEn_;
	parameter reset_s = 4'b0000, state2 = 4'b0001 , state3 = 4'b0010, state4 = 4'b0011, 
				state5 = 4'b0100, state6 = 4'b0101,
				state7 = 4'b0110, state8 = 4'b0111, state9 = 4'b1000, state10 = 4'b1001, 
				state11 = 4'b1010, state12 = 4'b1011, state13 = 4'b1100;
				
	output reg [6:0] incrSpeed_;
	parameter bbb = 3'b000, ggg = 3'b001, yyy= 3'b010, rrr = 3'b011;
	reg [3:0]pres_s, next_s;
	reg [2:0] rotation, rotation_next;

	initial begin
	score1_ = 4'h0;
	score2_ = 4'h0;
	hscore1_ = 4'h0;
	hscore2_ = 4'h0;
	end
	/*********************************************************************************/
	//The following FSM consists of the always blocks that control the gameplay by: 
	//1)starting the game when KEY_ is pressed
	//2)cross-checking the rotation of the wheel with the current colour of the ball
   //3)resetting the framecounter
	//4)updating the current gamescore	
	always@(*)
	begin
	case(pres_s)
	reset_s: 
		begin
			score1_ = 4'h0000;
			score2_ = 4'h0000;
			next_s = state2;
		end
	
	state2: 
		if (go == 1'b0)
			next_s = state3;
		else 
			next_s = state2;	
	
	state3:
		begin
			next_s = state4;
			gameEn_ = 1'b1;
		end
	
	state4: 
	if ((y_ >  7'b01110111 || y_ == 7'b01110111) && bdone_ && ydone_ && rdone_ && gdone_)
		begin
			incrSpeed_ <= incrSpeed_ + 1;
			
			if((ben_ == 1'b1 && colBall == 3'b001) || (ren_ == 1'b1  && colBall == 3'b100) 
			|| (yen_ == 1'b1  && colBall == 3'b110) || (gen_ == 1'b1  && colBall == 3'b010))
				begin
					next_s = state3;
				
				if (score2_ == 4'h1001)
					begin
						score2_ <= 4'h0000;
						score1_ <= score1_ + 4'h0001;
					end
				else
					begin
						score2_ <= score2_ +4'h0001;
					end
				end
			
			else if(!((ben_ == 1'b1 && colBall == 3'b001) || (ren_ == 1'b1  && colBall == 3'b100) 
			|| (yen_ == 1'b1  && colBall == 3'b110) || (gen_ == 1'b1  && colBall == 3'b010)))
				begin
					incrSpeed_ <= 7'b0000001;
					next_s = reset_s;
					gameEn_ = 1'b0;
				end
			
			else if (counter < 4'b1111) 
					next_s = state4;	

			else 
				next_s = state5;
		end
		
	state5:
		next_s = state6;
	
	state6:
		if (frames > 5'b00010) 
			next_s = state6;
		else 
			next_s = state7;
	
	state7:
		if (counter < 4'b1111) 
			next_s = state7;
		else 
			next_s = state8;
	
	state8: 
		next_s = state9;
		
	state9: 
		if (frames == 5'b01101) 
			next_s = state10;
		else next_s = state9;
			
	state10: 
		next_s = state3;
		
	endcase
	end
	
		
	always@(*)
	
	begin
	case(pres_s)
	reset_s:
	begin
	enableycounter = 1'b0;
	enablecounter = 1'b0;
	selectcol = 1'b0;
	ratedivEnable = 1'b0;
	framesEnable = 1'b0;
	autoReset = 1'b0;
	writeEn = 1'b0;
	resetEnable = 1'b0;
	end
	
	state2:
	begin
	enableycounter = 1'b0;
	enablecounter = 1'b0;
	selectcol = 1'b0;
	ratedivEnable = 1'b0;
	framesEnable = 1'b0;
	autoReset = 1'b0;
	writeEn = 1'b0;
	resetEnable = 1'b0;
	end
	
	state3:
	begin
	newColEn_ = 1'b1;
	enableycounter  = 1'b0;
	enablecounter  = 1'b0;
	selectcol  = 1'b0;
	ratedivEnable = 1'b0;
	framesEnable = 1'b0;
	autoReset = 1'b1;
	writeEn = 1'b0;
	resetEnable = 1'b0;
	end
	
	state4:
	begin
	newColEn_ = 1'b0;
	enableycounter  = 1'b1;
	enablecounter = 1'b1;
	selectcol = 1'b0;
	ratedivEnable = 1'b1;
	framesEnable = 1'b1;
	autoReset = 1'b0;
	writeEn = 1'b1;
	resetEnable = 1'b0;
	end
	
	state5:
	begin
	enableycounter = 1'b0;
	enablecounter = 1'b0; 
	selectcol = 1'b0;
	ratedivEnable = 1'b1;
	framesEnable = 1'b1;
	autoReset = 1'b0;
	writeEn = 1'b0;
	resetEnable = 1'b0;
	end
	
	state6:
	begin
	enableycounter = 1'b1;
	enablecounter = 1'b0;
	selectcol = 1'b0;
	ratedivEnable = 1'b1;
	framesEnable = 1'b1;
	autoReset = 1'b0;
	writeEn = 1'b1;
	resetEnable = 1'b1;
	end
	
	state7:
	begin
	enableycounter = 1'b1;
	enablecounter = 1'b1;
	selectcol = 1'b1;
	ratedivEnable = 1'b1;
	framesEnable= 1'b1;
	autoReset = 1'b0;
	writeEn = 1'b1;
	resetEnable = 1'b0;
	end
	
	state8:
	begin
	enableycounter = 1'b1;
	enablecounter = 1'b0;
	selectcol = 1'b1;
	ratedivEnable = 1'b1;
	framesEnable = 1'b1;
	autoReset = 1'b0;
	writeEn = 1'b0;
	resetEnable = 1'b0;
	end
	
	state9:
	begin
	enableycounter = 1'b1;
	enablecounter = 1'b0;
	selectcol = 1'b0;
	ratedivEnable = 1'b1;
	framesEnable = 1'b1;
	autoReset = 1'b0;
	writeEn = 1'b0;
	resetEnable = 1'b0;
	end
	
	state10:
	begin
	enableycounter = 1'b1;
	enablecounter = 1'b0;
	selectcol = 1'b0;
	ratedivEnable = 1'b1;
	framesEnable = 1'b1;
	autoReset = 1'b0;
	writeEn = 1'b0;
	resetEnable = 1'b0;
	end
	
	default:
	begin
	enableycounter = 1'b0;
	enablecounter = 1'b0;
	selectcol = 1'b0;
	ratedivEnable = 1'b0;
	framesEnable = 1'b0;
	autoReset = 1'b0;
	writeEn = 1'b0;
	resetEnable = 1'b0;
	end
	
	endcase
	end
		
	always @ (posedge clock)
	begin
	if (resetn == 1'b0)
		pres_s = reset_s;
	else 
		pres_s = next_s;
	end
	
	/*********************************************************************************/
	//The following FSM consists of the always blocks that control the rotation of the
	//wheel
	always@(*)
	begin
	case(rotation)
	
	bbb:
		begin
		ben_ = 1'b0;
		if(left && !right)
			begin			
			rotation_next <= yyy;
			yen_ = 1'b1;
			end
		if (right && !left) 
			begin
			rotation_next <= ggg;
			gen_ = 1'b1;
			end
		end
	rrr: 
		begin
		ren_ = 1'b0;
		if(left && !right) 
			begin
			rotation_next <= ggg;
			gen_ = 1'b1;
			end
		if (right && !left) 
			begin
			rotation_next <= yyy;
			yen_ = 1'b1;
			end
		end
	yyy: 
		begin
		yen_ = 1'b0;
		if(left && !right) 
			begin
			rotation_next <= rrr;
			ren_ = 1'b1;
			end
		if (right && !left) 
			begin
			rotation_next <= bbb;
			ben_ = 1'b1;
			end
		end
	ggg: 
		begin
		gen_ = 1'b0;
		if(left && !right) 
			begin
			rotation_next <= bbb;
			ben_ = 1'b1;
			end
		if (right && !left) 
			begin
			rotation_next <= yyy;
			yen_ = 1'b1;
			end
		end
	default: begin
			ben_ = 1'b1;
			rotation_next = bbb;
			end
	endcase
	end
	
	
	
	always @ (posedge clock)
	begin
	if (resetn == 1'b1)
		rotation <= bbb;
	else
		rotation = rotation_next;
	end
	/*********************************************************************************/
	//The following always block updates the highscore	as the game goes on
	always@(*)
		if ((hscore1_ == score1_) && (score2_ > hscore2_))
			begin
				hscore2_ <= score2_;
				hscore1_ <= score1_;
			end
		else if (hscore1_ < score1_)
			begin
				hscore1_ <= score1_;
				hscore1_ <= score2_;
			end	
	/*********************************************************************************/
endmodule

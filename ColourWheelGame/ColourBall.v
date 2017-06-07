module ColourBall
	(
		CLOCK_50,						//	On Board 50 MHz
		// Your inputs and outputs here
        KEY,
        SW,
		HEX0,
		HEX1,	
		HEX4,
		HEX5,
		// The ports below are for the VGA output.  Do not change.
		VGA_CLK,   						//	VGA Clock
		VGA_HS,							//	VGA H_SYNC
		VGA_VS,							//	VGA V_SYNC
		VGA_BLANK_N,						//	VGA BLANK
		VGA_SYNC_N,						//	VGA SYNC
		VGA_R,   						//	VGA Red[9:0]
		VGA_G,	 						//	VGA Green[9:0]
		VGA_B   						//	VGA Blue[9:0]
	);

	input			CLOCK_50;				//	50 MHz
	input   [9:0]   SW;
	input   [3:0]   KEY;

	// Declare your inputs and outputs here
	output 	[6:0]			HEX0, HEX1, HEX4, HEX5;
	// Do not change the following outputs
	output			VGA_CLK;   				//	VGA Clock
	output			VGA_HS;					//	VGA H_SYNC
	output			VGA_VS;					//	VGA V_SYNC
	output			VGA_BLANK_N;				//	VGA BLANK
	output			VGA_SYNC_N;				//	VGA SYNC
	output	[9:0]	VGA_R;   				//	VGA Red[9:0]
	output	[9:0]	VGA_G;	 				//	VGA Green[9:0]
	output	[9:0]	VGA_B;   				//	VGA Blue[9:0]
	
	wire resetn;
	assign resetn = KEY[0];

	// Create the colour, x, y and writeEn wires that are inputs to the controller.

	wire [2:0] colour;
	wire [7:0] x;
	wire [6:0] y;
	wire writeEn;

	// Create an Instance of a VGA controller - there can be only one!		
	// Define the number of colours as well as the initial background
	// image file (.MIF) for the controller.
	vga_adapter VGA(
			.resetn(resetn),
			.clock(CLOCK_50),
			.colour(colour),
			.x(x),
			.y(y),
			.plot(writeEn),
			/* Signals for the DAC to drive the monitor. */
			.VGA_R(VGA_R),
			.VGA_G(VGA_G),
			.VGA_B(VGA_B),
			.VGA_HS(VGA_HS),
			.VGA_VS(VGA_VS),
			.VGA_BLANK(VGA_BLANK_N),
			.VGA_SYNC(VGA_SYNC_N),
			.VGA_CLK(VGA_CLK));
		defparam VGA.RESOLUTION = "160x120";
		defparam VGA.MONOCHROME = "FALSE";
		defparam VGA.BITS_PER_COLOUR_CHANNEL = 1;
		defparam VGA.BACKGROUND_IMAGE = "blue.mif";
			
	// Put your code here. Your code should produce signals x,y,colour and writeEn	
	// for the VGA controller, in addition to any other functionality your design may require.
    
	wire [3:0]counvalue;
	wire [6:0]count_y_val;
	wire [7:0]count_x_val;
	wire enableyc, enablec, enableRDiv, colourselect, resetA, enablefifF, gameEn;
	wire [4:0]fifteen_fram;
	wire [6:0]y_counterVale;
	wire [7:0]x_counterVale;
	wire resetWA;
	wire [14:0] addg, addb, addy, addr; 
	wire [2:0] colg, colb, coly, colr, ballC_; 
	wire gen, yen, ren, ben, newBallColEn, resetSpeed, incrSpeed;
	wire bdone, ydone, rdone, gdone;
	wire [6:0] yb, yg, yy, yr;
	wire [7:0] xb, xg, xy, xr;
	wire [3:0] score1, score2, hscore1, hscore2; 
	
	
	//Memory instanstiaton
	blue blue_inst(addb, CLOCK_50, colb);
	green green_inst(addg, CLOCK_50, colg);
	red red_inst (addr, CLOCK_50, colr);
	yellow yellow_inst(addy, CLOCK_50, coly);
	
	//load wheels
	loadWheel wheelb (CLOCK_50, ben, xb, yb, addb, bdone);
	loadWheel wheelg (CLOCK_50, gen, xg, yg, addg, gdone);
	loadWheel wheelr (CLOCK_50, ren, xr, yr, addr, rdone);
	loadWheel wheely (CLOCK_50, yen, xy, yy, addy, ydone);
    
	 // Instanciate datapath
	 datapath (SW, enablexc, enableyc,enablec, enableRDiv, colourselect,resetn,
						x, y, colour, CLOCK_50, resetA, counvalue, fifteen_fram, x_counterVale, 
						y_counterVale,enablefifF,resetWA, ben, gen, yen, ren,
						colb, colr, coly, colg, xr, xy, xb, xg, yr, yy, 
						yb, yg, bdone, ydone, rdone, gdone, gameEn, ballC_, newBallColEn, incrSpeed);

						
	 
    // Instanciate FSM control
	fsm (KEY[1], counvalue, fifteen_fram, x_counterVale, y_counterVale,
				enablexc, enableyc, enablec, colourselect, enableRDiv, enablefifF, resetA, resetn,
				CLOCK_50,writeEn,resetWA, KEY[3], KEY[2], bdone, ydone, rdone, gdone, xb, xg, xy, xr, 
				yb, yg, yy, yr, gen, yen, ren, ben, score1, score2, hscore1, hscore2, gameEn, x, y, ballC_, newBallColEn, incrSpeed);
	 
	 //hex display instantiations
	 hex_display s1(score1, HEX1);
	 hex_display s2(score2, HEX0);
	 hex_display hs1(hscore1, HEX5);
	 hex_display hs2(hscore2, HEX4);
endmodule


//module writes from memory to screen the wheel
module loadWheel (clk, enable, xCount, yCount, address, done);
 	input clk, enable; 
 	output 	reg [7:0]xCount; 
	output 	reg [6:0]yCount; 
 	output reg [14:0]address; 
 	output reg done; 
 	 
 	initial begin 
 	xCount = 0; 
 	yCount = 0; 
 	address = 2; 
	done<=1;
 	end	 
 	 
 	always @ (posedge clk) 
 	begin 
	if (enable) 
		begin
		done <= 0;  
		address <= 2; 
		xCount = 0;		
		yCount = 0;
		if (xCount < 8'd159) 
			xCount <= xCount +1; 
		else if (xCount==8'd159) 
			begin 
				if (yCount<7'd119) 
					begin 
						xCount<=0; 
						yCount<=yCount+1; 
						end 
				else if (yCount==7'd119) 
					done<=1; 
			end 
		address <= address+15'b1; 
	end
		end
endmodule












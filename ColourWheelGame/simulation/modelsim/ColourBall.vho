-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 15.0.0 Build 145 04/22/2015 SJ Full Version"

-- DATE "12/02/2015 11:42:44"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ColourBall IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	SW : IN std_logic_vector(9 DOWNTO 0);
	HEX0 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX1 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX4 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX5 : BUFFER std_logic_vector(6 DOWNTO 0);
	VGA_CLK : BUFFER std_logic;
	VGA_HS : BUFFER std_logic;
	VGA_VS : BUFFER std_logic;
	VGA_BLANK_N : BUFFER std_logic;
	VGA_SYNC_N : BUFFER std_logic;
	VGA_R : BUFFER std_logic_vector(9 DOWNTO 0);
	VGA_G : BUFFER std_logic_vector(9 DOWNTO 0);
	VGA_B : BUFFER std_logic_vector(9 DOWNTO 0)
	);
END ColourBall;

-- Design Ports Information
-- SW[0]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AC9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_AG27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_AF28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_AG28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_AH28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_AJ29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_AH29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_AH30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_AG30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_AF29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_AF30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[0]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[1]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[2]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[4]	=>  Location: PIN_W24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[5]	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[6]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[0]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[1]	=>  Location: PIN_AA28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[2]	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[3]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[4]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[5]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[6]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_CLK	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_HS	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_VS	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_BLANK_N	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_SYNC_N	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[0]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[1]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[2]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[3]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[4]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[5]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[6]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[7]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[8]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[9]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[0]	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[1]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[2]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[3]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[4]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[5]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[6]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[7]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[8]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[9]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[0]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[1]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[2]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[3]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[4]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[5]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[6]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[7]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[8]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[9]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ColourBall IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_VGA_CLK : std_logic;
SIGNAL ww_VGA_HS : std_logic;
SIGNAL ww_VGA_VS : std_logic;
SIGNAL ww_VGA_BLANK_N : std_logic;
SIGNAL ww_VGA_SYNC_N : std_logic;
SIGNAL ww_VGA_R : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_VGA_G : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_VGA_B : std_logic_vector(9 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a5_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a5_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a5_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a5_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a2_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a2_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a2_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a7_PORTADATAIN_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a7_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a7_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a7_PORTBDATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a4_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a4_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a4_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a1_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a1_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a1_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a1_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a6_PORTADATAIN_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a6_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a6_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a6_PORTBDATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a3_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a3_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a3_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a3_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_VCOPH_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_MHI_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \VGA|mypll|altpll_component|auto_generated|generic_pll1~PLL_REFCLK_SELECT_CLKIN_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \VGA|mypll|altpll_component|auto_generated|generic_pll1~PLL_RECONFIG_MHI_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \VGA|mypll|altpll_component|auto_generated|generic_pll1~PLL_RECONFIG_SHIFTEN_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \VGA|mypll|altpll_component|auto_generated|generic_pll1~PLL_OUTPUT_COUNTER_VCO0PH_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \VGA|mypll|altpll_component|auto_generated|generic_pll1~PLL_REFCLK_SELECT_O_EXTSWITCHBUF\ : std_logic;
SIGNAL \VGA|mypll|altpll_component|auto_generated|generic_pll1~PLL_REFCLK_SELECT_O_CLKOUT\ : std_logic;
SIGNAL \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_MHI2\ : std_logic;
SIGNAL \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_MHI3\ : std_logic;
SIGNAL \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_MHI4\ : std_logic;
SIGNAL \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_MHI5\ : std_logic;
SIGNAL \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_MHI6\ : std_logic;
SIGNAL \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_MHI7\ : std_logic;
SIGNAL \VGA|mypll|altpll_component|auto_generated|generic_pll1~PLL_RECONFIG_O_UP\ : std_logic;
SIGNAL \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_MHI1\ : std_logic;
SIGNAL \VGA|mypll|altpll_component|auto_generated|generic_pll1~PLL_RECONFIG_O_SHIFTENM\ : std_logic;
SIGNAL \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_MHI0\ : std_logic;
SIGNAL \VGA|mypll|altpll_component|auto_generated|generic_pll1~PLL_RECONFIG_O_SHIFT\ : std_logic;
SIGNAL \VGA|mypll|altpll_component|auto_generated|fb_clkin\ : std_logic;
SIGNAL \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_CNTNEN\ : std_logic;
SIGNAL \VGA|mypll|altpll_component|auto_generated|generic_pll1~PLL_RECONFIGSHIFTEN6\ : std_logic;
SIGNAL \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_TCLK\ : std_logic;
SIGNAL \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_VCOPH0\ : std_logic;
SIGNAL \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_VCOPH1\ : std_logic;
SIGNAL \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_VCOPH2\ : std_logic;
SIGNAL \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_VCOPH3\ : std_logic;
SIGNAL \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_VCOPH4\ : std_logic;
SIGNAL \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_VCOPH5\ : std_logic;
SIGNAL \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_VCOPH6\ : std_logic;
SIGNAL \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_VCOPH7\ : std_logic;
SIGNAL \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\ : std_logic;
SIGNAL \VGA|controller|Add0~33_sumout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \VGA|controller|Equal0~1_combout\ : std_logic;
SIGNAL \VGA|controller|Add0~18\ : std_logic;
SIGNAL \VGA|controller|Add0~29_sumout\ : std_logic;
SIGNAL \VGA|controller|Add0~30\ : std_logic;
SIGNAL \VGA|controller|Add0~25_sumout\ : std_logic;
SIGNAL \VGA|controller|Add0~26\ : std_logic;
SIGNAL \VGA|controller|Add0~21_sumout\ : std_logic;
SIGNAL \VGA|controller|xCounter[8]~DUPLICATE_q\ : std_logic;
SIGNAL \VGA|controller|Equal0~0_combout\ : std_logic;
SIGNAL \VGA|controller|xCounter[7]~DUPLICATE_q\ : std_logic;
SIGNAL \VGA|controller|Equal0~2_combout\ : std_logic;
SIGNAL \VGA|controller|Add0~34\ : std_logic;
SIGNAL \VGA|controller|Add0~37_sumout\ : std_logic;
SIGNAL \VGA|controller|Add0~38\ : std_logic;
SIGNAL \VGA|controller|Add0~1_sumout\ : std_logic;
SIGNAL \VGA|controller|Add0~2\ : std_logic;
SIGNAL \VGA|controller|Add0~5_sumout\ : std_logic;
SIGNAL \VGA|controller|Add0~6\ : std_logic;
SIGNAL \VGA|controller|Add0~9_sumout\ : std_logic;
SIGNAL \VGA|controller|Add0~10\ : std_logic;
SIGNAL \VGA|controller|Add0~13_sumout\ : std_logic;
SIGNAL \VGA|controller|Add0~14\ : std_logic;
SIGNAL \VGA|controller|Add0~17_sumout\ : std_logic;
SIGNAL \VGA|controller|VGA_HS1~0_combout\ : std_logic;
SIGNAL \VGA|controller|VGA_HS1~1_combout\ : std_logic;
SIGNAL \VGA|controller|VGA_HS1~q\ : std_logic;
SIGNAL \VGA|controller|VGA_HS~q\ : std_logic;
SIGNAL \VGA|controller|Add1~5_sumout\ : std_logic;
SIGNAL \VGA|controller|always1~2_combout\ : std_logic;
SIGNAL \VGA|controller|Add1~30\ : std_logic;
SIGNAL \VGA|controller|Add1~25_sumout\ : std_logic;
SIGNAL \VGA|controller|Add1~26\ : std_logic;
SIGNAL \VGA|controller|Add1~21_sumout\ : std_logic;
SIGNAL \VGA|controller|Add1~22\ : std_logic;
SIGNAL \VGA|controller|Add1~17_sumout\ : std_logic;
SIGNAL \VGA|controller|Add1~18\ : std_logic;
SIGNAL \VGA|controller|Add1~13_sumout\ : std_logic;
SIGNAL \VGA|controller|Add1~14\ : std_logic;
SIGNAL \VGA|controller|Add1~1_sumout\ : std_logic;
SIGNAL \VGA|controller|always1~1_combout\ : std_logic;
SIGNAL \VGA|controller|always1~3_combout\ : std_logic;
SIGNAL \VGA|controller|Add1~6\ : std_logic;
SIGNAL \VGA|controller|Add1~9_sumout\ : std_logic;
SIGNAL \VGA|controller|Add1~10\ : std_logic;
SIGNAL \VGA|controller|Add1~37_sumout\ : std_logic;
SIGNAL \VGA|controller|Add1~38\ : std_logic;
SIGNAL \VGA|controller|Add1~33_sumout\ : std_logic;
SIGNAL \VGA|controller|Add1~34\ : std_logic;
SIGNAL \VGA|controller|Add1~29_sumout\ : std_logic;
SIGNAL \VGA|controller|always1~0_combout\ : std_logic;
SIGNAL \VGA|controller|VGA_VS1~0_combout\ : std_logic;
SIGNAL \VGA|controller|VGA_VS1~1_combout\ : std_logic;
SIGNAL \VGA|controller|VGA_VS1~q\ : std_logic;
SIGNAL \VGA|controller|VGA_VS~feeder_combout\ : std_logic;
SIGNAL \VGA|controller|VGA_VS~q\ : std_logic;
SIGNAL \VGA|controller|VGA_BLANK1~0_combout\ : std_logic;
SIGNAL \VGA|controller|VGA_BLANK1~q\ : std_logic;
SIGNAL \VGA|controller|VGA_BLANK~feeder_combout\ : std_logic;
SIGNAL \VGA|controller|VGA_BLANK~q\ : std_logic;
SIGNAL \VGA|controller|yCounter[6]~DUPLICATE_q\ : std_logic;
SIGNAL \VGA|controller|yCounter[4]~DUPLICATE_q\ : std_logic;
SIGNAL \VGA|controller|yCounter[3]~DUPLICATE_q\ : std_logic;
SIGNAL \VGA|controller|controller_translator|Add1~10\ : std_logic;
SIGNAL \VGA|controller|controller_translator|Add1~11\ : std_logic;
SIGNAL \VGA|controller|controller_translator|Add1~14\ : std_logic;
SIGNAL \VGA|controller|controller_translator|Add1~15\ : std_logic;
SIGNAL \VGA|controller|controller_translator|Add1~18\ : std_logic;
SIGNAL \VGA|controller|controller_translator|Add1~19\ : std_logic;
SIGNAL \VGA|controller|controller_translator|Add1~22\ : std_logic;
SIGNAL \VGA|controller|controller_translator|Add1~23\ : std_logic;
SIGNAL \VGA|controller|controller_translator|Add1~26\ : std_logic;
SIGNAL \VGA|controller|controller_translator|Add1~27\ : std_logic;
SIGNAL \VGA|controller|controller_translator|Add1~30\ : std_logic;
SIGNAL \VGA|controller|controller_translator|Add1~31\ : std_logic;
SIGNAL \VGA|controller|controller_translator|Add1~34\ : std_logic;
SIGNAL \VGA|controller|controller_translator|Add1~35\ : std_logic;
SIGNAL \VGA|controller|controller_translator|Add1~38\ : std_logic;
SIGNAL \VGA|controller|controller_translator|Add1~39\ : std_logic;
SIGNAL \VGA|controller|controller_translator|Add1~1_sumout\ : std_logic;
SIGNAL \CLOCK_50~inputCLKENA0_outclk\ : std_logic;
SIGNAL \VGA|controller|controller_translator|Add1~2\ : std_logic;
SIGNAL \VGA|controller|controller_translator|Add1~3\ : std_logic;
SIGNAL \VGA|controller|controller_translator|Add1~5_sumout\ : std_logic;
SIGNAL \comb_4|RD1|Add0~57_sumout\ : std_logic;
SIGNAL \comb_5|next_s.state4_763~combout\ : std_logic;
SIGNAL \comb_5|pres_s~17_combout\ : std_logic;
SIGNAL \comb_5|pres_s.state4~q\ : std_logic;
SIGNAL \comb_4|F_F_1|outF~0_combout\ : std_logic;
SIGNAL \comb_5|pres_s.reset_s~q\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \comb_5|Selector32~0_combout\ : std_logic;
SIGNAL \comb_5|next_s.state2_781~combout\ : std_logic;
SIGNAL \comb_5|pres_s~19_combout\ : std_logic;
SIGNAL \comb_5|pres_s.state2~q\ : std_logic;
SIGNAL \comb_4|F_F_1|outF[0]~1_combout\ : std_logic;
SIGNAL \comb_4|F_F_1|outF~2_combout\ : std_logic;
SIGNAL \comb_4|F_F_1|Add0~1_combout\ : std_logic;
SIGNAL \comb_4|F_F_1|outF~5_combout\ : std_logic;
SIGNAL \comb_4|F_F_1|Add0~0_combout\ : std_logic;
SIGNAL \comb_4|F_F_1|outF~3_combout\ : std_logic;
SIGNAL \comb_5|Selector26~0_combout\ : std_logic;
SIGNAL \comb_5|next_s.state6_749~combout\ : std_logic;
SIGNAL \comb_5|pres_s~16_combout\ : std_logic;
SIGNAL \comb_5|pres_s.state6~q\ : std_logic;
SIGNAL \comb_5|enablecounter~1_combout\ : std_logic;
SIGNAL \comb_4|c1|outC[0]~3_combout\ : std_logic;
SIGNAL \comb_4|c1|outC[1]~4_combout\ : std_logic;
SIGNAL \comb_4|c1|outC[3]~2_combout\ : std_logic;
SIGNAL \comb_4|c1|outC[2]~1_combout\ : std_logic;
SIGNAL \comb_4|c1|Equal0~0_combout\ : std_logic;
SIGNAL \comb_5|LessThan1~0_combout\ : std_logic;
SIGNAL \comb_5|Selector24~0_combout\ : std_logic;
SIGNAL \comb_5|next_s.state7_740~combout\ : std_logic;
SIGNAL \comb_5|pres_s~18_combout\ : std_logic;
SIGNAL \comb_5|pres_s.state7~q\ : std_logic;
SIGNAL \comb_5|Selector22~0_combout\ : std_logic;
SIGNAL \comb_5|next_s.state8_731~combout\ : std_logic;
SIGNAL \comb_5|pres_s~23_combout\ : std_logic;
SIGNAL \comb_5|pres_s.state8~q\ : std_logic;
SIGNAL \comb_5|Equal6~0_combout\ : std_logic;
SIGNAL \comb_5|Selector20~0_combout\ : std_logic;
SIGNAL \comb_5|next_s.state9_722~combout\ : std_logic;
SIGNAL \comb_5|pres_s~22_combout\ : std_logic;
SIGNAL \comb_5|pres_s.state9~q\ : std_logic;
SIGNAL \comb_5|Selector0~0_combout\ : std_logic;
SIGNAL \comb_5|next_s.state10_713~combout\ : std_logic;
SIGNAL \comb_5|pres_s~21_combout\ : std_logic;
SIGNAL \comb_5|pres_s.state10~q\ : std_logic;
SIGNAL \comb_5|Selector30~0_combout\ : std_logic;
SIGNAL \comb_5|next_s.state3_772~combout\ : std_logic;
SIGNAL \comb_5|pres_s~20_combout\ : std_logic;
SIGNAL \comb_5|pres_s.state3~q\ : std_logic;
SIGNAL \comb_4|RD1|out[15]~0_combout\ : std_logic;
SIGNAL \comb_4|RD1|out[15]~1_combout\ : std_logic;
SIGNAL \comb_4|RD1|Add0~58\ : std_logic;
SIGNAL \comb_4|RD1|Add0~25_sumout\ : std_logic;
SIGNAL \comb_4|RD1|Add0~26\ : std_logic;
SIGNAL \comb_4|RD1|Add0~49_sumout\ : std_logic;
SIGNAL \comb_4|RD1|out~6_combout\ : std_logic;
SIGNAL \comb_4|RD1|Add0~50\ : std_logic;
SIGNAL \comb_4|RD1|Add0~29_sumout\ : std_logic;
SIGNAL \comb_4|RD1|Add0~30\ : std_logic;
SIGNAL \comb_4|RD1|Add0~53_sumout\ : std_logic;
SIGNAL \comb_4|RD1|out~7_combout\ : std_logic;
SIGNAL \comb_4|RD1|Add0~54\ : std_logic;
SIGNAL \comb_4|RD1|Add0~45_sumout\ : std_logic;
SIGNAL \comb_4|RD1|out~5_combout\ : std_logic;
SIGNAL \comb_4|RD1|Add0~46\ : std_logic;
SIGNAL \comb_4|RD1|Add0~21_sumout\ : std_logic;
SIGNAL \comb_4|RD1|Add0~22\ : std_logic;
SIGNAL \comb_4|RD1|Add0~17_sumout\ : std_logic;
SIGNAL \comb_4|RD1|Add0~18\ : std_logic;
SIGNAL \comb_4|RD1|Add0~41_sumout\ : std_logic;
SIGNAL \comb_4|RD1|out~4_combout\ : std_logic;
SIGNAL \comb_4|RD1|Add0~42\ : std_logic;
SIGNAL \comb_4|RD1|Add0~37_sumout\ : std_logic;
SIGNAL \comb_4|RD1|out~3_combout\ : std_logic;
SIGNAL \comb_4|RD1|Add0~38\ : std_logic;
SIGNAL \comb_4|RD1|Add0~33_sumout\ : std_logic;
SIGNAL \comb_4|RD1|out~2_combout\ : std_logic;
SIGNAL \comb_4|RD1|Add0~34\ : std_logic;
SIGNAL \comb_4|RD1|Add0~13_sumout\ : std_logic;
SIGNAL \comb_4|RD1|Add0~14\ : std_logic;
SIGNAL \comb_4|RD1|Add0~73_sumout\ : std_logic;
SIGNAL \comb_4|RD1|out~11_combout\ : std_logic;
SIGNAL \comb_4|RD1|Add0~74\ : std_logic;
SIGNAL \comb_4|RD1|Add0~77_sumout\ : std_logic;
SIGNAL \comb_4|RD1|out~12_combout\ : std_logic;
SIGNAL \comb_4|RD1|Add0~78\ : std_logic;
SIGNAL \comb_4|RD1|Add0~1_sumout\ : std_logic;
SIGNAL \comb_4|RD1|Add0~2\ : std_logic;
SIGNAL \comb_4|RD1|Add0~69_sumout\ : std_logic;
SIGNAL \comb_4|RD1|out~10_combout\ : std_logic;
SIGNAL \comb_4|RD1|Add0~70\ : std_logic;
SIGNAL \comb_4|RD1|Add0~9_sumout\ : std_logic;
SIGNAL \comb_4|RD1|Add0~10\ : std_logic;
SIGNAL \comb_4|RD1|Add0~5_sumout\ : std_logic;
SIGNAL \comb_4|RD1|Add0~6\ : std_logic;
SIGNAL \comb_4|RD1|Add0~65_sumout\ : std_logic;
SIGNAL \comb_4|RD1|out~9_combout\ : std_logic;
SIGNAL \comb_4|RD1|Add0~66\ : std_logic;
SIGNAL \comb_4|RD1|Add0~61_sumout\ : std_logic;
SIGNAL \comb_4|RD1|out~8_combout\ : std_logic;
SIGNAL \comb_4|RD1|Equal0~2_combout\ : std_logic;
SIGNAL \comb_4|RD1|Equal0~1_combout\ : std_logic;
SIGNAL \comb_4|RD1|Equal0~0_combout\ : std_logic;
SIGNAL \comb_4|RD1|Equal0~combout\ : std_logic;
SIGNAL \comb_4|F_F_1|outF~4_combout\ : std_logic;
SIGNAL \comb_4|F_F_1|Equal0~combout\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \comb_5|rotation_next.rrr~0_combout\ : std_logic;
SIGNAL \comb_5|Selector6~0_combout\ : std_logic;
SIGNAL \comb_5|rotation_next.bbb_626~combout\ : std_logic;
SIGNAL \comb_5|rotation~11_combout\ : std_logic;
SIGNAL \comb_5|rotation.bbb~q\ : std_logic;
SIGNAL \comb_5|Selector8~0_combout\ : std_logic;
SIGNAL \comb_5|rotation_next.yyy_586~combout\ : std_logic;
SIGNAL \comb_5|rotation~12_combout\ : std_logic;
SIGNAL \comb_5|rotation.yyy~q\ : std_logic;
SIGNAL \comb_5|Selector10~0_combout\ : std_logic;
SIGNAL \comb_5|rotation_next.rrr_566~combout\ : std_logic;
SIGNAL \comb_5|rotation~10_combout\ : std_logic;
SIGNAL \comb_5|rotation.rrr~q\ : std_logic;
SIGNAL \comb_5|Selector7~0_combout\ : std_logic;
SIGNAL \comb_5|rotation_next.ggg_606~combout\ : std_logic;
SIGNAL \comb_5|rotation~9_combout\ : std_logic;
SIGNAL \comb_5|rotation.ggg~q\ : std_logic;
SIGNAL \comb_5|Selector15~0_combout\ : std_logic;
SIGNAL \comb_5|gen_~combout\ : std_logic;
SIGNAL \comb_4|randn|data~0_combout\ : std_logic;
SIGNAL \comb_4|randn|data~1_combout\ : std_logic;
SIGNAL \comb_4|randn|data_next[1]~0_combout\ : std_logic;
SIGNAL \comb_5|WideOr8~0_combout\ : std_logic;
SIGNAL \comb_5|newColEn_~combout\ : std_logic;
SIGNAL \comb_4|ycc|_Colout~2_combout\ : std_logic;
SIGNAL \comb_5|Selector9~0_combout\ : std_logic;
SIGNAL \comb_5|ben_~combout\ : std_logic;
SIGNAL \comb_5|Selector13~0_combout\ : std_logic;
SIGNAL \comb_5|ren_~combout\ : std_logic;
SIGNAL \comb_5|Selector16~0_combout\ : std_logic;
SIGNAL \comb_5|yen_~combout\ : std_logic;
SIGNAL \comb_4|ycc|outy[0]~0_combout\ : std_logic;
SIGNAL \comb_4|ycc|_Colout[2]~1_combout\ : std_logic;
SIGNAL \wheely|done~0_combout\ : std_logic;
SIGNAL \wheely|done~q\ : std_logic;
SIGNAL \wheelg|done~0_combout\ : std_logic;
SIGNAL \wheelg|done~q\ : std_logic;
SIGNAL \comb_4|ycc|outy[0]~1_combout\ : std_logic;
SIGNAL \wheelr|done~0_combout\ : std_logic;
SIGNAL \wheelr|done~q\ : std_logic;
SIGNAL \wheelb|done~0_combout\ : std_logic;
SIGNAL \wheelb|done~q\ : std_logic;
SIGNAL \comb_4|ycc|outx~0_combout\ : std_logic;
SIGNAL \comb_4|ycc|outx~1_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \comb_4|ycc|outx[4]~2_combout\ : std_logic;
SIGNAL \comb_4|ycc|outy~2_combout\ : std_logic;
SIGNAL \comb_4|ycc|outy[0]~3_combout\ : std_logic;
SIGNAL \comb_4|ycc|outy~4_combout\ : std_logic;
SIGNAL \VGA|user_input_translator|Add0~0_combout\ : std_logic;
SIGNAL \comb_4|ycc|outy~5_combout\ : std_logic;
SIGNAL \VGA|user_input_translator|Add0~1_combout\ : std_logic;
SIGNAL \VGA|user_input_translator|Add0~2_combout\ : std_logic;
SIGNAL \VGA|user_input_translator|Add0~3_combout\ : std_logic;
SIGNAL \VGA|user_input_translator|Add0~4_combout\ : std_logic;
SIGNAL \VGA|controller|xCounter[6]~DUPLICATE_q\ : std_logic;
SIGNAL \VGA|controller|controller_translator|Add1~9_sumout\ : std_logic;
SIGNAL \VGA|controller|controller_translator|Add1~13_sumout\ : std_logic;
SIGNAL \VGA|controller|controller_translator|Add1~17_sumout\ : std_logic;
SIGNAL \VGA|controller|controller_translator|Add1~21_sumout\ : std_logic;
SIGNAL \VGA|controller|controller_translator|Add1~25_sumout\ : std_logic;
SIGNAL \VGA|controller|controller_translator|Add1~29_sumout\ : std_logic;
SIGNAL \VGA|controller|controller_translator|Add1~33_sumout\ : std_logic;
SIGNAL \comb_4|ycc|_Colout~0_combout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \VGA|controller|controller_translator|Add1~37_sumout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a5~portbdataout\ : std_logic;
SIGNAL \comb_4|c1|outC[1]~0_combout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a2~portbdataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|mux3|result_node[2]~0_combout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a1~portbdataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a7~portbdataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a4~portbdataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|mux3|result_node[1]~1_combout\ : std_logic;
SIGNAL \comb_4|randcol|Mux2~0_combout\ : std_logic;
SIGNAL \comb_4|ycc|_Colout~3_combout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a6~portbdataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a3~portbdataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|mux3|result_node[0]~2_combout\ : std_logic;
SIGNAL \comb_4|ycc|outx\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|out_address_reg_b\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \VGA|controller|xCounter\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|rden_decode_b|w_anode143w\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \comb_4|ycc|outy\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \VGA|controller|yCounter\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \comb_4|ycc|_Colout\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \comb_4|randn|data\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \comb_4|RD1|out\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|rden_decode_b|w_anode166w\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|address_reg_b\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|rden_decode_b|w_anode157w\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \comb_4|c1|outC\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \comb_4|F_F_1|outF\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \comb_4|randn|data_next\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \comb_4|randcol|pickCol\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \VGA|mypll|altpll_component|auto_generated|clk\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \VGA|controller|ALT_INV_yCounter[3]~DUPLICATE_q\ : std_logic;
SIGNAL \VGA|controller|ALT_INV_yCounter[4]~DUPLICATE_q\ : std_logic;
SIGNAL \VGA|controller|ALT_INV_yCounter[6]~DUPLICATE_q\ : std_logic;
SIGNAL \VGA|controller|ALT_INV_xCounter[7]~DUPLICATE_q\ : std_logic;
SIGNAL \VGA|controller|ALT_INV_xCounter[8]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_KEY[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[0]~input_o\ : std_logic;
SIGNAL \comb_5|ALT_INV_next_s.state8_731~combout\ : std_logic;
SIGNAL \comb_5|ALT_INV_next_s.state9_722~combout\ : std_logic;
SIGNAL \comb_5|ALT_INV_next_s.state10_713~combout\ : std_logic;
SIGNAL \comb_5|ALT_INV_rotation_next.yyy_586~combout\ : std_logic;
SIGNAL \comb_5|ALT_INV_rotation_next.bbb_626~combout\ : std_logic;
SIGNAL \comb_5|ALT_INV_rotation_next.rrr_566~combout\ : std_logic;
SIGNAL \comb_5|ALT_INV_rotation_next.ggg_606~combout\ : std_logic;
SIGNAL \comb_5|ALT_INV_next_s.state3_772~combout\ : std_logic;
SIGNAL \comb_5|ALT_INV_next_s.state2_781~combout\ : std_logic;
SIGNAL \comb_5|ALT_INV_newColEn_~combout\ : std_logic;
SIGNAL \comb_4|randcol|ALT_INV_pickCol\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \comb_5|ALT_INV_next_s.state7_740~combout\ : std_logic;
SIGNAL \comb_5|ALT_INV_next_s.state4_763~combout\ : std_logic;
SIGNAL \comb_5|ALT_INV_next_s.state6_749~combout\ : std_logic;
SIGNAL \comb_5|ALT_INV_yen_~combout\ : std_logic;
SIGNAL \comb_5|ALT_INV_ren_~combout\ : std_logic;
SIGNAL \comb_5|ALT_INV_ben_~combout\ : std_logic;
SIGNAL \comb_5|ALT_INV_gen_~combout\ : std_logic;
SIGNAL \comb_5|ALT_INV_Selector22~0_combout\ : std_logic;
SIGNAL \comb_5|ALT_INV_Selector20~0_combout\ : std_logic;
SIGNAL \comb_5|ALT_INV_pres_s.state8~q\ : std_logic;
SIGNAL \comb_5|ALT_INV_Equal6~0_combout\ : std_logic;
SIGNAL \comb_5|ALT_INV_Selector0~0_combout\ : std_logic;
SIGNAL \comb_5|ALT_INV_pres_s.state9~q\ : std_logic;
SIGNAL \comb_5|ALT_INV_Selector8~0_combout\ : std_logic;
SIGNAL \comb_4|RD1|ALT_INV_Equal0~combout\ : std_logic;
SIGNAL \comb_4|RD1|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \comb_4|RD1|ALT_INV_out\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \comb_4|RD1|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \comb_4|RD1|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \comb_5|ALT_INV_Selector6~0_combout\ : std_logic;
SIGNAL \comb_5|ALT_INV_Selector10~0_combout\ : std_logic;
SIGNAL \comb_5|ALT_INV_rotation_next.rrr~0_combout\ : std_logic;
SIGNAL \comb_5|ALT_INV_Selector7~0_combout\ : std_logic;
SIGNAL \comb_4|randn|ALT_INV_data\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \comb_4|F_F_1|ALT_INV_Add0~1_combout\ : std_logic;
SIGNAL \comb_4|F_F_1|ALT_INV_Add0~0_combout\ : std_logic;
SIGNAL \comb_5|ALT_INV_Selector30~0_combout\ : std_logic;
SIGNAL \comb_5|ALT_INV_pres_s.state10~q\ : std_logic;
SIGNAL \comb_5|ALT_INV_Selector32~0_combout\ : std_logic;
SIGNAL \comb_5|ALT_INV_WideOr8~0_combout\ : std_logic;
SIGNAL \comb_4|randcol|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \comb_5|ALT_INV_Selector24~0_combout\ : std_logic;
SIGNAL \comb_5|ALT_INV_LessThan1~0_combout\ : std_logic;
SIGNAL \comb_4|c1|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \comb_5|ALT_INV_Selector26~0_combout\ : std_logic;
SIGNAL \comb_4|c1|ALT_INV_outC\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \comb_5|ALT_INV_enablecounter~1_combout\ : std_logic;
SIGNAL \comb_5|ALT_INV_Selector16~0_combout\ : std_logic;
SIGNAL \comb_5|ALT_INV_Selector13~0_combout\ : std_logic;
SIGNAL \comb_5|ALT_INV_Selector9~0_combout\ : std_logic;
SIGNAL \comb_5|ALT_INV_rotation.yyy~q\ : std_logic;
SIGNAL \comb_4|F_F_1|ALT_INV_Equal0~combout\ : std_logic;
SIGNAL \comb_4|F_F_1|ALT_INV_outF\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \comb_5|ALT_INV_Selector15~0_combout\ : std_logic;
SIGNAL \comb_5|ALT_INV_rotation.bbb~q\ : std_logic;
SIGNAL \comb_5|ALT_INV_rotation.rrr~q\ : std_logic;
SIGNAL \comb_5|ALT_INV_rotation.ggg~q\ : std_logic;
SIGNAL \VGA|controller|ALT_INV_always1~2_combout\ : std_logic;
SIGNAL \VGA|controller|ALT_INV_always1~1_combout\ : std_logic;
SIGNAL \VGA|controller|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \VGA|controller|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \comb_4|ycc|ALT_INV_outy[0]~1_combout\ : std_logic;
SIGNAL \comb_4|ycc|ALT_INV_outx~0_combout\ : std_logic;
SIGNAL \wheelb|ALT_INV_done~q\ : std_logic;
SIGNAL \wheelr|ALT_INV_done~q\ : std_logic;
SIGNAL \wheely|ALT_INV_done~q\ : std_logic;
SIGNAL \wheelg|ALT_INV_done~q\ : std_logic;
SIGNAL \comb_4|ycc|ALT_INV_outy[0]~0_combout\ : std_logic;
SIGNAL \comb_5|ALT_INV_pres_s.state3~q\ : std_logic;
SIGNAL \comb_5|ALT_INV_pres_s.state2~q\ : std_logic;
SIGNAL \comb_5|ALT_INV_pres_s.reset_s~q\ : std_logic;
SIGNAL \VGA|controller|ALT_INV_always1~0_combout\ : std_logic;
SIGNAL \VGA|controller|ALT_INV_VGA_VS1~0_combout\ : std_logic;
SIGNAL \VGA|controller|ALT_INV_VGA_HS1~0_combout\ : std_logic;
SIGNAL \comb_5|ALT_INV_pres_s.state7~q\ : std_logic;
SIGNAL \comb_5|ALT_INV_pres_s.state4~q\ : std_logic;
SIGNAL \comb_5|ALT_INV_pres_s.state6~q\ : std_logic;
SIGNAL \comb_4|ycc|ALT_INV_outy\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \comb_4|ycc|ALT_INV_outx\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \VGA|controller|ALT_INV_VGA_BLANK1~q\ : std_logic;
SIGNAL \VGA|controller|ALT_INV_VGA_VS1~q\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ALT_INV_out_address_reg_b\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \comb_4|RD1|ALT_INV_Add0~77_sumout\ : std_logic;
SIGNAL \comb_4|RD1|ALT_INV_Add0~73_sumout\ : std_logic;
SIGNAL \comb_4|RD1|ALT_INV_Add0~69_sumout\ : std_logic;
SIGNAL \comb_4|RD1|ALT_INV_Add0~65_sumout\ : std_logic;
SIGNAL \comb_4|RD1|ALT_INV_Add0~61_sumout\ : std_logic;
SIGNAL \comb_4|RD1|ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \comb_4|RD1|ALT_INV_Add0~49_sumout\ : std_logic;
SIGNAL \comb_4|RD1|ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \comb_4|RD1|ALT_INV_Add0~41_sumout\ : std_logic;
SIGNAL \comb_4|RD1|ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \comb_4|RD1|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \VGA|controller|ALT_INV_yCounter\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \VGA|controller|ALT_INV_xCounter\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \VGA|controller|controller_translator|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \VGA|controller|controller_translator|ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a0~portbdataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a3~portbdataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a6~portbdataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a1~portbdataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a4~portbdataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a8\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a7~portbdataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a2~portbdataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a5~portbdataout\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
ww_SW <= SW;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
VGA_CLK <= ww_VGA_CLK;
VGA_HS <= ww_VGA_HS;
VGA_VS <= ww_VGA_VS;
VGA_BLANK_N <= ww_VGA_BLANK_N;
VGA_SYNC_N <= ww_VGA_SYNC_N;
VGA_R <= ww_VGA_R;
VGA_G <= ww_VGA_G;
VGA_B <= ww_VGA_B;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\VGA|VideoMemory|auto_generated|ram_block1a5_PORTADATAIN_bus\(0) <= \comb_4|ycc|_Colout\(2);

\VGA|VideoMemory|auto_generated|ram_block1a5_PORTAADDR_bus\ <= (\~GND~combout\ & \~GND~combout\ & \VGA|user_input_translator|Add0~4_combout\ & \VGA|user_input_translator|Add0~3_combout\ & \VGA|user_input_translator|Add0~2_combout\ & 
\VGA|user_input_translator|Add0~1_combout\ & \VGA|user_input_translator|Add0~0_combout\ & \comb_4|ycc|outy\(0) & \comb_4|ycc|outx\(4) & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \comb_4|ycc|outx\(0));

\VGA|VideoMemory|auto_generated|ram_block1a5_PORTBADDR_bus\ <= (\VGA|controller|controller_translator|Add1~37_sumout\ & \VGA|controller|controller_translator|Add1~33_sumout\ & \VGA|controller|controller_translator|Add1~29_sumout\ & 
\VGA|controller|controller_translator|Add1~25_sumout\ & \VGA|controller|controller_translator|Add1~21_sumout\ & \VGA|controller|controller_translator|Add1~17_sumout\ & \VGA|controller|controller_translator|Add1~13_sumout\ & 
\VGA|controller|controller_translator|Add1~9_sumout\ & \VGA|controller|xCounter\(6) & \VGA|controller|xCounter\(5) & \VGA|controller|xCounter\(4) & \VGA|controller|xCounter\(3) & \VGA|controller|xCounter\(2));

\VGA|VideoMemory|auto_generated|ram_block1a5~portbdataout\ <= \VGA|VideoMemory|auto_generated|ram_block1a5_PORTBDATAOUT_bus\(0);

\VGA|VideoMemory|auto_generated|ram_block1a2_PORTADATAIN_bus\(0) <= \comb_4|ycc|_Colout\(2);

\VGA|VideoMemory|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\~GND~combout\ & \~GND~combout\ & \VGA|user_input_translator|Add0~4_combout\ & \VGA|user_input_translator|Add0~3_combout\ & \VGA|user_input_translator|Add0~2_combout\ & 
\VGA|user_input_translator|Add0~1_combout\ & \VGA|user_input_translator|Add0~0_combout\ & \comb_4|ycc|outy\(0) & \comb_4|ycc|outx\(4) & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \comb_4|ycc|outx\(0));

\VGA|VideoMemory|auto_generated|ram_block1a2_PORTBADDR_bus\ <= (\VGA|controller|controller_translator|Add1~37_sumout\ & \VGA|controller|controller_translator|Add1~33_sumout\ & \VGA|controller|controller_translator|Add1~29_sumout\ & 
\VGA|controller|controller_translator|Add1~25_sumout\ & \VGA|controller|controller_translator|Add1~21_sumout\ & \VGA|controller|controller_translator|Add1~17_sumout\ & \VGA|controller|controller_translator|Add1~13_sumout\ & 
\VGA|controller|controller_translator|Add1~9_sumout\ & \VGA|controller|xCounter\(6) & \VGA|controller|xCounter\(5) & \VGA|controller|xCounter\(4) & \VGA|controller|xCounter\(3) & \VGA|controller|xCounter\(2));

\VGA|VideoMemory|auto_generated|ram_block1a2~portbdataout\ <= \VGA|VideoMemory|auto_generated|ram_block1a2_PORTBDATAOUT_bus\(0);

\VGA|VideoMemory|auto_generated|ram_block1a7_PORTADATAIN_bus\ <= (\comb_4|ycc|_Colout\(2) & \comb_4|ycc|_Colout\(1));

\VGA|VideoMemory|auto_generated|ram_block1a7_PORTAADDR_bus\ <= (\~GND~combout\ & \VGA|user_input_translator|Add0~4_combout\ & \VGA|user_input_translator|Add0~3_combout\ & \VGA|user_input_translator|Add0~2_combout\ & 
\VGA|user_input_translator|Add0~1_combout\ & \VGA|user_input_translator|Add0~0_combout\ & \comb_4|ycc|outy\(0) & \comb_4|ycc|outx\(4) & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \comb_4|ycc|outx\(0));

\VGA|VideoMemory|auto_generated|ram_block1a7_PORTBADDR_bus\ <= (\VGA|controller|controller_translator|Add1~33_sumout\ & \VGA|controller|controller_translator|Add1~29_sumout\ & \VGA|controller|controller_translator|Add1~25_sumout\ & 
\VGA|controller|controller_translator|Add1~21_sumout\ & \VGA|controller|controller_translator|Add1~17_sumout\ & \VGA|controller|controller_translator|Add1~13_sumout\ & \VGA|controller|controller_translator|Add1~9_sumout\ & 
\VGA|controller|xCounter[6]~DUPLICATE_q\ & \VGA|controller|xCounter\(5) & \VGA|controller|xCounter\(4) & \VGA|controller|xCounter\(3) & \VGA|controller|xCounter\(2));

\VGA|VideoMemory|auto_generated|ram_block1a7~portbdataout\ <= \VGA|VideoMemory|auto_generated|ram_block1a7_PORTBDATAOUT_bus\(0);
\VGA|VideoMemory|auto_generated|ram_block1a8\ <= \VGA|VideoMemory|auto_generated|ram_block1a7_PORTBDATAOUT_bus\(1);

\VGA|VideoMemory|auto_generated|ram_block1a4_PORTADATAIN_bus\(0) <= \comb_4|ycc|_Colout\(1);

\VGA|VideoMemory|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\~GND~combout\ & \~GND~combout\ & \VGA|user_input_translator|Add0~4_combout\ & \VGA|user_input_translator|Add0~3_combout\ & \VGA|user_input_translator|Add0~2_combout\ & 
\VGA|user_input_translator|Add0~1_combout\ & \VGA|user_input_translator|Add0~0_combout\ & \comb_4|ycc|outy\(0) & \comb_4|ycc|outx\(4) & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \comb_4|ycc|outx\(0));

\VGA|VideoMemory|auto_generated|ram_block1a4_PORTBADDR_bus\ <= (\VGA|controller|controller_translator|Add1~37_sumout\ & \VGA|controller|controller_translator|Add1~33_sumout\ & \VGA|controller|controller_translator|Add1~29_sumout\ & 
\VGA|controller|controller_translator|Add1~25_sumout\ & \VGA|controller|controller_translator|Add1~21_sumout\ & \VGA|controller|controller_translator|Add1~17_sumout\ & \VGA|controller|controller_translator|Add1~13_sumout\ & 
\VGA|controller|controller_translator|Add1~9_sumout\ & \VGA|controller|xCounter[6]~DUPLICATE_q\ & \VGA|controller|xCounter\(5) & \VGA|controller|xCounter\(4) & \VGA|controller|xCounter\(3) & \VGA|controller|xCounter\(2));

\VGA|VideoMemory|auto_generated|ram_block1a4~portbdataout\ <= \VGA|VideoMemory|auto_generated|ram_block1a4_PORTBDATAOUT_bus\(0);

\VGA|VideoMemory|auto_generated|ram_block1a1_PORTADATAIN_bus\(0) <= \comb_4|ycc|_Colout\(1);

\VGA|VideoMemory|auto_generated|ram_block1a1_PORTAADDR_bus\ <= (\~GND~combout\ & \~GND~combout\ & \VGA|user_input_translator|Add0~4_combout\ & \VGA|user_input_translator|Add0~3_combout\ & \VGA|user_input_translator|Add0~2_combout\ & 
\VGA|user_input_translator|Add0~1_combout\ & \VGA|user_input_translator|Add0~0_combout\ & \comb_4|ycc|outy\(0) & \comb_4|ycc|outx\(4) & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \comb_4|ycc|outx\(0));

\VGA|VideoMemory|auto_generated|ram_block1a1_PORTBADDR_bus\ <= (\VGA|controller|controller_translator|Add1~37_sumout\ & \VGA|controller|controller_translator|Add1~33_sumout\ & \VGA|controller|controller_translator|Add1~29_sumout\ & 
\VGA|controller|controller_translator|Add1~25_sumout\ & \VGA|controller|controller_translator|Add1~21_sumout\ & \VGA|controller|controller_translator|Add1~17_sumout\ & \VGA|controller|controller_translator|Add1~13_sumout\ & 
\VGA|controller|controller_translator|Add1~9_sumout\ & \VGA|controller|xCounter\(6) & \VGA|controller|xCounter\(5) & \VGA|controller|xCounter\(4) & \VGA|controller|xCounter\(3) & \VGA|controller|xCounter\(2));

\VGA|VideoMemory|auto_generated|ram_block1a1~portbdataout\ <= \VGA|VideoMemory|auto_generated|ram_block1a1_PORTBDATAOUT_bus\(0);

\VGA|VideoMemory|auto_generated|ram_block1a6_PORTADATAIN_bus\ <= (gnd & \comb_4|ycc|_Colout\(0));

\VGA|VideoMemory|auto_generated|ram_block1a6_PORTAADDR_bus\ <= (\~GND~combout\ & \VGA|user_input_translator|Add0~4_combout\ & \VGA|user_input_translator|Add0~3_combout\ & \VGA|user_input_translator|Add0~2_combout\ & 
\VGA|user_input_translator|Add0~1_combout\ & \VGA|user_input_translator|Add0~0_combout\ & \comb_4|ycc|outy\(0) & \comb_4|ycc|outx\(4) & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \comb_4|ycc|outx\(0));

\VGA|VideoMemory|auto_generated|ram_block1a6_PORTBADDR_bus\ <= (\VGA|controller|controller_translator|Add1~33_sumout\ & \VGA|controller|controller_translator|Add1~29_sumout\ & \VGA|controller|controller_translator|Add1~25_sumout\ & 
\VGA|controller|controller_translator|Add1~21_sumout\ & \VGA|controller|controller_translator|Add1~17_sumout\ & \VGA|controller|controller_translator|Add1~13_sumout\ & \VGA|controller|controller_translator|Add1~9_sumout\ & 
\VGA|controller|xCounter[6]~DUPLICATE_q\ & \VGA|controller|xCounter\(5) & \VGA|controller|xCounter\(4) & \VGA|controller|xCounter\(3) & \VGA|controller|xCounter\(2));

\VGA|VideoMemory|auto_generated|ram_block1a6~portbdataout\ <= \VGA|VideoMemory|auto_generated|ram_block1a6_PORTBDATAOUT_bus\(0);

\VGA|VideoMemory|auto_generated|ram_block1a3_PORTADATAIN_bus\(0) <= \comb_4|ycc|_Colout\(0);

\VGA|VideoMemory|auto_generated|ram_block1a3_PORTAADDR_bus\ <= (\~GND~combout\ & \~GND~combout\ & \VGA|user_input_translator|Add0~4_combout\ & \VGA|user_input_translator|Add0~3_combout\ & \VGA|user_input_translator|Add0~2_combout\ & 
\VGA|user_input_translator|Add0~1_combout\ & \VGA|user_input_translator|Add0~0_combout\ & \comb_4|ycc|outy\(0) & \comb_4|ycc|outx\(4) & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \comb_4|ycc|outx\(0));

\VGA|VideoMemory|auto_generated|ram_block1a3_PORTBADDR_bus\ <= (\VGA|controller|controller_translator|Add1~37_sumout\ & \VGA|controller|controller_translator|Add1~33_sumout\ & \VGA|controller|controller_translator|Add1~29_sumout\ & 
\VGA|controller|controller_translator|Add1~25_sumout\ & \VGA|controller|controller_translator|Add1~21_sumout\ & \VGA|controller|controller_translator|Add1~17_sumout\ & \VGA|controller|controller_translator|Add1~13_sumout\ & 
\VGA|controller|controller_translator|Add1~9_sumout\ & \VGA|controller|xCounter[6]~DUPLICATE_q\ & \VGA|controller|xCounter\(5) & \VGA|controller|xCounter\(4) & \VGA|controller|xCounter\(3) & \VGA|controller|xCounter\(2));

\VGA|VideoMemory|auto_generated|ram_block1a3~portbdataout\ <= \VGA|VideoMemory|auto_generated|ram_block1a3_PORTBDATAOUT_bus\(0);

\VGA|VideoMemory|auto_generated|ram_block1a0_PORTADATAIN_bus\(0) <= \comb_4|ycc|_Colout\(0);

\VGA|VideoMemory|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\~GND~combout\ & \~GND~combout\ & \VGA|user_input_translator|Add0~4_combout\ & \VGA|user_input_translator|Add0~3_combout\ & \VGA|user_input_translator|Add0~2_combout\ & 
\VGA|user_input_translator|Add0~1_combout\ & \VGA|user_input_translator|Add0~0_combout\ & \comb_4|ycc|outy\(0) & \comb_4|ycc|outx\(4) & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \comb_4|ycc|outx\(0));

\VGA|VideoMemory|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\VGA|controller|controller_translator|Add1~37_sumout\ & \VGA|controller|controller_translator|Add1~33_sumout\ & \VGA|controller|controller_translator|Add1~29_sumout\ & 
\VGA|controller|controller_translator|Add1~25_sumout\ & \VGA|controller|controller_translator|Add1~21_sumout\ & \VGA|controller|controller_translator|Add1~17_sumout\ & \VGA|controller|controller_translator|Add1~13_sumout\ & 
\VGA|controller|controller_translator|Add1~9_sumout\ & \VGA|controller|xCounter[6]~DUPLICATE_q\ & \VGA|controller|xCounter\(5) & \VGA|controller|xCounter\(4) & \VGA|controller|xCounter\(3) & \VGA|controller|xCounter\(2));

\VGA|VideoMemory|auto_generated|ram_block1a0~portbdataout\ <= \VGA|VideoMemory|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);

\VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_VCOPH0\ <= \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_VCOPH_bus\(0);
\VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_VCOPH1\ <= \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_VCOPH_bus\(1);
\VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_VCOPH2\ <= \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_VCOPH_bus\(2);
\VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_VCOPH3\ <= \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_VCOPH_bus\(3);
\VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_VCOPH4\ <= \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_VCOPH_bus\(4);
\VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_VCOPH5\ <= \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_VCOPH_bus\(5);
\VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_VCOPH6\ <= \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_VCOPH_bus\(6);
\VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_VCOPH7\ <= \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_VCOPH_bus\(7);

\VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_MHI0\ <= \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_MHI_bus\(0);
\VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_MHI1\ <= \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_MHI_bus\(1);
\VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_MHI2\ <= \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_MHI_bus\(2);
\VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_MHI3\ <= \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_MHI_bus\(3);
\VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_MHI4\ <= \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_MHI_bus\(4);
\VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_MHI5\ <= \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_MHI_bus\(5);
\VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_MHI6\ <= \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_MHI_bus\(6);
\VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_MHI7\ <= \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_MHI_bus\(7);

\VGA|mypll|altpll_component|auto_generated|generic_pll1~PLL_REFCLK_SELECT_CLKIN_bus\ <= (gnd & gnd & gnd & \CLOCK_50~input_o\);

\VGA|mypll|altpll_component|auto_generated|generic_pll1~PLL_RECONFIG_MHI_bus\ <= (\VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_MHI7\ & \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_MHI6\ & 
\VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_MHI5\ & \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_MHI4\ & \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_MHI3\ & 
\VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_MHI2\ & \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_MHI1\ & \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_MHI0\);

\VGA|mypll|altpll_component|auto_generated|generic_pll1~PLL_RECONFIGSHIFTEN6\ <= \VGA|mypll|altpll_component|auto_generated|generic_pll1~PLL_RECONFIG_SHIFTEN_bus\(6);

\VGA|mypll|altpll_component|auto_generated|generic_pll1~PLL_OUTPUT_COUNTER_VCO0PH_bus\ <= (\VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_VCOPH7\ & \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_VCOPH6\
& \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_VCOPH5\ & \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_VCOPH4\ & \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_VCOPH3\ & 
\VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_VCOPH2\ & \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_VCOPH1\ & \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_VCOPH0\);
\VGA|controller|ALT_INV_yCounter[3]~DUPLICATE_q\ <= NOT \VGA|controller|yCounter[3]~DUPLICATE_q\;
\VGA|controller|ALT_INV_yCounter[4]~DUPLICATE_q\ <= NOT \VGA|controller|yCounter[4]~DUPLICATE_q\;
\VGA|controller|ALT_INV_yCounter[6]~DUPLICATE_q\ <= NOT \VGA|controller|yCounter[6]~DUPLICATE_q\;
\VGA|controller|ALT_INV_xCounter[7]~DUPLICATE_q\ <= NOT \VGA|controller|xCounter[7]~DUPLICATE_q\;
\VGA|controller|ALT_INV_xCounter[8]~DUPLICATE_q\ <= NOT \VGA|controller|xCounter[8]~DUPLICATE_q\;
\ALT_INV_KEY[1]~input_o\ <= NOT \KEY[1]~input_o\;
\ALT_INV_KEY[3]~input_o\ <= NOT \KEY[3]~input_o\;
\ALT_INV_KEY[2]~input_o\ <= NOT \KEY[2]~input_o\;
\ALT_INV_KEY[0]~input_o\ <= NOT \KEY[0]~input_o\;
\comb_5|ALT_INV_next_s.state8_731~combout\ <= NOT \comb_5|next_s.state8_731~combout\;
\comb_5|ALT_INV_next_s.state9_722~combout\ <= NOT \comb_5|next_s.state9_722~combout\;
\comb_5|ALT_INV_next_s.state10_713~combout\ <= NOT \comb_5|next_s.state10_713~combout\;
\comb_5|ALT_INV_rotation_next.yyy_586~combout\ <= NOT \comb_5|rotation_next.yyy_586~combout\;
\comb_5|ALT_INV_rotation_next.bbb_626~combout\ <= NOT \comb_5|rotation_next.bbb_626~combout\;
\comb_5|ALT_INV_rotation_next.rrr_566~combout\ <= NOT \comb_5|rotation_next.rrr_566~combout\;
\comb_5|ALT_INV_rotation_next.ggg_606~combout\ <= NOT \comb_5|rotation_next.ggg_606~combout\;
\comb_5|ALT_INV_next_s.state3_772~combout\ <= NOT \comb_5|next_s.state3_772~combout\;
\comb_5|ALT_INV_next_s.state2_781~combout\ <= NOT \comb_5|next_s.state2_781~combout\;
\comb_5|ALT_INV_newColEn_~combout\ <= NOT \comb_5|newColEn_~combout\;
\comb_4|randcol|ALT_INV_pickCol\(0) <= NOT \comb_4|randcol|pickCol\(0);
\comb_4|randcol|ALT_INV_pickCol\(1) <= NOT \comb_4|randcol|pickCol\(1);
\comb_5|ALT_INV_next_s.state7_740~combout\ <= NOT \comb_5|next_s.state7_740~combout\;
\comb_5|ALT_INV_next_s.state4_763~combout\ <= NOT \comb_5|next_s.state4_763~combout\;
\comb_5|ALT_INV_next_s.state6_749~combout\ <= NOT \comb_5|next_s.state6_749~combout\;
\comb_5|ALT_INV_yen_~combout\ <= NOT \comb_5|yen_~combout\;
\comb_5|ALT_INV_ren_~combout\ <= NOT \comb_5|ren_~combout\;
\comb_5|ALT_INV_ben_~combout\ <= NOT \comb_5|ben_~combout\;
\comb_5|ALT_INV_gen_~combout\ <= NOT \comb_5|gen_~combout\;
\comb_4|randcol|ALT_INV_pickCol\(2) <= NOT \comb_4|randcol|pickCol\(2);
\comb_5|ALT_INV_Selector22~0_combout\ <= NOT \comb_5|Selector22~0_combout\;
\comb_5|ALT_INV_Selector20~0_combout\ <= NOT \comb_5|Selector20~0_combout\;
\comb_5|ALT_INV_pres_s.state8~q\ <= NOT \comb_5|pres_s.state8~q\;
\comb_5|ALT_INV_Equal6~0_combout\ <= NOT \comb_5|Equal6~0_combout\;
\comb_5|ALT_INV_Selector0~0_combout\ <= NOT \comb_5|Selector0~0_combout\;
\comb_5|ALT_INV_pres_s.state9~q\ <= NOT \comb_5|pres_s.state9~q\;
\comb_5|ALT_INV_Selector8~0_combout\ <= NOT \comb_5|Selector8~0_combout\;
\comb_4|RD1|ALT_INV_Equal0~combout\ <= NOT \comb_4|RD1|Equal0~combout\;
\comb_4|RD1|ALT_INV_Equal0~2_combout\ <= NOT \comb_4|RD1|Equal0~2_combout\;
\comb_4|RD1|ALT_INV_out\(13) <= NOT \comb_4|RD1|out\(13);
\comb_4|RD1|ALT_INV_out\(12) <= NOT \comb_4|RD1|out\(12);
\comb_4|RD1|ALT_INV_out\(15) <= NOT \comb_4|RD1|out\(15);
\comb_4|RD1|ALT_INV_out\(18) <= NOT \comb_4|RD1|out\(18);
\comb_4|RD1|ALT_INV_out\(19) <= NOT \comb_4|RD1|out\(19);
\comb_4|RD1|ALT_INV_Equal0~1_combout\ <= NOT \comb_4|RD1|Equal0~1_combout\;
\comb_4|RD1|ALT_INV_out\(4) <= NOT \comb_4|RD1|out\(4);
\comb_4|RD1|ALT_INV_out\(2) <= NOT \comb_4|RD1|out\(2);
\comb_4|RD1|ALT_INV_out\(5) <= NOT \comb_4|RD1|out\(5);
\comb_4|RD1|ALT_INV_out\(8) <= NOT \comb_4|RD1|out\(8);
\comb_4|RD1|ALT_INV_out\(9) <= NOT \comb_4|RD1|out\(9);
\comb_4|RD1|ALT_INV_out\(10) <= NOT \comb_4|RD1|out\(10);
\comb_4|RD1|ALT_INV_Equal0~0_combout\ <= NOT \comb_4|RD1|Equal0~0_combout\;
\comb_5|ALT_INV_Selector6~0_combout\ <= NOT \comb_5|Selector6~0_combout\;
\comb_5|ALT_INV_Selector10~0_combout\ <= NOT \comb_5|Selector10~0_combout\;
\comb_5|ALT_INV_rotation_next.rrr~0_combout\ <= NOT \comb_5|rotation_next.rrr~0_combout\;
\comb_5|ALT_INV_Selector7~0_combout\ <= NOT \comb_5|Selector7~0_combout\;
\comb_4|randn|ALT_INV_data\(1) <= NOT \comb_4|randn|data\(1);
\comb_4|F_F_1|ALT_INV_Add0~1_combout\ <= NOT \comb_4|F_F_1|Add0~1_combout\;
\comb_4|F_F_1|ALT_INV_Add0~0_combout\ <= NOT \comb_4|F_F_1|Add0~0_combout\;
\comb_5|ALT_INV_Selector30~0_combout\ <= NOT \comb_5|Selector30~0_combout\;
\comb_5|ALT_INV_pres_s.state10~q\ <= NOT \comb_5|pres_s.state10~q\;
\comb_5|ALT_INV_Selector32~0_combout\ <= NOT \comb_5|Selector32~0_combout\;
\comb_5|ALT_INV_WideOr8~0_combout\ <= NOT \comb_5|WideOr8~0_combout\;
\comb_4|randcol|ALT_INV_Mux2~0_combout\ <= NOT \comb_4|randcol|Mux2~0_combout\;
\comb_5|ALT_INV_Selector24~0_combout\ <= NOT \comb_5|Selector24~0_combout\;
\comb_5|ALT_INV_LessThan1~0_combout\ <= NOT \comb_5|LessThan1~0_combout\;
\comb_4|c1|ALT_INV_Equal0~0_combout\ <= NOT \comb_4|c1|Equal0~0_combout\;
\comb_5|ALT_INV_Selector26~0_combout\ <= NOT \comb_5|Selector26~0_combout\;
\comb_4|c1|ALT_INV_outC\(1) <= NOT \comb_4|c1|outC\(1);
\comb_4|c1|ALT_INV_outC\(0) <= NOT \comb_4|c1|outC\(0);
\comb_5|ALT_INV_enablecounter~1_combout\ <= NOT \comb_5|enablecounter~1_combout\;
\comb_5|ALT_INV_Selector16~0_combout\ <= NOT \comb_5|Selector16~0_combout\;
\comb_5|ALT_INV_Selector13~0_combout\ <= NOT \comb_5|Selector13~0_combout\;
\comb_5|ALT_INV_Selector9~0_combout\ <= NOT \comb_5|Selector9~0_combout\;
\comb_5|ALT_INV_rotation.yyy~q\ <= NOT \comb_5|rotation.yyy~q\;
\comb_4|F_F_1|ALT_INV_Equal0~combout\ <= NOT \comb_4|F_F_1|Equal0~combout\;
\comb_4|F_F_1|ALT_INV_outF\(3) <= NOT \comb_4|F_F_1|outF\(3);
\comb_4|F_F_1|ALT_INV_outF\(2) <= NOT \comb_4|F_F_1|outF\(2);
\comb_4|F_F_1|ALT_INV_outF\(4) <= NOT \comb_4|F_F_1|outF\(4);
\comb_4|F_F_1|ALT_INV_outF\(1) <= NOT \comb_4|F_F_1|outF\(1);
\comb_4|F_F_1|ALT_INV_outF\(0) <= NOT \comb_4|F_F_1|outF\(0);
\comb_5|ALT_INV_Selector15~0_combout\ <= NOT \comb_5|Selector15~0_combout\;
\comb_5|ALT_INV_rotation.bbb~q\ <= NOT \comb_5|rotation.bbb~q\;
\comb_5|ALT_INV_rotation.rrr~q\ <= NOT \comb_5|rotation.rrr~q\;
\comb_5|ALT_INV_rotation.ggg~q\ <= NOT \comb_5|rotation.ggg~q\;
\comb_4|randn|ALT_INV_data\(2) <= NOT \comb_4|randn|data\(2);
\VGA|controller|ALT_INV_always1~2_combout\ <= NOT \VGA|controller|always1~2_combout\;
\VGA|controller|ALT_INV_always1~1_combout\ <= NOT \VGA|controller|always1~1_combout\;
\VGA|controller|ALT_INV_Equal0~1_combout\ <= NOT \VGA|controller|Equal0~1_combout\;
\VGA|controller|ALT_INV_Equal0~0_combout\ <= NOT \VGA|controller|Equal0~0_combout\;
\comb_4|c1|ALT_INV_outC\(3) <= NOT \comb_4|c1|outC\(3);
\comb_4|c1|ALT_INV_outC\(2) <= NOT \comb_4|c1|outC\(2);
\comb_4|ycc|ALT_INV_outy[0]~1_combout\ <= NOT \comb_4|ycc|outy[0]~1_combout\;
\comb_4|ycc|ALT_INV_outx~0_combout\ <= NOT \comb_4|ycc|outx~0_combout\;
\wheelb|ALT_INV_done~q\ <= NOT \wheelb|done~q\;
\wheelr|ALT_INV_done~q\ <= NOT \wheelr|done~q\;
\wheely|ALT_INV_done~q\ <= NOT \wheely|done~q\;
\wheelg|ALT_INV_done~q\ <= NOT \wheelg|done~q\;
\comb_4|ycc|ALT_INV_outy[0]~0_combout\ <= NOT \comb_4|ycc|outy[0]~0_combout\;
\comb_5|ALT_INV_pres_s.state3~q\ <= NOT \comb_5|pres_s.state3~q\;
\comb_5|ALT_INV_pres_s.state2~q\ <= NOT \comb_5|pres_s.state2~q\;
\comb_5|ALT_INV_pres_s.reset_s~q\ <= NOT \comb_5|pres_s.reset_s~q\;
\VGA|controller|ALT_INV_always1~0_combout\ <= NOT \VGA|controller|always1~0_combout\;
\VGA|controller|ALT_INV_VGA_VS1~0_combout\ <= NOT \VGA|controller|VGA_VS1~0_combout\;
\VGA|controller|ALT_INV_VGA_HS1~0_combout\ <= NOT \VGA|controller|VGA_HS1~0_combout\;
\comb_5|ALT_INV_pres_s.state7~q\ <= NOT \comb_5|pres_s.state7~q\;
\comb_5|ALT_INV_pres_s.state4~q\ <= NOT \comb_5|pres_s.state4~q\;
\comb_5|ALT_INV_pres_s.state6~q\ <= NOT \comb_5|pres_s.state6~q\;
\comb_4|ycc|ALT_INV_outy\(2) <= NOT \comb_4|ycc|outy\(2);
\comb_4|ycc|ALT_INV_outy\(1) <= NOT \comb_4|ycc|outy\(1);
\comb_4|ycc|ALT_INV_outy\(0) <= NOT \comb_4|ycc|outy\(0);
\comb_4|ycc|ALT_INV_outx\(4) <= NOT \comb_4|ycc|outx\(4);
\comb_4|ycc|ALT_INV_outx\(0) <= NOT \comb_4|ycc|outx\(0);
\VGA|controller|ALT_INV_VGA_BLANK1~q\ <= NOT \VGA|controller|VGA_BLANK1~q\;
\VGA|controller|ALT_INV_VGA_VS1~q\ <= NOT \VGA|controller|VGA_VS1~q\;
\VGA|VideoMemory|auto_generated|ALT_INV_out_address_reg_b\(0) <= NOT \VGA|VideoMemory|auto_generated|out_address_reg_b\(0);
\VGA|VideoMemory|auto_generated|ALT_INV_out_address_reg_b\(1) <= NOT \VGA|VideoMemory|auto_generated|out_address_reg_b\(1);
\comb_4|RD1|ALT_INV_Add0~77_sumout\ <= NOT \comb_4|RD1|Add0~77_sumout\;
\comb_4|RD1|ALT_INV_Add0~73_sumout\ <= NOT \comb_4|RD1|Add0~73_sumout\;
\comb_4|RD1|ALT_INV_Add0~69_sumout\ <= NOT \comb_4|RD1|Add0~69_sumout\;
\comb_4|RD1|ALT_INV_Add0~65_sumout\ <= NOT \comb_4|RD1|Add0~65_sumout\;
\comb_4|RD1|ALT_INV_Add0~61_sumout\ <= NOT \comb_4|RD1|Add0~61_sumout\;
\comb_4|RD1|ALT_INV_Add0~53_sumout\ <= NOT \comb_4|RD1|Add0~53_sumout\;
\comb_4|RD1|ALT_INV_Add0~49_sumout\ <= NOT \comb_4|RD1|Add0~49_sumout\;
\comb_4|RD1|ALT_INV_Add0~45_sumout\ <= NOT \comb_4|RD1|Add0~45_sumout\;
\comb_4|RD1|ALT_INV_Add0~41_sumout\ <= NOT \comb_4|RD1|Add0~41_sumout\;
\comb_4|RD1|ALT_INV_Add0~37_sumout\ <= NOT \comb_4|RD1|Add0~37_sumout\;
\comb_4|RD1|ALT_INV_Add0~33_sumout\ <= NOT \comb_4|RD1|Add0~33_sumout\;
\comb_4|RD1|ALT_INV_out\(0) <= NOT \comb_4|RD1|out\(0);
\comb_4|RD1|ALT_INV_out\(3) <= NOT \comb_4|RD1|out\(3);
\comb_4|RD1|ALT_INV_out\(1) <= NOT \comb_4|RD1|out\(1);
\comb_4|RD1|ALT_INV_out\(6) <= NOT \comb_4|RD1|out\(6);
\comb_4|RD1|ALT_INV_out\(7) <= NOT \comb_4|RD1|out\(7);
\comb_4|RD1|ALT_INV_out\(11) <= NOT \comb_4|RD1|out\(11);
\comb_4|RD1|ALT_INV_out\(16) <= NOT \comb_4|RD1|out\(16);
\comb_4|RD1|ALT_INV_out\(17) <= NOT \comb_4|RD1|out\(17);
\comb_4|RD1|ALT_INV_out\(14) <= NOT \comb_4|RD1|out\(14);
\comb_4|randn|ALT_INV_data\(0) <= NOT \comb_4|randn|data\(0);
\comb_4|randn|ALT_INV_data\(3) <= NOT \comb_4|randn|data\(3);
\VGA|controller|ALT_INV_yCounter\(2) <= NOT \VGA|controller|yCounter\(2);
\VGA|controller|ALT_INV_yCounter\(3) <= NOT \VGA|controller|yCounter\(3);
\VGA|controller|ALT_INV_yCounter\(4) <= NOT \VGA|controller|yCounter\(4);
\VGA|controller|ALT_INV_yCounter\(5) <= NOT \VGA|controller|yCounter\(5);
\VGA|controller|ALT_INV_yCounter\(6) <= NOT \VGA|controller|yCounter\(6);
\VGA|controller|ALT_INV_yCounter\(7) <= NOT \VGA|controller|yCounter\(7);
\VGA|controller|ALT_INV_yCounter\(8) <= NOT \VGA|controller|yCounter\(8);
\VGA|controller|ALT_INV_yCounter\(1) <= NOT \VGA|controller|yCounter\(1);
\VGA|controller|ALT_INV_yCounter\(0) <= NOT \VGA|controller|yCounter\(0);
\VGA|controller|ALT_INV_yCounter\(9) <= NOT \VGA|controller|yCounter\(9);
\VGA|controller|ALT_INV_xCounter\(1) <= NOT \VGA|controller|xCounter\(1);
\VGA|controller|ALT_INV_xCounter\(0) <= NOT \VGA|controller|xCounter\(0);
\VGA|controller|ALT_INV_xCounter\(7) <= NOT \VGA|controller|xCounter\(7);
\VGA|controller|ALT_INV_xCounter\(8) <= NOT \VGA|controller|xCounter\(8);
\VGA|controller|ALT_INV_xCounter\(9) <= NOT \VGA|controller|xCounter\(9);
\VGA|controller|ALT_INV_xCounter\(6) <= NOT \VGA|controller|xCounter\(6);
\VGA|controller|ALT_INV_xCounter\(5) <= NOT \VGA|controller|xCounter\(5);
\VGA|controller|ALT_INV_xCounter\(4) <= NOT \VGA|controller|xCounter\(4);
\VGA|controller|ALT_INV_xCounter\(3) <= NOT \VGA|controller|xCounter\(3);
\VGA|controller|ALT_INV_xCounter\(2) <= NOT \VGA|controller|xCounter\(2);
\VGA|controller|controller_translator|ALT_INV_Add1~5_sumout\ <= NOT \VGA|controller|controller_translator|Add1~5_sumout\;
\VGA|controller|controller_translator|ALT_INV_Add1~1_sumout\ <= NOT \VGA|controller|controller_translator|Add1~1_sumout\;
\VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a0~portbdataout\ <= NOT \VGA|VideoMemory|auto_generated|ram_block1a0~portbdataout\;
\VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a3~portbdataout\ <= NOT \VGA|VideoMemory|auto_generated|ram_block1a3~portbdataout\;
\VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a6~portbdataout\ <= NOT \VGA|VideoMemory|auto_generated|ram_block1a6~portbdataout\;
\VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a1~portbdataout\ <= NOT \VGA|VideoMemory|auto_generated|ram_block1a1~portbdataout\;
\VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a4~portbdataout\ <= NOT \VGA|VideoMemory|auto_generated|ram_block1a4~portbdataout\;
\VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a8\ <= NOT \VGA|VideoMemory|auto_generated|ram_block1a8\;
\VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a7~portbdataout\ <= NOT \VGA|VideoMemory|auto_generated|ram_block1a7~portbdataout\;
\VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a2~portbdataout\ <= NOT \VGA|VideoMemory|auto_generated|ram_block1a2~portbdataout\;
\VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a5~portbdataout\ <= NOT \VGA|VideoMemory|auto_generated|ram_block1a5~portbdataout\;

-- Location: IOOBUF_X89_Y8_N39
\HEX0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX0(0));

-- Location: IOOBUF_X89_Y11_N79
\HEX0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX0(1));

-- Location: IOOBUF_X89_Y11_N96
\HEX0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX0(2));

-- Location: IOOBUF_X89_Y4_N79
\HEX0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX0(3));

-- Location: IOOBUF_X89_Y13_N56
\HEX0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX0(4));

-- Location: IOOBUF_X89_Y13_N39
\HEX0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX0(5));

-- Location: IOOBUF_X89_Y4_N96
\HEX0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX0(6));

-- Location: IOOBUF_X89_Y6_N39
\HEX1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX1(0));

-- Location: IOOBUF_X89_Y6_N56
\HEX1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX1(1));

-- Location: IOOBUF_X89_Y16_N39
\HEX1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX1(2));

-- Location: IOOBUF_X89_Y16_N56
\HEX1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX1(3));

-- Location: IOOBUF_X89_Y15_N39
\HEX1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX1(4));

-- Location: IOOBUF_X89_Y15_N56
\HEX1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX1(5));

-- Location: IOOBUF_X89_Y8_N56
\HEX1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX1(6));

-- Location: IOOBUF_X89_Y11_N45
\HEX4[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX4(0));

-- Location: IOOBUF_X89_Y13_N5
\HEX4[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX4(1));

-- Location: IOOBUF_X89_Y13_N22
\HEX4[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX4(2));

-- Location: IOOBUF_X89_Y8_N22
\HEX4[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX4(3));

-- Location: IOOBUF_X89_Y15_N22
\HEX4[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX4(4));

-- Location: IOOBUF_X89_Y15_N5
\HEX4[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX4(5));

-- Location: IOOBUF_X89_Y20_N45
\HEX4[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX4(6));

-- Location: IOOBUF_X89_Y20_N62
\HEX5[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(0));

-- Location: IOOBUF_X89_Y21_N56
\HEX5[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(1));

-- Location: IOOBUF_X89_Y25_N22
\HEX5[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(2));

-- Location: IOOBUF_X89_Y23_N22
\HEX5[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(3));

-- Location: IOOBUF_X89_Y9_N56
\HEX5[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(4));

-- Location: IOOBUF_X89_Y23_N5
\HEX5[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(5));

-- Location: IOOBUF_X89_Y9_N39
\HEX5[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX5(6));

-- Location: IOOBUF_X38_Y81_N36
\VGA_CLK~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	devoe => ww_devoe,
	o => ww_VGA_CLK);

-- Location: IOOBUF_X36_Y81_N53
\VGA_HS~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|controller|VGA_HS~q\,
	devoe => ww_devoe,
	o => ww_VGA_HS);

-- Location: IOOBUF_X34_Y81_N42
\VGA_VS~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|controller|VGA_VS~q\,
	devoe => ww_devoe,
	o => ww_VGA_VS);

-- Location: IOOBUF_X6_Y81_N19
\VGA_BLANK_N~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|controller|VGA_BLANK~q\,
	devoe => ww_devoe,
	o => ww_VGA_BLANK_N);

-- Location: IOOBUF_X28_Y81_N36
\VGA_SYNC_N~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_VGA_SYNC_N);

-- Location: IOOBUF_X40_Y81_N53
\VGA_R[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|VideoMemory|auto_generated|mux3|result_node[2]~0_combout\,
	devoe => ww_devoe,
	o => ww_VGA_R(0));

-- Location: IOOBUF_X38_Y81_N2
\VGA_R[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|VideoMemory|auto_generated|mux3|result_node[2]~0_combout\,
	devoe => ww_devoe,
	o => ww_VGA_R(1));

-- Location: IOOBUF_X26_Y81_N59
\VGA_R[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|VideoMemory|auto_generated|mux3|result_node[2]~0_combout\,
	devoe => ww_devoe,
	o => ww_VGA_R(2));

-- Location: IOOBUF_X38_Y81_N19
\VGA_R[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|VideoMemory|auto_generated|mux3|result_node[2]~0_combout\,
	devoe => ww_devoe,
	o => ww_VGA_R(3));

-- Location: IOOBUF_X36_Y81_N36
\VGA_R[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|VideoMemory|auto_generated|mux3|result_node[2]~0_combout\,
	devoe => ww_devoe,
	o => ww_VGA_R(4));

-- Location: IOOBUF_X22_Y81_N19
\VGA_R[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|VideoMemory|auto_generated|mux3|result_node[2]~0_combout\,
	devoe => ww_devoe,
	o => ww_VGA_R(5));

-- Location: IOOBUF_X22_Y81_N2
\VGA_R[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|VideoMemory|auto_generated|mux3|result_node[2]~0_combout\,
	devoe => ww_devoe,
	o => ww_VGA_R(6));

-- Location: IOOBUF_X26_Y81_N42
\VGA_R[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|VideoMemory|auto_generated|mux3|result_node[2]~0_combout\,
	devoe => ww_devoe,
	o => ww_VGA_R(7));

-- Location: IOOBUF_X30_Y81_N53
\VGA_R[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|VideoMemory|auto_generated|mux3|result_node[2]~0_combout\,
	devoe => ww_devoe,
	o => ww_VGA_R(8));

-- Location: IOOBUF_X40_Y81_N2
\VGA_R[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|VideoMemory|auto_generated|mux3|result_node[2]~0_combout\,
	devoe => ww_devoe,
	o => ww_VGA_R(9));

-- Location: IOOBUF_X4_Y81_N19
\VGA_G[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|VideoMemory|auto_generated|mux3|result_node[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_VGA_G(0));

-- Location: IOOBUF_X4_Y81_N2
\VGA_G[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|VideoMemory|auto_generated|mux3|result_node[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_VGA_G(1));

-- Location: IOOBUF_X20_Y81_N19
\VGA_G[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|VideoMemory|auto_generated|mux3|result_node[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_VGA_G(2));

-- Location: IOOBUF_X6_Y81_N2
\VGA_G[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|VideoMemory|auto_generated|mux3|result_node[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_VGA_G(3));

-- Location: IOOBUF_X10_Y81_N59
\VGA_G[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|VideoMemory|auto_generated|mux3|result_node[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_VGA_G(4));

-- Location: IOOBUF_X10_Y81_N42
\VGA_G[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|VideoMemory|auto_generated|mux3|result_node[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_VGA_G(5));

-- Location: IOOBUF_X18_Y81_N42
\VGA_G[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|VideoMemory|auto_generated|mux3|result_node[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_VGA_G(6));

-- Location: IOOBUF_X18_Y81_N59
\VGA_G[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|VideoMemory|auto_generated|mux3|result_node[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_VGA_G(7));

-- Location: IOOBUF_X6_Y81_N36
\VGA_G[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|VideoMemory|auto_generated|mux3|result_node[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_VGA_G(8));

-- Location: IOOBUF_X14_Y81_N53
\VGA_G[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|VideoMemory|auto_generated|mux3|result_node[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_VGA_G(9));

-- Location: IOOBUF_X40_Y81_N36
\VGA_B[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|VideoMemory|auto_generated|mux3|result_node[0]~2_combout\,
	devoe => ww_devoe,
	o => ww_VGA_B(0));

-- Location: IOOBUF_X28_Y81_N19
\VGA_B[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|VideoMemory|auto_generated|mux3|result_node[0]~2_combout\,
	devoe => ww_devoe,
	o => ww_VGA_B(1));

-- Location: IOOBUF_X20_Y81_N2
\VGA_B[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|VideoMemory|auto_generated|mux3|result_node[0]~2_combout\,
	devoe => ww_devoe,
	o => ww_VGA_B(2));

-- Location: IOOBUF_X36_Y81_N19
\VGA_B[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|VideoMemory|auto_generated|mux3|result_node[0]~2_combout\,
	devoe => ww_devoe,
	o => ww_VGA_B(3));

-- Location: IOOBUF_X28_Y81_N2
\VGA_B[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|VideoMemory|auto_generated|mux3|result_node[0]~2_combout\,
	devoe => ww_devoe,
	o => ww_VGA_B(4));

-- Location: IOOBUF_X36_Y81_N2
\VGA_B[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|VideoMemory|auto_generated|mux3|result_node[0]~2_combout\,
	devoe => ww_devoe,
	o => ww_VGA_B(5));

-- Location: IOOBUF_X40_Y81_N19
\VGA_B[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|VideoMemory|auto_generated|mux3|result_node[0]~2_combout\,
	devoe => ww_devoe,
	o => ww_VGA_B(6));

-- Location: IOOBUF_X32_Y81_N19
\VGA_B[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|VideoMemory|auto_generated|mux3|result_node[0]~2_combout\,
	devoe => ww_devoe,
	o => ww_VGA_B(7));

-- Location: IOOBUF_X89_Y6_N5
\VGA_B[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|VideoMemory|auto_generated|mux3|result_node[0]~2_combout\,
	devoe => ww_devoe,
	o => ww_VGA_B(8));

-- Location: IOOBUF_X89_Y8_N5
\VGA_B[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|VideoMemory|auto_generated|mux3|result_node[0]~2_combout\,
	devoe => ww_devoe,
	o => ww_VGA_B(9));

-- Location: IOIBUF_X32_Y0_N1
\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: PLLREFCLKSELECT_X0_Y21_N0
\VGA|mypll|altpll_component|auto_generated|generic_pll1~PLL_REFCLK_SELECT\ : cyclonev_pll_refclk_select
-- pragma translate_off
GENERIC MAP (
	pll_auto_clk_sw_en => "false",
	pll_clk_loss_edge => "both_edges",
	pll_clk_loss_sw_en => "false",
	pll_clk_sw_dly => 0,
	pll_clkin_0_src => "clk_0",
	pll_clkin_1_src => "ref_clk1",
	pll_manu_clk_sw_en => "false",
	pll_sw_refclk_src => "clk_0")
-- pragma translate_on
PORT MAP (
	clkin => \VGA|mypll|altpll_component|auto_generated|generic_pll1~PLL_REFCLK_SELECT_CLKIN_bus\,
	clkout => \VGA|mypll|altpll_component|auto_generated|generic_pll1~PLL_REFCLK_SELECT_O_CLKOUT\,
	extswitchbuf => \VGA|mypll|altpll_component|auto_generated|generic_pll1~PLL_REFCLK_SELECT_O_EXTSWITCHBUF\);

-- Location: FRACTIONALPLL_X0_Y15_N0
\VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL\ : cyclonev_fractional_pll
-- pragma translate_off
GENERIC MAP (
	dsm_accumulator_reset_value => 0,
	forcelock => "false",
	mimic_fbclk_type => "gclk_far",
	nreset_invert => "true",
	output_clock_frequency => "300.0 mhz",
	pll_atb => 0,
	pll_bwctrl => 4000,
	pll_cmp_buf_dly => "0 ps",
	pll_cp_comp => "true",
	pll_cp_current => 10,
	pll_ctrl_override_setting => "false",
	pll_dsm_dither => "disable",
	pll_dsm_out_sel => "disable",
	pll_dsm_reset => "false",
	pll_ecn_bypass => "false",
	pll_ecn_test_en => "false",
	pll_enable => "true",
	pll_fbclk_mux_1 => "glb",
	pll_fbclk_mux_2 => "fb_1",
	pll_fractional_carry_out => 32,
	pll_fractional_division => 1,
	pll_fractional_division_string => "'0'",
	pll_fractional_value_ready => "true",
	pll_lf_testen => "false",
	pll_lock_fltr_cfg => 25,
	pll_lock_fltr_test => "false",
	pll_m_cnt_bypass_en => "false",
	pll_m_cnt_coarse_dly => "0 ps",
	pll_m_cnt_fine_dly => "0 ps",
	pll_m_cnt_hi_div => 6,
	pll_m_cnt_in_src => "ph_mux_clk",
	pll_m_cnt_lo_div => 6,
	pll_m_cnt_odd_div_duty_en => "false",
	pll_m_cnt_ph_mux_prst => 0,
	pll_m_cnt_prst => 1,
	pll_n_cnt_bypass_en => "false",
	pll_n_cnt_coarse_dly => "0 ps",
	pll_n_cnt_fine_dly => "0 ps",
	pll_n_cnt_hi_div => 1,
	pll_n_cnt_lo_div => 1,
	pll_n_cnt_odd_div_duty_en => "false",
	pll_ref_buf_dly => "0 ps",
	pll_reg_boost => 0,
	pll_regulator_bypass => "false",
	pll_ripplecap_ctrl => 0,
	pll_slf_rst => "false",
	pll_tclk_mux_en => "false",
	pll_tclk_sel => "n_src",
	pll_test_enable => "false",
	pll_testdn_enable => "false",
	pll_testup_enable => "false",
	pll_unlock_fltr_cfg => 2,
	pll_vco_div => 2,
	pll_vco_ph0_en => "true",
	pll_vco_ph1_en => "true",
	pll_vco_ph2_en => "true",
	pll_vco_ph3_en => "true",
	pll_vco_ph4_en => "true",
	pll_vco_ph5_en => "true",
	pll_vco_ph6_en => "true",
	pll_vco_ph7_en => "true",
	pll_vctrl_test_voltage => 750,
	reference_clock_frequency => "50.0 mhz",
	vccd0g_atb => "disable",
	vccd0g_output => 0,
	vccd1g_atb => "disable",
	vccd1g_output => 0,
	vccm1g_tap => 2,
	vccr_pd => "false",
	vcodiv_override => "false",
  fractional_pll_index => 0)
-- pragma translate_on
PORT MAP (
	coreclkfb => \VGA|mypll|altpll_component|auto_generated|fb_clkin\,
	ecnc1test => \VGA|mypll|altpll_component|auto_generated|generic_pll1~PLL_REFCLK_SELECT_O_EXTSWITCHBUF\,
	nresync => GND,
	refclkin => \VGA|mypll|altpll_component|auto_generated|generic_pll1~PLL_REFCLK_SELECT_O_CLKOUT\,
	shift => \VGA|mypll|altpll_component|auto_generated|generic_pll1~PLL_RECONFIG_O_SHIFT\,
	shiftdonein => \VGA|mypll|altpll_component|auto_generated|generic_pll1~PLL_RECONFIG_O_SHIFT\,
	shiften => \VGA|mypll|altpll_component|auto_generated|generic_pll1~PLL_RECONFIG_O_SHIFTENM\,
	up => \VGA|mypll|altpll_component|auto_generated|generic_pll1~PLL_RECONFIG_O_UP\,
	cntnen => \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_CNTNEN\,
	fbclk => \VGA|mypll|altpll_component|auto_generated|fb_clkin\,
	tclk => \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_TCLK\,
	vcoph => \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_VCOPH_bus\,
	mhi => \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_MHI_bus\);

-- Location: PLLRECONFIG_X0_Y19_N0
\VGA|mypll|altpll_component|auto_generated|generic_pll1~PLL_RECONFIG\ : cyclonev_pll_reconfig
-- pragma translate_off
GENERIC MAP (
  fractional_pll_index => 0)
-- pragma translate_on
PORT MAP (
	cntnen => \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_CNTNEN\,
	mhi => \VGA|mypll|altpll_component|auto_generated|generic_pll1~PLL_RECONFIG_MHI_bus\,
	shift => \VGA|mypll|altpll_component|auto_generated|generic_pll1~PLL_RECONFIG_O_SHIFT\,
	shiftenm => \VGA|mypll|altpll_component|auto_generated|generic_pll1~PLL_RECONFIG_O_SHIFTENM\,
	up => \VGA|mypll|altpll_component|auto_generated|generic_pll1~PLL_RECONFIG_O_UP\,
	shiften => \VGA|mypll|altpll_component|auto_generated|generic_pll1~PLL_RECONFIG_SHIFTEN_bus\);

-- Location: PLLOUTPUTCOUNTER_X0_Y20_N1
\VGA|mypll|altpll_component|auto_generated|generic_pll1~PLL_OUTPUT_COUNTER\ : cyclonev_pll_output_counter
-- pragma translate_off
GENERIC MAP (
	c_cnt_coarse_dly => "0 ps",
	c_cnt_fine_dly => "0 ps",
	c_cnt_in_src => "ph_mux_clk",
	c_cnt_ph_mux_prst => 0,
	c_cnt_prst => 1,
	cnt_fpll_src => "fpll_0",
	dprio0_cnt_bypass_en => "false",
	dprio0_cnt_hi_div => 6,
	dprio0_cnt_lo_div => 6,
	dprio0_cnt_odd_div_even_duty_en => "false",
	duty_cycle => 50,
	output_clock_frequency => "25.0 mhz",
	phase_shift => "0 ps",
  fractional_pll_index => 0,
  output_counter_index => 6)
-- pragma translate_on
PORT MAP (
	nen0 => \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_CNTNEN\,
	shift0 => \VGA|mypll|altpll_component|auto_generated|generic_pll1~PLL_RECONFIG_O_SHIFT\,
	shiften => \VGA|mypll|altpll_component|auto_generated|generic_pll1~PLL_RECONFIGSHIFTEN6\,
	tclk0 => \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_TCLK\,
	up0 => \VGA|mypll|altpll_component|auto_generated|generic_pll1~PLL_RECONFIG_O_UP\,
	vco0ph => \VGA|mypll|altpll_component|auto_generated|generic_pll1~PLL_OUTPUT_COUNTER_VCO0PH_bus\,
	divclk => \VGA|mypll|altpll_component|auto_generated|clk\(0));

-- Location: CLKCTRL_G6
\VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \VGA|mypll|altpll_component|auto_generated|clk\(0),
	outclk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\);

-- Location: LABCELL_X42_Y4_N0
\VGA|controller|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|Add0~33_sumout\ = SUM(( \VGA|controller|xCounter\(0) ) + ( VCC ) + ( !VCC ))
-- \VGA|controller|Add0~34\ = CARRY(( \VGA|controller|xCounter\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \VGA|controller|ALT_INV_xCounter\(0),
	cin => GND,
	sumout => \VGA|controller|Add0~33_sumout\,
	cout => \VGA|controller|Add0~34\);

-- Location: IOIBUF_X36_Y0_N1
\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: LABCELL_X42_Y4_N45
\VGA|controller|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|Equal0~1_combout\ = ( !\VGA|controller|xCounter\(6) & ( (\VGA|controller|xCounter\(1) & (!\VGA|controller|xCounter\(5) & \VGA|controller|xCounter\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|controller|ALT_INV_xCounter\(1),
	datac => \VGA|controller|ALT_INV_xCounter\(5),
	datad => \VGA|controller|ALT_INV_xCounter\(0),
	dataf => \VGA|controller|ALT_INV_xCounter\(6),
	combout => \VGA|controller|Equal0~1_combout\);

-- Location: LABCELL_X42_Y4_N18
\VGA|controller|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|Add0~17_sumout\ = SUM(( \VGA|controller|xCounter\(6) ) + ( GND ) + ( \VGA|controller|Add0~14\ ))
-- \VGA|controller|Add0~18\ = CARRY(( \VGA|controller|xCounter\(6) ) + ( GND ) + ( \VGA|controller|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \VGA|controller|ALT_INV_xCounter\(6),
	cin => \VGA|controller|Add0~14\,
	sumout => \VGA|controller|Add0~17_sumout\,
	cout => \VGA|controller|Add0~18\);

-- Location: LABCELL_X42_Y4_N21
\VGA|controller|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|Add0~29_sumout\ = SUM(( \VGA|controller|xCounter\(7) ) + ( GND ) + ( \VGA|controller|Add0~18\ ))
-- \VGA|controller|Add0~30\ = CARRY(( \VGA|controller|xCounter\(7) ) + ( GND ) + ( \VGA|controller|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \VGA|controller|ALT_INV_xCounter\(7),
	cin => \VGA|controller|Add0~18\,
	sumout => \VGA|controller|Add0~29_sumout\,
	cout => \VGA|controller|Add0~30\);

-- Location: FF_X42_Y4_N23
\VGA|controller|xCounter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	d => \VGA|controller|Add0~29_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \VGA|controller|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|controller|xCounter\(7));

-- Location: LABCELL_X42_Y4_N24
\VGA|controller|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|Add0~25_sumout\ = SUM(( \VGA|controller|xCounter\(8) ) + ( GND ) + ( \VGA|controller|Add0~30\ ))
-- \VGA|controller|Add0~26\ = CARRY(( \VGA|controller|xCounter\(8) ) + ( GND ) + ( \VGA|controller|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \VGA|controller|ALT_INV_xCounter\(8),
	cin => \VGA|controller|Add0~30\,
	sumout => \VGA|controller|Add0~25_sumout\,
	cout => \VGA|controller|Add0~26\);

-- Location: FF_X42_Y4_N26
\VGA|controller|xCounter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	d => \VGA|controller|Add0~25_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \VGA|controller|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|controller|xCounter\(8));

-- Location: LABCELL_X42_Y4_N27
\VGA|controller|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|Add0~21_sumout\ = SUM(( \VGA|controller|xCounter\(9) ) + ( GND ) + ( \VGA|controller|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \VGA|controller|ALT_INV_xCounter\(9),
	cin => \VGA|controller|Add0~26\,
	sumout => \VGA|controller|Add0~21_sumout\);

-- Location: FF_X42_Y4_N29
\VGA|controller|xCounter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	d => \VGA|controller|Add0~21_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \VGA|controller|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|controller|xCounter\(9));

-- Location: FF_X42_Y4_N25
\VGA|controller|xCounter[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	d => \VGA|controller|Add0~25_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \VGA|controller|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|controller|xCounter[8]~DUPLICATE_q\);

-- Location: LABCELL_X42_Y4_N48
\VGA|controller|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|Equal0~0_combout\ = ( \VGA|controller|xCounter\(3) & ( \VGA|controller|xCounter[8]~DUPLICATE_q\ & ( (\VGA|controller|xCounter\(4) & (\VGA|controller|xCounter\(9) & \VGA|controller|xCounter\(2))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|controller|ALT_INV_xCounter\(4),
	datab => \VGA|controller|ALT_INV_xCounter\(9),
	datad => \VGA|controller|ALT_INV_xCounter\(2),
	datae => \VGA|controller|ALT_INV_xCounter\(3),
	dataf => \VGA|controller|ALT_INV_xCounter[8]~DUPLICATE_q\,
	combout => \VGA|controller|Equal0~0_combout\);

-- Location: FF_X42_Y4_N22
\VGA|controller|xCounter[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	d => \VGA|controller|Add0~29_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \VGA|controller|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|controller|xCounter[7]~DUPLICATE_q\);

-- Location: LABCELL_X42_Y4_N42
\VGA|controller|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|Equal0~2_combout\ = ( !\VGA|controller|xCounter[7]~DUPLICATE_q\ & ( (\VGA|controller|Equal0~1_combout\ & \VGA|controller|Equal0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \VGA|controller|ALT_INV_Equal0~1_combout\,
	datac => \VGA|controller|ALT_INV_Equal0~0_combout\,
	dataf => \VGA|controller|ALT_INV_xCounter[7]~DUPLICATE_q\,
	combout => \VGA|controller|Equal0~2_combout\);

-- Location: FF_X42_Y4_N2
\VGA|controller|xCounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	d => \VGA|controller|Add0~33_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \VGA|controller|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|controller|xCounter\(0));

-- Location: LABCELL_X42_Y4_N3
\VGA|controller|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|Add0~37_sumout\ = SUM(( \VGA|controller|xCounter\(1) ) + ( GND ) + ( \VGA|controller|Add0~34\ ))
-- \VGA|controller|Add0~38\ = CARRY(( \VGA|controller|xCounter\(1) ) + ( GND ) + ( \VGA|controller|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \VGA|controller|ALT_INV_xCounter\(1),
	cin => \VGA|controller|Add0~34\,
	sumout => \VGA|controller|Add0~37_sumout\,
	cout => \VGA|controller|Add0~38\);

-- Location: FF_X42_Y4_N5
\VGA|controller|xCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	d => \VGA|controller|Add0~37_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \VGA|controller|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|controller|xCounter\(1));

-- Location: LABCELL_X42_Y4_N6
\VGA|controller|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|Add0~1_sumout\ = SUM(( \VGA|controller|xCounter\(2) ) + ( GND ) + ( \VGA|controller|Add0~38\ ))
-- \VGA|controller|Add0~2\ = CARRY(( \VGA|controller|xCounter\(2) ) + ( GND ) + ( \VGA|controller|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \VGA|controller|ALT_INV_xCounter\(2),
	cin => \VGA|controller|Add0~38\,
	sumout => \VGA|controller|Add0~1_sumout\,
	cout => \VGA|controller|Add0~2\);

-- Location: FF_X42_Y4_N7
\VGA|controller|xCounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	d => \VGA|controller|Add0~1_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \VGA|controller|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|controller|xCounter\(2));

-- Location: LABCELL_X42_Y4_N9
\VGA|controller|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|Add0~5_sumout\ = SUM(( \VGA|controller|xCounter\(3) ) + ( GND ) + ( \VGA|controller|Add0~2\ ))
-- \VGA|controller|Add0~6\ = CARRY(( \VGA|controller|xCounter\(3) ) + ( GND ) + ( \VGA|controller|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \VGA|controller|ALT_INV_xCounter\(3),
	cin => \VGA|controller|Add0~2\,
	sumout => \VGA|controller|Add0~5_sumout\,
	cout => \VGA|controller|Add0~6\);

-- Location: FF_X42_Y4_N10
\VGA|controller|xCounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	d => \VGA|controller|Add0~5_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \VGA|controller|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|controller|xCounter\(3));

-- Location: LABCELL_X42_Y4_N12
\VGA|controller|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|Add0~9_sumout\ = SUM(( \VGA|controller|xCounter\(4) ) + ( GND ) + ( \VGA|controller|Add0~6\ ))
-- \VGA|controller|Add0~10\ = CARRY(( \VGA|controller|xCounter\(4) ) + ( GND ) + ( \VGA|controller|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \VGA|controller|ALT_INV_xCounter\(4),
	cin => \VGA|controller|Add0~6\,
	sumout => \VGA|controller|Add0~9_sumout\,
	cout => \VGA|controller|Add0~10\);

-- Location: FF_X42_Y4_N13
\VGA|controller|xCounter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	d => \VGA|controller|Add0~9_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \VGA|controller|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|controller|xCounter\(4));

-- Location: LABCELL_X42_Y4_N15
\VGA|controller|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|Add0~13_sumout\ = SUM(( \VGA|controller|xCounter\(5) ) + ( GND ) + ( \VGA|controller|Add0~10\ ))
-- \VGA|controller|Add0~14\ = CARRY(( \VGA|controller|xCounter\(5) ) + ( GND ) + ( \VGA|controller|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \VGA|controller|ALT_INV_xCounter\(5),
	cin => \VGA|controller|Add0~10\,
	sumout => \VGA|controller|Add0~13_sumout\,
	cout => \VGA|controller|Add0~14\);

-- Location: FF_X42_Y4_N17
\VGA|controller|xCounter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	d => \VGA|controller|Add0~13_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \VGA|controller|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|controller|xCounter\(5));

-- Location: FF_X42_Y4_N20
\VGA|controller|xCounter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	d => \VGA|controller|Add0~17_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \VGA|controller|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|controller|xCounter\(6));

-- Location: LABCELL_X42_Y4_N57
\VGA|controller|VGA_HS1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|VGA_HS1~0_combout\ = ( \VGA|controller|xCounter\(1) & ( \VGA|controller|xCounter\(4) & ( ((\VGA|controller|xCounter\(0)) # (\VGA|controller|xCounter\(3))) # (\VGA|controller|xCounter\(2)) ) ) ) # ( !\VGA|controller|xCounter\(1) & ( 
-- \VGA|controller|xCounter\(4) & ( (\VGA|controller|xCounter\(3)) # (\VGA|controller|xCounter\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000111111001111110011111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \VGA|controller|ALT_INV_xCounter\(2),
	datac => \VGA|controller|ALT_INV_xCounter\(3),
	datad => \VGA|controller|ALT_INV_xCounter\(0),
	datae => \VGA|controller|ALT_INV_xCounter\(1),
	dataf => \VGA|controller|ALT_INV_xCounter\(4),
	combout => \VGA|controller|VGA_HS1~0_combout\);

-- Location: LABCELL_X42_Y4_N36
\VGA|controller|VGA_HS1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|VGA_HS1~1_combout\ = ( \VGA|controller|xCounter\(7) & ( \VGA|controller|xCounter\(9) & ( ((!\VGA|controller|xCounter\(6) & (!\VGA|controller|VGA_HS1~0_combout\ & !\VGA|controller|xCounter\(5))) # (\VGA|controller|xCounter\(6) & 
-- (\VGA|controller|VGA_HS1~0_combout\ & \VGA|controller|xCounter\(5)))) # (\VGA|controller|xCounter\(8)) ) ) ) # ( !\VGA|controller|xCounter\(7) & ( \VGA|controller|xCounter\(9) ) ) # ( \VGA|controller|xCounter\(7) & ( !\VGA|controller|xCounter\(9) ) ) # ( 
-- !\VGA|controller|xCounter\(7) & ( !\VGA|controller|xCounter\(9) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111000111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|controller|ALT_INV_xCounter\(6),
	datab => \VGA|controller|ALT_INV_VGA_HS1~0_combout\,
	datac => \VGA|controller|ALT_INV_xCounter\(8),
	datad => \VGA|controller|ALT_INV_xCounter\(5),
	datae => \VGA|controller|ALT_INV_xCounter\(7),
	dataf => \VGA|controller|ALT_INV_xCounter\(9),
	combout => \VGA|controller|VGA_HS1~1_combout\);

-- Location: FF_X42_Y4_N37
\VGA|controller|VGA_HS1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	d => \VGA|controller|VGA_HS1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|controller|VGA_HS1~q\);

-- Location: FF_X37_Y79_N16
\VGA|controller|VGA_HS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	asdata => \VGA|controller|VGA_HS1~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|controller|VGA_HS~q\);

-- Location: LABCELL_X36_Y4_N30
\VGA|controller|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|Add1~5_sumout\ = SUM(( \VGA|controller|yCounter\(0) ) + ( VCC ) + ( !VCC ))
-- \VGA|controller|Add1~6\ = CARRY(( \VGA|controller|yCounter\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \VGA|controller|ALT_INV_yCounter\(0),
	cin => GND,
	sumout => \VGA|controller|Add1~5_sumout\,
	cout => \VGA|controller|Add1~6\);

-- Location: LABCELL_X36_Y4_N9
\VGA|controller|always1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|always1~2_combout\ = ( \VGA|controller|yCounter\(2) & ( !\VGA|controller|yCounter\(0) & ( (!\VGA|controller|yCounter\(1) & (\VGA|controller|yCounter\(3) & !\VGA|controller|yCounter\(4))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000000010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|controller|ALT_INV_yCounter\(1),
	datab => \VGA|controller|ALT_INV_yCounter\(3),
	datac => \VGA|controller|ALT_INV_yCounter\(4),
	datae => \VGA|controller|ALT_INV_yCounter\(2),
	dataf => \VGA|controller|ALT_INV_yCounter\(0),
	combout => \VGA|controller|always1~2_combout\);

-- Location: LABCELL_X36_Y4_N42
\VGA|controller|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|Add1~29_sumout\ = SUM(( \VGA|controller|yCounter\(4) ) + ( GND ) + ( \VGA|controller|Add1~34\ ))
-- \VGA|controller|Add1~30\ = CARRY(( \VGA|controller|yCounter\(4) ) + ( GND ) + ( \VGA|controller|Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \VGA|controller|ALT_INV_yCounter\(4),
	cin => \VGA|controller|Add1~34\,
	sumout => \VGA|controller|Add1~29_sumout\,
	cout => \VGA|controller|Add1~30\);

-- Location: LABCELL_X36_Y4_N45
\VGA|controller|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|Add1~25_sumout\ = SUM(( \VGA|controller|yCounter\(5) ) + ( GND ) + ( \VGA|controller|Add1~30\ ))
-- \VGA|controller|Add1~26\ = CARRY(( \VGA|controller|yCounter\(5) ) + ( GND ) + ( \VGA|controller|Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \VGA|controller|ALT_INV_yCounter\(5),
	cin => \VGA|controller|Add1~30\,
	sumout => \VGA|controller|Add1~25_sumout\,
	cout => \VGA|controller|Add1~26\);

-- Location: FF_X36_Y4_N46
\VGA|controller|yCounter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	d => \VGA|controller|Add1~25_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \VGA|controller|always1~3_combout\,
	ena => \VGA|controller|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|controller|yCounter\(5));

-- Location: LABCELL_X36_Y4_N48
\VGA|controller|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|Add1~21_sumout\ = SUM(( \VGA|controller|yCounter\(6) ) + ( GND ) + ( \VGA|controller|Add1~26\ ))
-- \VGA|controller|Add1~22\ = CARRY(( \VGA|controller|yCounter\(6) ) + ( GND ) + ( \VGA|controller|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \VGA|controller|ALT_INV_yCounter\(6),
	cin => \VGA|controller|Add1~26\,
	sumout => \VGA|controller|Add1~21_sumout\,
	cout => \VGA|controller|Add1~22\);

-- Location: FF_X36_Y4_N50
\VGA|controller|yCounter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	d => \VGA|controller|Add1~21_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \VGA|controller|always1~3_combout\,
	ena => \VGA|controller|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|controller|yCounter\(6));

-- Location: LABCELL_X36_Y4_N51
\VGA|controller|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|Add1~17_sumout\ = SUM(( \VGA|controller|yCounter\(7) ) + ( GND ) + ( \VGA|controller|Add1~22\ ))
-- \VGA|controller|Add1~18\ = CARRY(( \VGA|controller|yCounter\(7) ) + ( GND ) + ( \VGA|controller|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \VGA|controller|ALT_INV_yCounter\(7),
	cin => \VGA|controller|Add1~22\,
	sumout => \VGA|controller|Add1~17_sumout\,
	cout => \VGA|controller|Add1~18\);

-- Location: FF_X36_Y4_N52
\VGA|controller|yCounter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	d => \VGA|controller|Add1~17_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \VGA|controller|always1~3_combout\,
	ena => \VGA|controller|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|controller|yCounter\(7));

-- Location: LABCELL_X36_Y4_N54
\VGA|controller|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|Add1~13_sumout\ = SUM(( \VGA|controller|yCounter\(8) ) + ( GND ) + ( \VGA|controller|Add1~18\ ))
-- \VGA|controller|Add1~14\ = CARRY(( \VGA|controller|yCounter\(8) ) + ( GND ) + ( \VGA|controller|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \VGA|controller|ALT_INV_yCounter\(8),
	cin => \VGA|controller|Add1~18\,
	sumout => \VGA|controller|Add1~13_sumout\,
	cout => \VGA|controller|Add1~14\);

-- Location: FF_X36_Y4_N55
\VGA|controller|yCounter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	d => \VGA|controller|Add1~13_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \VGA|controller|always1~3_combout\,
	ena => \VGA|controller|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|controller|yCounter\(8));

-- Location: LABCELL_X36_Y4_N57
\VGA|controller|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|Add1~1_sumout\ = SUM(( \VGA|controller|yCounter\(9) ) + ( GND ) + ( \VGA|controller|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \VGA|controller|ALT_INV_yCounter\(9),
	cin => \VGA|controller|Add1~14\,
	sumout => \VGA|controller|Add1~1_sumout\);

-- Location: FF_X36_Y4_N58
\VGA|controller|yCounter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	d => \VGA|controller|Add1~1_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \VGA|controller|always1~3_combout\,
	ena => \VGA|controller|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|controller|yCounter\(9));

-- Location: LABCELL_X36_Y4_N0
\VGA|controller|always1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|always1~1_combout\ = ( !\VGA|controller|yCounter\(5) & ( !\VGA|controller|yCounter\(6) & ( (!\VGA|controller|yCounter\(8) & (\VGA|controller|yCounter\(9) & !\VGA|controller|yCounter\(7))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \VGA|controller|ALT_INV_yCounter\(8),
	datac => \VGA|controller|ALT_INV_yCounter\(9),
	datad => \VGA|controller|ALT_INV_yCounter\(7),
	datae => \VGA|controller|ALT_INV_yCounter\(5),
	dataf => \VGA|controller|ALT_INV_yCounter\(6),
	combout => \VGA|controller|always1~1_combout\);

-- Location: LABCELL_X36_Y4_N24
\VGA|controller|always1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|always1~3_combout\ = ( \VGA|controller|always1~1_combout\ & ( !\VGA|controller|xCounter[7]~DUPLICATE_q\ & ( (\VGA|controller|Equal0~0_combout\ & (\VGA|controller|Equal0~1_combout\ & \VGA|controller|always1~2_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \VGA|controller|ALT_INV_Equal0~0_combout\,
	datac => \VGA|controller|ALT_INV_Equal0~1_combout\,
	datad => \VGA|controller|ALT_INV_always1~2_combout\,
	datae => \VGA|controller|ALT_INV_always1~1_combout\,
	dataf => \VGA|controller|ALT_INV_xCounter[7]~DUPLICATE_q\,
	combout => \VGA|controller|always1~3_combout\);

-- Location: FF_X36_Y4_N32
\VGA|controller|yCounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	d => \VGA|controller|Add1~5_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \VGA|controller|always1~3_combout\,
	ena => \VGA|controller|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|controller|yCounter\(0));

-- Location: LABCELL_X36_Y4_N33
\VGA|controller|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|Add1~9_sumout\ = SUM(( \VGA|controller|yCounter\(1) ) + ( GND ) + ( \VGA|controller|Add1~6\ ))
-- \VGA|controller|Add1~10\ = CARRY(( \VGA|controller|yCounter\(1) ) + ( GND ) + ( \VGA|controller|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \VGA|controller|ALT_INV_yCounter\(1),
	cin => \VGA|controller|Add1~6\,
	sumout => \VGA|controller|Add1~9_sumout\,
	cout => \VGA|controller|Add1~10\);

-- Location: FF_X36_Y4_N35
\VGA|controller|yCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	d => \VGA|controller|Add1~9_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \VGA|controller|always1~3_combout\,
	ena => \VGA|controller|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|controller|yCounter\(1));

-- Location: LABCELL_X36_Y4_N36
\VGA|controller|Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|Add1~37_sumout\ = SUM(( \VGA|controller|yCounter\(2) ) + ( GND ) + ( \VGA|controller|Add1~10\ ))
-- \VGA|controller|Add1~38\ = CARRY(( \VGA|controller|yCounter\(2) ) + ( GND ) + ( \VGA|controller|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \VGA|controller|ALT_INV_yCounter\(2),
	cin => \VGA|controller|Add1~10\,
	sumout => \VGA|controller|Add1~37_sumout\,
	cout => \VGA|controller|Add1~38\);

-- Location: FF_X36_Y4_N37
\VGA|controller|yCounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	d => \VGA|controller|Add1~37_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \VGA|controller|always1~3_combout\,
	ena => \VGA|controller|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|controller|yCounter\(2));

-- Location: LABCELL_X36_Y4_N39
\VGA|controller|Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|Add1~33_sumout\ = SUM(( \VGA|controller|yCounter\(3) ) + ( GND ) + ( \VGA|controller|Add1~38\ ))
-- \VGA|controller|Add1~34\ = CARRY(( \VGA|controller|yCounter\(3) ) + ( GND ) + ( \VGA|controller|Add1~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \VGA|controller|ALT_INV_yCounter\(3),
	cin => \VGA|controller|Add1~38\,
	sumout => \VGA|controller|Add1~33_sumout\,
	cout => \VGA|controller|Add1~34\);

-- Location: FF_X36_Y4_N41
\VGA|controller|yCounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	d => \VGA|controller|Add1~33_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \VGA|controller|always1~3_combout\,
	ena => \VGA|controller|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|controller|yCounter\(3));

-- Location: FF_X36_Y4_N44
\VGA|controller|yCounter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	d => \VGA|controller|Add1~29_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \VGA|controller|always1~3_combout\,
	ena => \VGA|controller|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|controller|yCounter\(4));

-- Location: LABCELL_X36_Y4_N15
\VGA|controller|always1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|always1~0_combout\ = ( \VGA|controller|yCounter\(3) & ( (!\VGA|controller|yCounter\(4) & \VGA|controller|yCounter\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \VGA|controller|ALT_INV_yCounter\(4),
	datad => \VGA|controller|ALT_INV_yCounter\(2),
	dataf => \VGA|controller|ALT_INV_yCounter\(3),
	combout => \VGA|controller|always1~0_combout\);

-- Location: LABCELL_X36_Y4_N21
\VGA|controller|VGA_VS1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|VGA_VS1~0_combout\ = ( \VGA|controller|yCounter\(5) & ( \VGA|controller|yCounter\(6) & ( (\VGA|controller|yCounter\(7) & \VGA|controller|yCounter\(8)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \VGA|controller|ALT_INV_yCounter\(7),
	datac => \VGA|controller|ALT_INV_yCounter\(8),
	datae => \VGA|controller|ALT_INV_yCounter\(5),
	dataf => \VGA|controller|ALT_INV_yCounter\(6),
	combout => \VGA|controller|VGA_VS1~0_combout\);

-- Location: LABCELL_X36_Y4_N12
\VGA|controller|VGA_VS1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|VGA_VS1~1_combout\ = ( \VGA|controller|yCounter\(9) ) # ( !\VGA|controller|yCounter\(9) & ( (!\VGA|controller|always1~0_combout\) # ((!\VGA|controller|VGA_VS1~0_combout\) # (!\VGA|controller|yCounter\(0) $ (\VGA|controller|yCounter\(1)))) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111101011111111111110101111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|controller|ALT_INV_always1~0_combout\,
	datab => \VGA|controller|ALT_INV_yCounter\(0),
	datac => \VGA|controller|ALT_INV_yCounter\(1),
	datad => \VGA|controller|ALT_INV_VGA_VS1~0_combout\,
	dataf => \VGA|controller|ALT_INV_yCounter\(9),
	combout => \VGA|controller|VGA_VS1~1_combout\);

-- Location: FF_X36_Y4_N14
\VGA|controller|VGA_VS1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	d => \VGA|controller|VGA_VS1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|controller|VGA_VS1~q\);

-- Location: MLABCELL_X34_Y79_N3
\VGA|controller|VGA_VS~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|VGA_VS~feeder_combout\ = ( \VGA|controller|VGA_VS1~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \VGA|controller|ALT_INV_VGA_VS1~q\,
	combout => \VGA|controller|VGA_VS~feeder_combout\);

-- Location: FF_X34_Y79_N4
\VGA|controller|VGA_VS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	d => \VGA|controller|VGA_VS~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|controller|VGA_VS~q\);

-- Location: LABCELL_X37_Y4_N9
\VGA|controller|VGA_BLANK1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|VGA_BLANK1~0_combout\ = ( \VGA|controller|xCounter[8]~DUPLICATE_q\ & ( (!\VGA|controller|VGA_VS1~0_combout\ & (!\VGA|controller|yCounter\(9) & !\VGA|controller|xCounter\(9))) ) ) # ( !\VGA|controller|xCounter[8]~DUPLICATE_q\ & ( 
-- (!\VGA|controller|VGA_VS1~0_combout\ & (!\VGA|controller|yCounter\(9) & ((!\VGA|controller|xCounter[7]~DUPLICATE_q\) # (!\VGA|controller|xCounter\(9))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010000000100010001000000010001000000000001000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|controller|ALT_INV_VGA_VS1~0_combout\,
	datab => \VGA|controller|ALT_INV_yCounter\(9),
	datac => \VGA|controller|ALT_INV_xCounter[7]~DUPLICATE_q\,
	datad => \VGA|controller|ALT_INV_xCounter\(9),
	dataf => \VGA|controller|ALT_INV_xCounter[8]~DUPLICATE_q\,
	combout => \VGA|controller|VGA_BLANK1~0_combout\);

-- Location: FF_X37_Y4_N11
\VGA|controller|VGA_BLANK1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	d => \VGA|controller|VGA_BLANK1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|controller|VGA_BLANK1~q\);

-- Location: LABCELL_X12_Y80_N12
\VGA|controller|VGA_BLANK~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|VGA_BLANK~feeder_combout\ = ( \VGA|controller|VGA_BLANK1~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \VGA|controller|ALT_INV_VGA_BLANK1~q\,
	combout => \VGA|controller|VGA_BLANK~feeder_combout\);

-- Location: FF_X12_Y80_N13
\VGA|controller|VGA_BLANK\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	d => \VGA|controller|VGA_BLANK~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|controller|VGA_BLANK~q\);

-- Location: FF_X36_Y4_N49
\VGA|controller|yCounter[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	d => \VGA|controller|Add1~21_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \VGA|controller|always1~3_combout\,
	ena => \VGA|controller|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|controller|yCounter[6]~DUPLICATE_q\);

-- Location: FF_X36_Y4_N43
\VGA|controller|yCounter[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	d => \VGA|controller|Add1~29_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \VGA|controller|always1~3_combout\,
	ena => \VGA|controller|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|controller|yCounter[4]~DUPLICATE_q\);

-- Location: FF_X36_Y4_N40
\VGA|controller|yCounter[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	d => \VGA|controller|Add1~33_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \VGA|controller|always1~3_combout\,
	ena => \VGA|controller|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|controller|yCounter[3]~DUPLICATE_q\);

-- Location: LABCELL_X37_Y4_N30
\VGA|controller|controller_translator|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|controller_translator|Add1~9_sumout\ = SUM(( !\VGA|controller|xCounter[7]~DUPLICATE_q\ $ (!\VGA|controller|yCounter\(2)) ) + ( !VCC ) + ( !VCC ))
-- \VGA|controller|controller_translator|Add1~10\ = CARRY(( !\VGA|controller|xCounter[7]~DUPLICATE_q\ $ (!\VGA|controller|yCounter\(2)) ) + ( !VCC ) + ( !VCC ))
-- \VGA|controller|controller_translator|Add1~11\ = SHARE((\VGA|controller|xCounter[7]~DUPLICATE_q\ & \VGA|controller|yCounter\(2)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000001100000000000000000011110000111100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \VGA|controller|ALT_INV_xCounter[7]~DUPLICATE_q\,
	datac => \VGA|controller|ALT_INV_yCounter\(2),
	cin => GND,
	sharein => GND,
	sumout => \VGA|controller|controller_translator|Add1~9_sumout\,
	cout => \VGA|controller|controller_translator|Add1~10\,
	shareout => \VGA|controller|controller_translator|Add1~11\);

-- Location: LABCELL_X37_Y4_N33
\VGA|controller|controller_translator|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|controller_translator|Add1~13_sumout\ = SUM(( !\VGA|controller|yCounter[3]~DUPLICATE_q\ $ (!\VGA|controller|xCounter[8]~DUPLICATE_q\) ) + ( \VGA|controller|controller_translator|Add1~11\ ) + ( \VGA|controller|controller_translator|Add1~10\ 
-- ))
-- \VGA|controller|controller_translator|Add1~14\ = CARRY(( !\VGA|controller|yCounter[3]~DUPLICATE_q\ $ (!\VGA|controller|xCounter[8]~DUPLICATE_q\) ) + ( \VGA|controller|controller_translator|Add1~11\ ) + ( \VGA|controller|controller_translator|Add1~10\ ))
-- \VGA|controller|controller_translator|Add1~15\ = SHARE((\VGA|controller|yCounter[3]~DUPLICATE_q\ & \VGA|controller|xCounter[8]~DUPLICATE_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000010100000000000000000101101001011010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|controller|ALT_INV_yCounter[3]~DUPLICATE_q\,
	datac => \VGA|controller|ALT_INV_xCounter[8]~DUPLICATE_q\,
	cin => \VGA|controller|controller_translator|Add1~10\,
	sharein => \VGA|controller|controller_translator|Add1~11\,
	sumout => \VGA|controller|controller_translator|Add1~13_sumout\,
	cout => \VGA|controller|controller_translator|Add1~14\,
	shareout => \VGA|controller|controller_translator|Add1~15\);

-- Location: LABCELL_X37_Y4_N36
\VGA|controller|controller_translator|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|controller_translator|Add1~17_sumout\ = SUM(( !\VGA|controller|yCounter[4]~DUPLICATE_q\ $ (!\VGA|controller|yCounter\(2) $ (\VGA|controller|xCounter\(9))) ) + ( \VGA|controller|controller_translator|Add1~15\ ) + ( 
-- \VGA|controller|controller_translator|Add1~14\ ))
-- \VGA|controller|controller_translator|Add1~18\ = CARRY(( !\VGA|controller|yCounter[4]~DUPLICATE_q\ $ (!\VGA|controller|yCounter\(2) $ (\VGA|controller|xCounter\(9))) ) + ( \VGA|controller|controller_translator|Add1~15\ ) + ( 
-- \VGA|controller|controller_translator|Add1~14\ ))
-- \VGA|controller|controller_translator|Add1~19\ = SHARE((!\VGA|controller|yCounter[4]~DUPLICATE_q\ & (\VGA|controller|yCounter\(2) & \VGA|controller|xCounter\(9))) # (\VGA|controller|yCounter[4]~DUPLICATE_q\ & ((\VGA|controller|xCounter\(9)) # 
-- (\VGA|controller|yCounter\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \VGA|controller|ALT_INV_yCounter[4]~DUPLICATE_q\,
	datac => \VGA|controller|ALT_INV_yCounter\(2),
	datad => \VGA|controller|ALT_INV_xCounter\(9),
	cin => \VGA|controller|controller_translator|Add1~14\,
	sharein => \VGA|controller|controller_translator|Add1~15\,
	sumout => \VGA|controller|controller_translator|Add1~17_sumout\,
	cout => \VGA|controller|controller_translator|Add1~18\,
	shareout => \VGA|controller|controller_translator|Add1~19\);

-- Location: LABCELL_X37_Y4_N39
\VGA|controller|controller_translator|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|controller_translator|Add1~21_sumout\ = SUM(( !\VGA|controller|yCounter\(5) $ (!\VGA|controller|yCounter[3]~DUPLICATE_q\) ) + ( \VGA|controller|controller_translator|Add1~19\ ) + ( \VGA|controller|controller_translator|Add1~18\ ))
-- \VGA|controller|controller_translator|Add1~22\ = CARRY(( !\VGA|controller|yCounter\(5) $ (!\VGA|controller|yCounter[3]~DUPLICATE_q\) ) + ( \VGA|controller|controller_translator|Add1~19\ ) + ( \VGA|controller|controller_translator|Add1~18\ ))
-- \VGA|controller|controller_translator|Add1~23\ = SHARE((\VGA|controller|yCounter\(5) & \VGA|controller|yCounter[3]~DUPLICATE_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000010100000000000000000101101001011010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|controller|ALT_INV_yCounter\(5),
	datac => \VGA|controller|ALT_INV_yCounter[3]~DUPLICATE_q\,
	cin => \VGA|controller|controller_translator|Add1~18\,
	sharein => \VGA|controller|controller_translator|Add1~19\,
	sumout => \VGA|controller|controller_translator|Add1~21_sumout\,
	cout => \VGA|controller|controller_translator|Add1~22\,
	shareout => \VGA|controller|controller_translator|Add1~23\);

-- Location: LABCELL_X37_Y4_N42
\VGA|controller|controller_translator|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|controller_translator|Add1~25_sumout\ = SUM(( !\VGA|controller|yCounter[4]~DUPLICATE_q\ $ (!\VGA|controller|yCounter[6]~DUPLICATE_q\) ) + ( \VGA|controller|controller_translator|Add1~23\ ) + ( \VGA|controller|controller_translator|Add1~22\ 
-- ))
-- \VGA|controller|controller_translator|Add1~26\ = CARRY(( !\VGA|controller|yCounter[4]~DUPLICATE_q\ $ (!\VGA|controller|yCounter[6]~DUPLICATE_q\) ) + ( \VGA|controller|controller_translator|Add1~23\ ) + ( \VGA|controller|controller_translator|Add1~22\ ))
-- \VGA|controller|controller_translator|Add1~27\ = SHARE((\VGA|controller|yCounter[4]~DUPLICATE_q\ & \VGA|controller|yCounter[6]~DUPLICATE_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000011001100000000000000000011001111001100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \VGA|controller|ALT_INV_yCounter[4]~DUPLICATE_q\,
	datad => \VGA|controller|ALT_INV_yCounter[6]~DUPLICATE_q\,
	cin => \VGA|controller|controller_translator|Add1~22\,
	sharein => \VGA|controller|controller_translator|Add1~23\,
	sumout => \VGA|controller|controller_translator|Add1~25_sumout\,
	cout => \VGA|controller|controller_translator|Add1~26\,
	shareout => \VGA|controller|controller_translator|Add1~27\);

-- Location: LABCELL_X37_Y4_N45
\VGA|controller|controller_translator|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|controller_translator|Add1~29_sumout\ = SUM(( !\VGA|controller|yCounter\(5) $ (!\VGA|controller|yCounter\(7)) ) + ( \VGA|controller|controller_translator|Add1~27\ ) + ( \VGA|controller|controller_translator|Add1~26\ ))
-- \VGA|controller|controller_translator|Add1~30\ = CARRY(( !\VGA|controller|yCounter\(5) $ (!\VGA|controller|yCounter\(7)) ) + ( \VGA|controller|controller_translator|Add1~27\ ) + ( \VGA|controller|controller_translator|Add1~26\ ))
-- \VGA|controller|controller_translator|Add1~31\ = SHARE((\VGA|controller|yCounter\(5) & \VGA|controller|yCounter\(7)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000010100000000000000000101101001011010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|controller|ALT_INV_yCounter\(5),
	datac => \VGA|controller|ALT_INV_yCounter\(7),
	cin => \VGA|controller|controller_translator|Add1~26\,
	sharein => \VGA|controller|controller_translator|Add1~27\,
	sumout => \VGA|controller|controller_translator|Add1~29_sumout\,
	cout => \VGA|controller|controller_translator|Add1~30\,
	shareout => \VGA|controller|controller_translator|Add1~31\);

-- Location: LABCELL_X37_Y4_N48
\VGA|controller|controller_translator|Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|controller_translator|Add1~33_sumout\ = SUM(( !\VGA|controller|yCounter[6]~DUPLICATE_q\ $ (!\VGA|controller|yCounter\(8)) ) + ( \VGA|controller|controller_translator|Add1~31\ ) + ( \VGA|controller|controller_translator|Add1~30\ ))
-- \VGA|controller|controller_translator|Add1~34\ = CARRY(( !\VGA|controller|yCounter[6]~DUPLICATE_q\ $ (!\VGA|controller|yCounter\(8)) ) + ( \VGA|controller|controller_translator|Add1~31\ ) + ( \VGA|controller|controller_translator|Add1~30\ ))
-- \VGA|controller|controller_translator|Add1~35\ = SHARE((\VGA|controller|yCounter[6]~DUPLICATE_q\ & \VGA|controller|yCounter\(8)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000001100000000000000000011110000111100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \VGA|controller|ALT_INV_yCounter[6]~DUPLICATE_q\,
	datac => \VGA|controller|ALT_INV_yCounter\(8),
	cin => \VGA|controller|controller_translator|Add1~30\,
	sharein => \VGA|controller|controller_translator|Add1~31\,
	sumout => \VGA|controller|controller_translator|Add1~33_sumout\,
	cout => \VGA|controller|controller_translator|Add1~34\,
	shareout => \VGA|controller|controller_translator|Add1~35\);

-- Location: LABCELL_X37_Y4_N51
\VGA|controller|controller_translator|Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|controller_translator|Add1~37_sumout\ = SUM(( \VGA|controller|yCounter\(7) ) + ( \VGA|controller|controller_translator|Add1~35\ ) + ( \VGA|controller|controller_translator|Add1~34\ ))
-- \VGA|controller|controller_translator|Add1~38\ = CARRY(( \VGA|controller|yCounter\(7) ) + ( \VGA|controller|controller_translator|Add1~35\ ) + ( \VGA|controller|controller_translator|Add1~34\ ))
-- \VGA|controller|controller_translator|Add1~39\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|controller|ALT_INV_yCounter\(7),
	cin => \VGA|controller|controller_translator|Add1~34\,
	sharein => \VGA|controller|controller_translator|Add1~35\,
	sumout => \VGA|controller|controller_translator|Add1~37_sumout\,
	cout => \VGA|controller|controller_translator|Add1~38\,
	shareout => \VGA|controller|controller_translator|Add1~39\);

-- Location: LABCELL_X37_Y4_N54
\VGA|controller|controller_translator|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|controller_translator|Add1~1_sumout\ = SUM(( \VGA|controller|yCounter\(8) ) + ( \VGA|controller|controller_translator|Add1~39\ ) + ( \VGA|controller|controller_translator|Add1~38\ ))
-- \VGA|controller|controller_translator|Add1~2\ = CARRY(( \VGA|controller|yCounter\(8) ) + ( \VGA|controller|controller_translator|Add1~39\ ) + ( \VGA|controller|controller_translator|Add1~38\ ))
-- \VGA|controller|controller_translator|Add1~3\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \VGA|controller|ALT_INV_yCounter\(8),
	cin => \VGA|controller|controller_translator|Add1~38\,
	sharein => \VGA|controller|controller_translator|Add1~39\,
	sumout => \VGA|controller|controller_translator|Add1~1_sumout\,
	cout => \VGA|controller|controller_translator|Add1~2\,
	shareout => \VGA|controller|controller_translator|Add1~3\);

-- Location: FF_X42_Y4_N32
\VGA|VideoMemory|auto_generated|address_reg_b[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	asdata => \VGA|controller|controller_translator|Add1~1_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|VideoMemory|auto_generated|address_reg_b\(0));

-- Location: FF_X42_Y4_N34
\VGA|VideoMemory|auto_generated|out_address_reg_b[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	asdata => \VGA|VideoMemory|auto_generated|address_reg_b\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|VideoMemory|auto_generated|out_address_reg_b\(0));

-- Location: CLKCTRL_G5
\CLOCK_50~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~input_o\,
	outclk => \CLOCK_50~inputCLKENA0_outclk\);

-- Location: LABCELL_X37_Y4_N57
\VGA|controller|controller_translator|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|controller_translator|Add1~5_sumout\ = SUM(( GND ) + ( \VGA|controller|controller_translator|Add1~3\ ) + ( \VGA|controller|controller_translator|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \VGA|controller|controller_translator|Add1~2\,
	sharein => \VGA|controller|controller_translator|Add1~3\,
	sumout => \VGA|controller|controller_translator|Add1~5_sumout\);

-- Location: LABCELL_X37_Y4_N6
\VGA|VideoMemory|auto_generated|rden_decode_b|w_anode166w[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|VideoMemory|auto_generated|rden_decode_b|w_anode166w\(2) = (!\VGA|controller|controller_translator|Add1~1_sumout\ & \VGA|controller|controller_translator|Add1~5_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \VGA|controller|controller_translator|ALT_INV_Add1~1_sumout\,
	datad => \VGA|controller|controller_translator|ALT_INV_Add1~5_sumout\,
	combout => \VGA|VideoMemory|auto_generated|rden_decode_b|w_anode166w\(2));

-- Location: LABCELL_X42_Y5_N0
\comb_4|RD1|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_4|RD1|Add0~57_sumout\ = SUM(( \comb_4|RD1|out\(0) ) + ( VCC ) + ( !VCC ))
-- \comb_4|RD1|Add0~58\ = CARRY(( \comb_4|RD1|out\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \comb_4|RD1|ALT_INV_out\(0),
	cin => GND,
	sumout => \comb_4|RD1|Add0~57_sumout\,
	cout => \comb_4|RD1|Add0~58\);

-- Location: LABCELL_X40_Y3_N27
\comb_5|next_s.state4_763\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_5|next_s.state4_763~combout\ = (!\comb_5|pres_s.state4~q\ & ((\comb_5|pres_s.state3~q\))) # (\comb_5|pres_s.state4~q\ & (\comb_5|next_s.state4_763~combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100000101111101010000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_5|ALT_INV_next_s.state4_763~combout\,
	datac => \comb_5|ALT_INV_pres_s.state4~q\,
	datad => \comb_5|ALT_INV_pres_s.state3~q\,
	combout => \comb_5|next_s.state4_763~combout\);

-- Location: LABCELL_X40_Y2_N36
\comb_5|pres_s~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_5|pres_s~17_combout\ = ( \comb_5|next_s.state4_763~combout\ & ( \KEY[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_KEY[0]~input_o\,
	dataf => \comb_5|ALT_INV_next_s.state4_763~combout\,
	combout => \comb_5|pres_s~17_combout\);

-- Location: FF_X40_Y2_N38
\comb_5|pres_s.state4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \comb_5|pres_s~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_5|pres_s.state4~q\);

-- Location: LABCELL_X40_Y4_N27
\comb_4|F_F_1|outF~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_4|F_F_1|outF~0_combout\ = (!\comb_4|F_F_1|outF\(0) & (!\comb_5|pres_s.state3~q\ & (!\comb_4|F_F_1|Equal0~combout\ & \KEY[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_4|F_F_1|ALT_INV_outF\(0),
	datab => \comb_5|ALT_INV_pres_s.state3~q\,
	datac => \comb_4|F_F_1|ALT_INV_Equal0~combout\,
	datad => \ALT_INV_KEY[0]~input_o\,
	combout => \comb_4|F_F_1|outF~0_combout\);

-- Location: FF_X40_Y3_N23
\comb_5|pres_s.reset_s\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_5|pres_s.reset_s~q\);

-- Location: IOIBUF_X36_Y0_N18
\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: LABCELL_X40_Y3_N6
\comb_5|Selector32~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_5|Selector32~0_combout\ = ( \comb_5|pres_s.state2~q\ & ( (!\comb_5|pres_s.reset_s~q\) # (\KEY[1]~input_o\) ) ) # ( !\comb_5|pres_s.state2~q\ & ( !\comb_5|pres_s.reset_s~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_KEY[1]~input_o\,
	datad => \comb_5|ALT_INV_pres_s.reset_s~q\,
	dataf => \comb_5|ALT_INV_pres_s.state2~q\,
	combout => \comb_5|Selector32~0_combout\);

-- Location: LABCELL_X40_Y3_N45
\comb_5|next_s.state2_781\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_5|next_s.state2_781~combout\ = ( \comb_5|Selector32~0_combout\ & ( (!\comb_5|pres_s.state4~q\) # (\comb_5|next_s.state2_781~combout\) ) ) # ( !\comb_5|Selector32~0_combout\ & ( (\comb_5|pres_s.state4~q\ & \comb_5|next_s.state2_781~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_5|ALT_INV_pres_s.state4~q\,
	datac => \comb_5|ALT_INV_next_s.state2_781~combout\,
	dataf => \comb_5|ALT_INV_Selector32~0_combout\,
	combout => \comb_5|next_s.state2_781~combout\);

-- Location: LABCELL_X40_Y3_N24
\comb_5|pres_s~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_5|pres_s~19_combout\ = ( \comb_5|next_s.state2_781~combout\ & ( \KEY[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_KEY[0]~input_o\,
	dataf => \comb_5|ALT_INV_next_s.state2_781~combout\,
	combout => \comb_5|pres_s~19_combout\);

-- Location: FF_X40_Y3_N26
\comb_5|pres_s.state2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \comb_5|pres_s~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_5|pres_s.state2~q\);

-- Location: LABCELL_X40_Y3_N9
\comb_4|F_F_1|outF[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_4|F_F_1|outF[0]~1_combout\ = ( \comb_5|pres_s.state2~q\ & ( ((!\KEY[0]~input_o\) # (\comb_5|pres_s.state3~q\)) # (\comb_4|F_F_1|Equal0~combout\) ) ) # ( !\comb_5|pres_s.state2~q\ & ( (((!\KEY[0]~input_o\) # (\comb_5|pres_s.state3~q\)) # 
-- (\comb_4|F_F_1|Equal0~combout\)) # (\comb_5|pres_s.reset_s~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111011111111111111101111111111111110011111111111111001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_5|ALT_INV_pres_s.reset_s~q\,
	datab => \comb_4|F_F_1|ALT_INV_Equal0~combout\,
	datac => \ALT_INV_KEY[0]~input_o\,
	datad => \comb_5|ALT_INV_pres_s.state3~q\,
	dataf => \comb_5|ALT_INV_pres_s.state2~q\,
	combout => \comb_4|F_F_1|outF[0]~1_combout\);

-- Location: FF_X40_Y4_N29
\comb_4|F_F_1|outF[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_4|RD1|Equal0~combout\,
	d => \comb_4|F_F_1|outF~0_combout\,
	ena => \comb_4|F_F_1|outF[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_4|F_F_1|outF\(0));

-- Location: LABCELL_X40_Y4_N3
\comb_4|F_F_1|outF~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_4|F_F_1|outF~2_combout\ = ( \comb_4|F_F_1|outF\(0) & ( ((!\KEY[0]~input_o\) # ((\comb_5|pres_s.state3~q\) # (\comb_4|F_F_1|outF\(1)))) # (\comb_4|F_F_1|Equal0~combout\) ) ) # ( !\comb_4|F_F_1|outF\(0) & ( ((!\KEY[0]~input_o\) # 
-- ((!\comb_4|F_F_1|outF\(1)) # (\comb_5|pres_s.state3~q\))) # (\comb_4|F_F_1|Equal0~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110111111111111111011111111111011111111111111101111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_4|F_F_1|ALT_INV_Equal0~combout\,
	datab => \ALT_INV_KEY[0]~input_o\,
	datac => \comb_4|F_F_1|ALT_INV_outF\(1),
	datad => \comb_5|ALT_INV_pres_s.state3~q\,
	dataf => \comb_4|F_F_1|ALT_INV_outF\(0),
	combout => \comb_4|F_F_1|outF~2_combout\);

-- Location: FF_X40_Y4_N32
\comb_4|F_F_1|outF[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_4|RD1|Equal0~combout\,
	asdata => \comb_4|F_F_1|outF~2_combout\,
	sload => VCC,
	ena => \comb_4|F_F_1|outF[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_4|F_F_1|outF\(1));

-- Location: MLABCELL_X39_Y4_N30
\comb_4|F_F_1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_4|F_F_1|Add0~1_combout\ = ( !\comb_4|F_F_1|outF\(3) & ( \comb_4|F_F_1|outF\(0) ) ) # ( \comb_4|F_F_1|outF\(3) & ( !\comb_4|F_F_1|outF\(0) & ( (!\comb_4|F_F_1|outF\(1) & !\comb_4|F_F_1|outF\(2)) ) ) ) # ( !\comb_4|F_F_1|outF\(3) & ( 
-- !\comb_4|F_F_1|outF\(0) & ( (\comb_4|F_F_1|outF\(2)) # (\comb_4|F_F_1|outF\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111101000001010000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_4|F_F_1|ALT_INV_outF\(1),
	datac => \comb_4|F_F_1|ALT_INV_outF\(2),
	datae => \comb_4|F_F_1|ALT_INV_outF\(3),
	dataf => \comb_4|F_F_1|ALT_INV_outF\(0),
	combout => \comb_4|F_F_1|Add0~1_combout\);

-- Location: LABCELL_X40_Y4_N0
\comb_4|F_F_1|outF~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_4|F_F_1|outF~5_combout\ = ((!\KEY[0]~input_o\) # ((!\comb_4|F_F_1|Add0~1_combout\) # (\comb_5|pres_s.state3~q\))) # (\comb_4|F_F_1|Equal0~combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110111111111111111011111111111111101111111111111110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_4|F_F_1|ALT_INV_Equal0~combout\,
	datab => \ALT_INV_KEY[0]~input_o\,
	datac => \comb_4|F_F_1|ALT_INV_Add0~1_combout\,
	datad => \comb_5|ALT_INV_pres_s.state3~q\,
	combout => \comb_4|F_F_1|outF~5_combout\);

-- Location: FF_X40_Y4_N2
\comb_4|F_F_1|outF[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_4|RD1|Equal0~combout\,
	d => \comb_4|F_F_1|outF~5_combout\,
	ena => \comb_4|F_F_1|outF[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_4|F_F_1|outF\(3));

-- Location: MLABCELL_X39_Y4_N27
\comb_4|F_F_1|Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_4|F_F_1|Add0~0_combout\ = ( !\comb_4|F_F_1|outF\(3) & ( !\comb_4|F_F_1|outF\(1) & ( (!\comb_4|F_F_1|outF\(0) & !\comb_4|F_F_1|outF\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_4|F_F_1|ALT_INV_outF\(0),
	datad => \comb_4|F_F_1|ALT_INV_outF\(2),
	datae => \comb_4|F_F_1|ALT_INV_outF\(3),
	dataf => \comb_4|F_F_1|ALT_INV_outF\(1),
	combout => \comb_4|F_F_1|Add0~0_combout\);

-- Location: LABCELL_X40_Y4_N6
\comb_4|F_F_1|outF~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_4|F_F_1|outF~3_combout\ = ( !\comb_5|pres_s.state3~q\ & ( (!\comb_4|F_F_1|Equal0~combout\ & (\KEY[0]~input_o\ & (!\comb_4|F_F_1|outF\(4) $ (!\comb_4|F_F_1|Add0~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000001000000001000000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_4|F_F_1|ALT_INV_outF\(4),
	datab => \comb_4|F_F_1|ALT_INV_Equal0~combout\,
	datac => \ALT_INV_KEY[0]~input_o\,
	datad => \comb_4|F_F_1|ALT_INV_Add0~0_combout\,
	dataf => \comb_5|ALT_INV_pres_s.state3~q\,
	combout => \comb_4|F_F_1|outF~3_combout\);

-- Location: FF_X40_Y4_N26
\comb_4|F_F_1|outF[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_4|RD1|Equal0~combout\,
	asdata => \comb_4|F_F_1|outF~3_combout\,
	sload => VCC,
	ena => \comb_4|F_F_1|outF[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_4|F_F_1|outF\(4));

-- Location: LABCELL_X40_Y4_N33
\comb_5|Selector26~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_5|Selector26~0_combout\ = ( \comb_4|F_F_1|outF\(2) & ( \comb_5|pres_s.state6~q\ ) ) # ( !\comb_4|F_F_1|outF\(2) & ( \comb_5|pres_s.state6~q\ & ( (((\comb_4|F_F_1|outF\(0) & \comb_4|F_F_1|outF\(1))) # (\comb_4|F_F_1|outF\(3))) # 
-- (\comb_4|F_F_1|outF\(4)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_4|F_F_1|ALT_INV_outF\(4),
	datab => \comb_4|F_F_1|ALT_INV_outF\(0),
	datac => \comb_4|F_F_1|ALT_INV_outF\(1),
	datad => \comb_4|F_F_1|ALT_INV_outF\(3),
	datae => \comb_4|F_F_1|ALT_INV_outF\(2),
	dataf => \comb_5|ALT_INV_pres_s.state6~q\,
	combout => \comb_5|Selector26~0_combout\);

-- Location: LABCELL_X40_Y4_N39
\comb_5|next_s.state6_749\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_5|next_s.state6_749~combout\ = ( \comb_5|Selector26~0_combout\ & ( (!\comb_5|pres_s.state4~q\) # (\comb_5|next_s.state6_749~combout\) ) ) # ( !\comb_5|Selector26~0_combout\ & ( (\comb_5|next_s.state6_749~combout\ & \comb_5|pres_s.state4~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \comb_5|ALT_INV_next_s.state6_749~combout\,
	datad => \comb_5|ALT_INV_pres_s.state4~q\,
	dataf => \comb_5|ALT_INV_Selector26~0_combout\,
	combout => \comb_5|next_s.state6_749~combout\);

-- Location: LABCELL_X40_Y3_N30
\comb_5|pres_s~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_5|pres_s~16_combout\ = (\KEY[0]~input_o\ & \comb_5|next_s.state6_749~combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_KEY[0]~input_o\,
	datac => \comb_5|ALT_INV_next_s.state6_749~combout\,
	combout => \comb_5|pres_s~16_combout\);

-- Location: FF_X40_Y3_N50
\comb_5|pres_s.state6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \comb_5|pres_s~16_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_5|pres_s.state6~q\);

-- Location: MLABCELL_X39_Y3_N15
\comb_5|enablecounter~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_5|enablecounter~1_combout\ = (!\comb_5|pres_s.state4~q\ & !\comb_5|pres_s.state7~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000110000001100000011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \comb_5|ALT_INV_pres_s.state4~q\,
	datac => \comb_5|ALT_INV_pres_s.state7~q\,
	combout => \comb_5|enablecounter~1_combout\);

-- Location: LABCELL_X40_Y4_N12
\comb_4|c1|outC[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_4|c1|outC[0]~3_combout\ = ( \comb_5|enablecounter~1_combout\ & ( (!\comb_5|pres_s.state6~q\ & (!\comb_4|c1|Equal0~0_combout\ & \comb_4|c1|outC\(0))) ) ) # ( !\comb_5|enablecounter~1_combout\ & ( !\comb_4|c1|outC\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000110000000000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \comb_5|ALT_INV_pres_s.state6~q\,
	datac => \comb_4|c1|ALT_INV_Equal0~0_combout\,
	datad => \comb_4|c1|ALT_INV_outC\(0),
	dataf => \comb_5|ALT_INV_enablecounter~1_combout\,
	combout => \comb_4|c1|outC[0]~3_combout\);

-- Location: FF_X40_Y4_N14
\comb_4|c1|outC[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \comb_4|c1|outC[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_4|c1|outC\(0));

-- Location: LABCELL_X40_Y4_N57
\comb_4|c1|outC[1]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_4|c1|outC[1]~4_combout\ = ( \comb_5|enablecounter~1_combout\ & ( (!\comb_4|c1|Equal0~0_combout\ & (!\comb_5|pres_s.state6~q\ & \comb_4|c1|outC\(1))) ) ) # ( !\comb_5|enablecounter~1_combout\ & ( !\comb_4|c1|outC\(0) $ (!\comb_4|c1|outC\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000000000000100010000000000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_4|c1|ALT_INV_Equal0~0_combout\,
	datab => \comb_5|ALT_INV_pres_s.state6~q\,
	datac => \comb_4|c1|ALT_INV_outC\(0),
	datad => \comb_4|c1|ALT_INV_outC\(1),
	dataf => \comb_5|ALT_INV_enablecounter~1_combout\,
	combout => \comb_4|c1|outC[1]~4_combout\);

-- Location: FF_X40_Y4_N59
\comb_4|c1|outC[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \comb_4|c1|outC[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_4|c1|outC\(1));

-- Location: MLABCELL_X39_Y4_N36
\comb_4|c1|outC[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_4|c1|outC[3]~2_combout\ = ( \comb_4|c1|outC\(1) & ( \comb_4|c1|outC\(0) & ( (!\comb_5|enablecounter~1_combout\ & (!\comb_4|c1|outC\(3) $ ((!\comb_4|c1|outC\(2))))) # (\comb_5|enablecounter~1_combout\ & (\comb_4|c1|outC\(3) & (!\comb_4|c1|outC\(2) & 
-- !\comb_5|pres_s.state6~q\))) ) ) ) # ( !\comb_4|c1|outC\(1) & ( \comb_4|c1|outC\(0) & ( (\comb_4|c1|outC\(3) & ((!\comb_5|enablecounter~1_combout\) # (!\comb_5|pres_s.state6~q\))) ) ) ) # ( \comb_4|c1|outC\(1) & ( !\comb_4|c1|outC\(0) & ( 
-- (\comb_4|c1|outC\(3) & ((!\comb_5|enablecounter~1_combout\) # (!\comb_5|pres_s.state6~q\))) ) ) ) # ( !\comb_4|c1|outC\(1) & ( !\comb_4|c1|outC\(0) & ( (\comb_4|c1|outC\(3) & ((!\comb_5|enablecounter~1_combout\) # (!\comb_5|pres_s.state6~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100100010001100110010001000110011001000100011100000101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_5|ALT_INV_enablecounter~1_combout\,
	datab => \comb_4|c1|ALT_INV_outC\(3),
	datac => \comb_4|c1|ALT_INV_outC\(2),
	datad => \comb_5|ALT_INV_pres_s.state6~q\,
	datae => \comb_4|c1|ALT_INV_outC\(1),
	dataf => \comb_4|c1|ALT_INV_outC\(0),
	combout => \comb_4|c1|outC[3]~2_combout\);

-- Location: FF_X40_Y4_N44
\comb_4|c1|outC[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \comb_4|c1|outC[3]~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_4|c1|outC\(3));

-- Location: MLABCELL_X39_Y4_N45
\comb_4|c1|outC[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_4|c1|outC[2]~1_combout\ = ( \comb_5|pres_s.state6~q\ & ( \comb_4|c1|outC\(0) & ( (!\comb_5|enablecounter~1_combout\ & (!\comb_4|c1|outC\(1) $ (!\comb_4|c1|outC\(2)))) ) ) ) # ( !\comb_5|pres_s.state6~q\ & ( \comb_4|c1|outC\(0) & ( 
-- (!\comb_5|enablecounter~1_combout\ & ((!\comb_4|c1|outC\(1) $ (!\comb_4|c1|outC\(2))))) # (\comb_5|enablecounter~1_combout\ & (\comb_4|c1|outC\(2) & ((!\comb_4|c1|outC\(3)) # (!\comb_4|c1|outC\(1))))) ) ) ) # ( \comb_5|pres_s.state6~q\ & ( 
-- !\comb_4|c1|outC\(0) & ( (!\comb_5|enablecounter~1_combout\ & \comb_4|c1|outC\(2)) ) ) ) # ( !\comb_5|pres_s.state6~q\ & ( !\comb_4|c1|outC\(0) & ( \comb_4|c1|outC\(2) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001010101000001010111101000000101010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_5|ALT_INV_enablecounter~1_combout\,
	datab => \comb_4|c1|ALT_INV_outC\(3),
	datac => \comb_4|c1|ALT_INV_outC\(1),
	datad => \comb_4|c1|ALT_INV_outC\(2),
	datae => \comb_5|ALT_INV_pres_s.state6~q\,
	dataf => \comb_4|c1|ALT_INV_outC\(0),
	combout => \comb_4|c1|outC[2]~1_combout\);

-- Location: FF_X40_Y4_N50
\comb_4|c1|outC[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \comb_4|c1|outC[2]~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_4|c1|outC\(2));

-- Location: LABCELL_X40_Y4_N18
\comb_4|c1|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_4|c1|Equal0~0_combout\ = ( \comb_4|c1|outC\(3) & ( (\comb_4|c1|outC\(0) & (\comb_4|c1|outC\(2) & \comb_4|c1|outC\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \comb_4|c1|ALT_INV_outC\(0),
	datac => \comb_4|c1|ALT_INV_outC\(2),
	datad => \comb_4|c1|ALT_INV_outC\(1),
	dataf => \comb_4|c1|ALT_INV_outC\(3),
	combout => \comb_4|c1|Equal0~0_combout\);

-- Location: LABCELL_X40_Y4_N48
\comb_5|LessThan1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_5|LessThan1~0_combout\ = ( \comb_4|F_F_1|outF\(1) & ( (!\comb_4|F_F_1|outF\(2) & (!\comb_4|F_F_1|outF\(0) & (!\comb_4|F_F_1|outF\(4) & !\comb_4|F_F_1|outF\(3)))) ) ) # ( !\comb_4|F_F_1|outF\(1) & ( (!\comb_4|F_F_1|outF\(2) & (!\comb_4|F_F_1|outF\(4) 
-- & !\comb_4|F_F_1|outF\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_4|F_F_1|ALT_INV_outF\(2),
	datab => \comb_4|F_F_1|ALT_INV_outF\(0),
	datac => \comb_4|F_F_1|ALT_INV_outF\(4),
	datad => \comb_4|F_F_1|ALT_INV_outF\(3),
	dataf => \comb_4|F_F_1|ALT_INV_outF\(1),
	combout => \comb_5|LessThan1~0_combout\);

-- Location: LABCELL_X40_Y4_N15
\comb_5|Selector24~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_5|Selector24~0_combout\ = ( \comb_5|pres_s.state7~q\ & ( (!\comb_4|c1|Equal0~0_combout\) # ((\comb_5|pres_s.state6~q\ & \comb_5|LessThan1~0_combout\)) ) ) # ( !\comb_5|pres_s.state7~q\ & ( (\comb_5|pres_s.state6~q\ & \comb_5|LessThan1~0_combout\) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111110101010101011111010101010101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_4|c1|ALT_INV_Equal0~0_combout\,
	datac => \comb_5|ALT_INV_pres_s.state6~q\,
	datad => \comb_5|ALT_INV_LessThan1~0_combout\,
	dataf => \comb_5|ALT_INV_pres_s.state7~q\,
	combout => \comb_5|Selector24~0_combout\);

-- Location: LABCELL_X40_Y4_N21
\comb_5|next_s.state7_740\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_5|next_s.state7_740~combout\ = ( \comb_5|Selector24~0_combout\ & ( (!\comb_5|pres_s.state4~q\) # (\comb_5|next_s.state7_740~combout\) ) ) # ( !\comb_5|Selector24~0_combout\ & ( (\comb_5|pres_s.state4~q\ & \comb_5|next_s.state7_740~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \comb_5|ALT_INV_pres_s.state4~q\,
	datad => \comb_5|ALT_INV_next_s.state7_740~combout\,
	dataf => \comb_5|ALT_INV_Selector24~0_combout\,
	combout => \comb_5|next_s.state7_740~combout\);

-- Location: MLABCELL_X39_Y4_N57
\comb_5|pres_s~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_5|pres_s~18_combout\ = ( \comb_5|next_s.state7_740~combout\ & ( \KEY[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	dataf => \comb_5|ALT_INV_next_s.state7_740~combout\,
	combout => \comb_5|pres_s~18_combout\);

-- Location: FF_X39_Y4_N59
\comb_5|pres_s.state7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \comb_5|pres_s~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_5|pres_s.state7~q\);

-- Location: MLABCELL_X39_Y4_N9
\comb_5|Selector22~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_5|Selector22~0_combout\ = ( \comb_4|c1|outC\(1) & ( \comb_4|c1|outC\(0) & ( (\comb_5|pres_s.state7~q\ & (\comb_4|c1|outC\(3) & \comb_4|c1|outC\(2))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \comb_5|ALT_INV_pres_s.state7~q\,
	datac => \comb_4|c1|ALT_INV_outC\(3),
	datad => \comb_4|c1|ALT_INV_outC\(2),
	datae => \comb_4|c1|ALT_INV_outC\(1),
	dataf => \comb_4|c1|ALT_INV_outC\(0),
	combout => \comb_5|Selector22~0_combout\);

-- Location: MLABCELL_X39_Y4_N18
\comb_5|next_s.state8_731\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_5|next_s.state8_731~combout\ = ( \comb_5|pres_s.state4~q\ & ( \comb_5|Selector22~0_combout\ & ( \comb_5|next_s.state8_731~combout\ ) ) ) # ( !\comb_5|pres_s.state4~q\ & ( \comb_5|Selector22~0_combout\ ) ) # ( \comb_5|pres_s.state4~q\ & ( 
-- !\comb_5|Selector22~0_combout\ & ( \comb_5|next_s.state8_731~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111111111111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \comb_5|ALT_INV_next_s.state8_731~combout\,
	datae => \comb_5|ALT_INV_pres_s.state4~q\,
	dataf => \comb_5|ALT_INV_Selector22~0_combout\,
	combout => \comb_5|next_s.state8_731~combout\);

-- Location: MLABCELL_X39_Y4_N0
\comb_5|pres_s~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_5|pres_s~23_combout\ = ( \comb_5|next_s.state8_731~combout\ & ( \KEY[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_KEY[0]~input_o\,
	dataf => \comb_5|ALT_INV_next_s.state8_731~combout\,
	combout => \comb_5|pres_s~23_combout\);

-- Location: FF_X40_Y4_N47
\comb_5|pres_s.state8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \comb_5|pres_s~23_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_5|pres_s.state8~q\);

-- Location: LABCELL_X40_Y4_N24
\comb_5|Equal6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_5|Equal6~0_combout\ = ( !\comb_4|F_F_1|outF\(1) & ( (\comb_4|F_F_1|outF\(0) & (\comb_4|F_F_1|outF\(3) & \comb_4|F_F_1|outF\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_4|F_F_1|ALT_INV_outF\(0),
	datac => \comb_4|F_F_1|ALT_INV_outF\(3),
	datad => \comb_4|F_F_1|ALT_INV_outF\(2),
	dataf => \comb_4|F_F_1|ALT_INV_outF\(1),
	combout => \comb_5|Equal6~0_combout\);

-- Location: LABCELL_X40_Y4_N9
\comb_5|Selector20~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_5|Selector20~0_combout\ = ( \comb_5|Equal6~0_combout\ & ( ((\comb_4|F_F_1|outF\(4) & \comb_5|pres_s.state9~q\)) # (\comb_5|pres_s.state8~q\) ) ) # ( !\comb_5|Equal6~0_combout\ & ( (\comb_5|pres_s.state9~q\) # (\comb_5|pres_s.state8~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100001111010111110000111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_4|F_F_1|ALT_INV_outF\(4),
	datac => \comb_5|ALT_INV_pres_s.state8~q\,
	datad => \comb_5|ALT_INV_pres_s.state9~q\,
	dataf => \comb_5|ALT_INV_Equal6~0_combout\,
	combout => \comb_5|Selector20~0_combout\);

-- Location: LABCELL_X40_Y4_N54
\comb_5|next_s.state9_722\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_5|next_s.state9_722~combout\ = ( \comb_5|Selector20~0_combout\ & ( (!\comb_5|pres_s.state4~q\) # (\comb_5|next_s.state9_722~combout\) ) ) # ( !\comb_5|Selector20~0_combout\ & ( (\comb_5|next_s.state9_722~combout\ & \comb_5|pres_s.state4~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \comb_5|ALT_INV_next_s.state9_722~combout\,
	datad => \comb_5|ALT_INV_pres_s.state4~q\,
	dataf => \comb_5|ALT_INV_Selector20~0_combout\,
	combout => \comb_5|next_s.state9_722~combout\);

-- Location: LABCELL_X40_Y4_N51
\comb_5|pres_s~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_5|pres_s~22_combout\ = (\comb_5|next_s.state9_722~combout\ & \KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \comb_5|ALT_INV_next_s.state9_722~combout\,
	datad => \ALT_INV_KEY[0]~input_o\,
	combout => \comb_5|pres_s~22_combout\);

-- Location: FF_X40_Y4_N53
\comb_5|pres_s.state9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \comb_5|pres_s~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_5|pres_s.state9~q\);

-- Location: MLABCELL_X39_Y4_N48
\comb_5|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_5|Selector0~0_combout\ = ( \comb_4|F_F_1|outF\(3) & ( \comb_5|pres_s.state9~q\ & ( (\comb_4|F_F_1|outF\(2) & (\comb_4|F_F_1|outF\(0) & (!\comb_4|F_F_1|outF\(1) & !\comb_4|F_F_1|outF\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_4|F_F_1|ALT_INV_outF\(2),
	datab => \comb_4|F_F_1|ALT_INV_outF\(0),
	datac => \comb_4|F_F_1|ALT_INV_outF\(1),
	datad => \comb_4|F_F_1|ALT_INV_outF\(4),
	datae => \comb_4|F_F_1|ALT_INV_outF\(3),
	dataf => \comb_5|ALT_INV_pres_s.state9~q\,
	combout => \comb_5|Selector0~0_combout\);

-- Location: MLABCELL_X39_Y4_N15
\comb_5|next_s.state10_713\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_5|next_s.state10_713~combout\ = ( \comb_5|pres_s.state4~q\ & ( \comb_5|Selector0~0_combout\ & ( \comb_5|next_s.state10_713~combout\ ) ) ) # ( !\comb_5|pres_s.state4~q\ & ( \comb_5|Selector0~0_combout\ ) ) # ( \comb_5|pres_s.state4~q\ & ( 
-- !\comb_5|Selector0~0_combout\ & ( \comb_5|next_s.state10_713~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111111111111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \comb_5|ALT_INV_next_s.state10_713~combout\,
	datae => \comb_5|ALT_INV_pres_s.state4~q\,
	dataf => \comb_5|ALT_INV_Selector0~0_combout\,
	combout => \comb_5|next_s.state10_713~combout\);

-- Location: MLABCELL_X39_Y3_N12
\comb_5|pres_s~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_5|pres_s~21_combout\ = ( \comb_5|next_s.state10_713~combout\ & ( \KEY[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_KEY[0]~input_o\,
	dataf => \comb_5|ALT_INV_next_s.state10_713~combout\,
	combout => \comb_5|pres_s~21_combout\);

-- Location: FF_X39_Y3_N14
\comb_5|pres_s.state10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \comb_5|pres_s~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_5|pres_s.state10~q\);

-- Location: MLABCELL_X39_Y3_N33
\comb_5|Selector30~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_5|Selector30~0_combout\ = ( \comb_5|pres_s.state2~q\ & ( (!\KEY[1]~input_o\) # (\comb_5|pres_s.state10~q\) ) ) # ( !\comb_5|pres_s.state2~q\ & ( \comb_5|pres_s.state10~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \comb_5|ALT_INV_pres_s.state10~q\,
	datad => \ALT_INV_KEY[1]~input_o\,
	dataf => \comb_5|ALT_INV_pres_s.state2~q\,
	combout => \comb_5|Selector30~0_combout\);

-- Location: MLABCELL_X39_Y3_N9
\comb_5|next_s.state3_772\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_5|next_s.state3_772~combout\ = ( \comb_5|Selector30~0_combout\ & ( (!\comb_5|pres_s.state4~q\) # (\comb_5|next_s.state3_772~combout\) ) ) # ( !\comb_5|Selector30~0_combout\ & ( (\comb_5|next_s.state3_772~combout\ & \comb_5|pres_s.state4~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \comb_5|ALT_INV_next_s.state3_772~combout\,
	datad => \comb_5|ALT_INV_pres_s.state4~q\,
	dataf => \comb_5|ALT_INV_Selector30~0_combout\,
	combout => \comb_5|next_s.state3_772~combout\);

-- Location: LABCELL_X40_Y3_N21
\comb_5|pres_s~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_5|pres_s~20_combout\ = ( \comb_5|next_s.state3_772~combout\ & ( \KEY[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_KEY[0]~input_o\,
	dataf => \comb_5|ALT_INV_next_s.state3_772~combout\,
	combout => \comb_5|pres_s~20_combout\);

-- Location: FF_X40_Y3_N47
\comb_5|pres_s.state3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \comb_5|pres_s~20_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_5|pres_s.state3~q\);

-- Location: MLABCELL_X39_Y5_N27
\comb_4|RD1|out[15]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_4|RD1|out[15]~0_combout\ = ( \comb_4|RD1|Equal0~combout\ ) # ( !\comb_4|RD1|Equal0~combout\ & ( (!\KEY[0]~input_o\) # (\comb_5|pres_s.state3~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111110101111101011111010111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	datac => \comb_5|ALT_INV_pres_s.state3~q\,
	dataf => \comb_4|RD1|ALT_INV_Equal0~combout\,
	combout => \comb_4|RD1|out[15]~0_combout\);

-- Location: MLABCELL_X39_Y5_N42
\comb_4|RD1|out[15]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_4|RD1|out[15]~1_combout\ = ( \comb_4|RD1|Equal0~combout\ ) # ( !\comb_4|RD1|Equal0~combout\ & ( (!\KEY[0]~input_o\) # (((!\comb_5|pres_s.state2~q\ & \comb_5|pres_s.reset_s~q\)) # (\comb_5|pres_s.state3~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101111111011101110111111101111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	datab => \comb_5|ALT_INV_pres_s.state3~q\,
	datac => \comb_5|ALT_INV_pres_s.state2~q\,
	datad => \comb_5|ALT_INV_pres_s.reset_s~q\,
	dataf => \comb_4|RD1|ALT_INV_Equal0~combout\,
	combout => \comb_4|RD1|out[15]~1_combout\);

-- Location: FF_X39_Y5_N56
\comb_4|RD1|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \comb_4|RD1|Add0~57_sumout\,
	sclr => \comb_4|RD1|out[15]~0_combout\,
	sload => VCC,
	ena => \comb_4|RD1|out[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_4|RD1|out\(0));

-- Location: LABCELL_X42_Y5_N3
\comb_4|RD1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_4|RD1|Add0~25_sumout\ = SUM(( \comb_4|RD1|out\(1) ) + ( VCC ) + ( \comb_4|RD1|Add0~58\ ))
-- \comb_4|RD1|Add0~26\ = CARRY(( \comb_4|RD1|out\(1) ) + ( VCC ) + ( \comb_4|RD1|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \comb_4|RD1|ALT_INV_out\(1),
	cin => \comb_4|RD1|Add0~58\,
	sumout => \comb_4|RD1|Add0~25_sumout\,
	cout => \comb_4|RD1|Add0~26\);

-- Location: FF_X42_Y5_N4
\comb_4|RD1|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \comb_4|RD1|Add0~25_sumout\,
	sclr => \comb_4|RD1|out[15]~0_combout\,
	ena => \comb_4|RD1|out[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_4|RD1|out\(1));

-- Location: LABCELL_X42_Y5_N6
\comb_4|RD1|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_4|RD1|Add0~49_sumout\ = SUM(( \comb_4|RD1|out\(2) ) + ( VCC ) + ( \comb_4|RD1|Add0~26\ ))
-- \comb_4|RD1|Add0~50\ = CARRY(( \comb_4|RD1|out\(2) ) + ( VCC ) + ( \comb_4|RD1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \comb_4|RD1|ALT_INV_out\(2),
	cin => \comb_4|RD1|Add0~26\,
	sumout => \comb_4|RD1|Add0~49_sumout\,
	cout => \comb_4|RD1|Add0~50\);

-- Location: MLABCELL_X39_Y5_N21
\comb_4|RD1|out~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_4|RD1|out~6_combout\ = ( \comb_4|RD1|Equal0~combout\ ) # ( !\comb_4|RD1|Equal0~combout\ & ( (!\KEY[0]~input_o\) # ((\comb_4|RD1|Add0~49_sumout\) # (\comb_5|pres_s.state3~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011111110111111101111111011111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	datab => \comb_5|ALT_INV_pres_s.state3~q\,
	datac => \comb_4|RD1|ALT_INV_Add0~49_sumout\,
	dataf => \comb_4|RD1|ALT_INV_Equal0~combout\,
	combout => \comb_4|RD1|out~6_combout\);

-- Location: FF_X39_Y5_N23
\comb_4|RD1|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \comb_4|RD1|out~6_combout\,
	ena => \comb_4|RD1|out[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_4|RD1|out\(2));

-- Location: LABCELL_X42_Y5_N9
\comb_4|RD1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_4|RD1|Add0~29_sumout\ = SUM(( \comb_4|RD1|out\(3) ) + ( VCC ) + ( \comb_4|RD1|Add0~50\ ))
-- \comb_4|RD1|Add0~30\ = CARRY(( \comb_4|RD1|out\(3) ) + ( VCC ) + ( \comb_4|RD1|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \comb_4|RD1|ALT_INV_out\(3),
	cin => \comb_4|RD1|Add0~50\,
	sumout => \comb_4|RD1|Add0~29_sumout\,
	cout => \comb_4|RD1|Add0~30\);

-- Location: FF_X42_Y5_N10
\comb_4|RD1|out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \comb_4|RD1|Add0~29_sumout\,
	sclr => \comb_4|RD1|out[15]~0_combout\,
	ena => \comb_4|RD1|out[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_4|RD1|out\(3));

-- Location: LABCELL_X42_Y5_N12
\comb_4|RD1|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_4|RD1|Add0~53_sumout\ = SUM(( \comb_4|RD1|out\(4) ) + ( VCC ) + ( \comb_4|RD1|Add0~30\ ))
-- \comb_4|RD1|Add0~54\ = CARRY(( \comb_4|RD1|out\(4) ) + ( VCC ) + ( \comb_4|RD1|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \comb_4|RD1|ALT_INV_out\(4),
	cin => \comb_4|RD1|Add0~30\,
	sumout => \comb_4|RD1|Add0~53_sumout\,
	cout => \comb_4|RD1|Add0~54\);

-- Location: MLABCELL_X39_Y5_N30
\comb_4|RD1|out~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_4|RD1|out~7_combout\ = ( \comb_4|RD1|Equal0~combout\ ) # ( !\comb_4|RD1|Equal0~combout\ & ( (!\KEY[0]~input_o\) # ((\comb_4|RD1|Add0~53_sumout\) # (\comb_5|pres_s.state3~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111111111111101011111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	datac => \comb_5|ALT_INV_pres_s.state3~q\,
	datad => \comb_4|RD1|ALT_INV_Add0~53_sumout\,
	dataf => \comb_4|RD1|ALT_INV_Equal0~combout\,
	combout => \comb_4|RD1|out~7_combout\);

-- Location: FF_X39_Y5_N32
\comb_4|RD1|out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \comb_4|RD1|out~7_combout\,
	ena => \comb_4|RD1|out[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_4|RD1|out\(4));

-- Location: LABCELL_X42_Y5_N15
\comb_4|RD1|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_4|RD1|Add0~45_sumout\ = SUM(( \comb_4|RD1|out\(5) ) + ( VCC ) + ( \comb_4|RD1|Add0~54\ ))
-- \comb_4|RD1|Add0~46\ = CARRY(( \comb_4|RD1|out\(5) ) + ( VCC ) + ( \comb_4|RD1|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_4|RD1|ALT_INV_out\(5),
	cin => \comb_4|RD1|Add0~54\,
	sumout => \comb_4|RD1|Add0~45_sumout\,
	cout => \comb_4|RD1|Add0~46\);

-- Location: MLABCELL_X39_Y5_N18
\comb_4|RD1|out~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_4|RD1|out~5_combout\ = ( \comb_4|RD1|Equal0~combout\ ) # ( !\comb_4|RD1|Equal0~combout\ & ( (!\KEY[0]~input_o\) # ((\comb_4|RD1|Add0~45_sumout\) # (\comb_5|pres_s.state3~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101111111111101110111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	datab => \comb_5|ALT_INV_pres_s.state3~q\,
	datad => \comb_4|RD1|ALT_INV_Add0~45_sumout\,
	dataf => \comb_4|RD1|ALT_INV_Equal0~combout\,
	combout => \comb_4|RD1|out~5_combout\);

-- Location: FF_X39_Y5_N20
\comb_4|RD1|out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \comb_4|RD1|out~5_combout\,
	ena => \comb_4|RD1|out[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_4|RD1|out\(5));

-- Location: LABCELL_X42_Y5_N18
\comb_4|RD1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_4|RD1|Add0~21_sumout\ = SUM(( \comb_4|RD1|out\(6) ) + ( VCC ) + ( \comb_4|RD1|Add0~46\ ))
-- \comb_4|RD1|Add0~22\ = CARRY(( \comb_4|RD1|out\(6) ) + ( VCC ) + ( \comb_4|RD1|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \comb_4|RD1|ALT_INV_out\(6),
	cin => \comb_4|RD1|Add0~46\,
	sumout => \comb_4|RD1|Add0~21_sumout\,
	cout => \comb_4|RD1|Add0~22\);

-- Location: FF_X42_Y5_N19
\comb_4|RD1|out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \comb_4|RD1|Add0~21_sumout\,
	sclr => \comb_4|RD1|out[15]~0_combout\,
	ena => \comb_4|RD1|out[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_4|RD1|out\(6));

-- Location: LABCELL_X42_Y5_N21
\comb_4|RD1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_4|RD1|Add0~17_sumout\ = SUM(( \comb_4|RD1|out\(7) ) + ( VCC ) + ( \comb_4|RD1|Add0~22\ ))
-- \comb_4|RD1|Add0~18\ = CARRY(( \comb_4|RD1|out\(7) ) + ( VCC ) + ( \comb_4|RD1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \comb_4|RD1|ALT_INV_out\(7),
	cin => \comb_4|RD1|Add0~22\,
	sumout => \comb_4|RD1|Add0~17_sumout\,
	cout => \comb_4|RD1|Add0~18\);

-- Location: FF_X43_Y5_N56
\comb_4|RD1|out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \comb_4|RD1|Add0~17_sumout\,
	sclr => \comb_4|RD1|out[15]~0_combout\,
	sload => VCC,
	ena => \comb_4|RD1|out[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_4|RD1|out\(7));

-- Location: LABCELL_X42_Y5_N24
\comb_4|RD1|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_4|RD1|Add0~41_sumout\ = SUM(( \comb_4|RD1|out\(8) ) + ( VCC ) + ( \comb_4|RD1|Add0~18\ ))
-- \comb_4|RD1|Add0~42\ = CARRY(( \comb_4|RD1|out\(8) ) + ( VCC ) + ( \comb_4|RD1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \comb_4|RD1|ALT_INV_out\(8),
	cin => \comb_4|RD1|Add0~18\,
	sumout => \comb_4|RD1|Add0~41_sumout\,
	cout => \comb_4|RD1|Add0~42\);

-- Location: MLABCELL_X39_Y5_N15
\comb_4|RD1|out~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_4|RD1|out~4_combout\ = ( \comb_4|RD1|Equal0~combout\ ) # ( !\comb_4|RD1|Equal0~combout\ & ( (!\KEY[0]~input_o\) # ((\comb_4|RD1|Add0~41_sumout\) # (\comb_5|pres_s.state3~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101111111111101110111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	datab => \comb_5|ALT_INV_pres_s.state3~q\,
	datad => \comb_4|RD1|ALT_INV_Add0~41_sumout\,
	dataf => \comb_4|RD1|ALT_INV_Equal0~combout\,
	combout => \comb_4|RD1|out~4_combout\);

-- Location: FF_X39_Y5_N17
\comb_4|RD1|out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \comb_4|RD1|out~4_combout\,
	ena => \comb_4|RD1|out[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_4|RD1|out\(8));

-- Location: LABCELL_X42_Y5_N27
\comb_4|RD1|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_4|RD1|Add0~37_sumout\ = SUM(( \comb_4|RD1|out\(9) ) + ( VCC ) + ( \comb_4|RD1|Add0~42\ ))
-- \comb_4|RD1|Add0~38\ = CARRY(( \comb_4|RD1|out\(9) ) + ( VCC ) + ( \comb_4|RD1|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \comb_4|RD1|ALT_INV_out\(9),
	cin => \comb_4|RD1|Add0~42\,
	sumout => \comb_4|RD1|Add0~37_sumout\,
	cout => \comb_4|RD1|Add0~38\);

-- Location: MLABCELL_X39_Y5_N12
\comb_4|RD1|out~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_4|RD1|out~3_combout\ = ( \comb_4|RD1|Equal0~combout\ ) # ( !\comb_4|RD1|Equal0~combout\ & ( (!\KEY[0]~input_o\) # ((\comb_4|RD1|Add0~37_sumout\) # (\comb_5|pres_s.state3~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101111111111101110111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	datab => \comb_5|ALT_INV_pres_s.state3~q\,
	datad => \comb_4|RD1|ALT_INV_Add0~37_sumout\,
	dataf => \comb_4|RD1|ALT_INV_Equal0~combout\,
	combout => \comb_4|RD1|out~3_combout\);

-- Location: FF_X39_Y5_N14
\comb_4|RD1|out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \comb_4|RD1|out~3_combout\,
	ena => \comb_4|RD1|out[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_4|RD1|out\(9));

-- Location: LABCELL_X42_Y5_N30
\comb_4|RD1|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_4|RD1|Add0~33_sumout\ = SUM(( \comb_4|RD1|out\(10) ) + ( VCC ) + ( \comb_4|RD1|Add0~38\ ))
-- \comb_4|RD1|Add0~34\ = CARRY(( \comb_4|RD1|out\(10) ) + ( VCC ) + ( \comb_4|RD1|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \comb_4|RD1|ALT_INV_out\(10),
	cin => \comb_4|RD1|Add0~38\,
	sumout => \comb_4|RD1|Add0~33_sumout\,
	cout => \comb_4|RD1|Add0~34\);

-- Location: MLABCELL_X39_Y5_N45
\comb_4|RD1|out~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_4|RD1|out~2_combout\ = ( \comb_4|RD1|Equal0~combout\ ) # ( !\comb_4|RD1|Equal0~combout\ & ( ((!\KEY[0]~input_o\) # (\comb_4|RD1|Add0~33_sumout\)) # (\comb_5|pres_s.state3~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001111111111111100111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \comb_5|ALT_INV_pres_s.state3~q\,
	datac => \ALT_INV_KEY[0]~input_o\,
	datad => \comb_4|RD1|ALT_INV_Add0~33_sumout\,
	dataf => \comb_4|RD1|ALT_INV_Equal0~combout\,
	combout => \comb_4|RD1|out~2_combout\);

-- Location: FF_X39_Y5_N47
\comb_4|RD1|out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \comb_4|RD1|out~2_combout\,
	ena => \comb_4|RD1|out[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_4|RD1|out\(10));

-- Location: LABCELL_X42_Y5_N33
\comb_4|RD1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_4|RD1|Add0~13_sumout\ = SUM(( \comb_4|RD1|out\(11) ) + ( VCC ) + ( \comb_4|RD1|Add0~34\ ))
-- \comb_4|RD1|Add0~14\ = CARRY(( \comb_4|RD1|out\(11) ) + ( VCC ) + ( \comb_4|RD1|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \comb_4|RD1|ALT_INV_out\(11),
	cin => \comb_4|RD1|Add0~34\,
	sumout => \comb_4|RD1|Add0~13_sumout\,
	cout => \comb_4|RD1|Add0~14\);

-- Location: FF_X42_Y5_N34
\comb_4|RD1|out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \comb_4|RD1|Add0~13_sumout\,
	sclr => \comb_4|RD1|out[15]~0_combout\,
	ena => \comb_4|RD1|out[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_4|RD1|out\(11));

-- Location: LABCELL_X42_Y5_N36
\comb_4|RD1|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_4|RD1|Add0~73_sumout\ = SUM(( \comb_4|RD1|out\(12) ) + ( VCC ) + ( \comb_4|RD1|Add0~14\ ))
-- \comb_4|RD1|Add0~74\ = CARRY(( \comb_4|RD1|out\(12) ) + ( VCC ) + ( \comb_4|RD1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \comb_4|RD1|ALT_INV_out\(12),
	cin => \comb_4|RD1|Add0~14\,
	sumout => \comb_4|RD1|Add0~73_sumout\,
	cout => \comb_4|RD1|Add0~74\);

-- Location: MLABCELL_X39_Y5_N9
\comb_4|RD1|out~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_4|RD1|out~11_combout\ = ( \comb_4|RD1|Equal0~combout\ ) # ( !\comb_4|RD1|Equal0~combout\ & ( (!\KEY[0]~input_o\) # ((\comb_4|RD1|Add0~73_sumout\) # (\comb_5|pres_s.state3~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111111111111101011111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	datac => \comb_5|ALT_INV_pres_s.state3~q\,
	datad => \comb_4|RD1|ALT_INV_Add0~73_sumout\,
	dataf => \comb_4|RD1|ALT_INV_Equal0~combout\,
	combout => \comb_4|RD1|out~11_combout\);

-- Location: FF_X39_Y5_N11
\comb_4|RD1|out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \comb_4|RD1|out~11_combout\,
	ena => \comb_4|RD1|out[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_4|RD1|out\(12));

-- Location: LABCELL_X42_Y5_N39
\comb_4|RD1|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_4|RD1|Add0~77_sumout\ = SUM(( \comb_4|RD1|out\(13) ) + ( VCC ) + ( \comb_4|RD1|Add0~74\ ))
-- \comb_4|RD1|Add0~78\ = CARRY(( \comb_4|RD1|out\(13) ) + ( VCC ) + ( \comb_4|RD1|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \comb_4|RD1|ALT_INV_out\(13),
	cin => \comb_4|RD1|Add0~74\,
	sumout => \comb_4|RD1|Add0~77_sumout\,
	cout => \comb_4|RD1|Add0~78\);

-- Location: MLABCELL_X39_Y5_N48
\comb_4|RD1|out~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_4|RD1|out~12_combout\ = ( \comb_4|RD1|Add0~77_sumout\ & ( \comb_4|RD1|Equal0~combout\ ) ) # ( !\comb_4|RD1|Add0~77_sumout\ & ( \comb_4|RD1|Equal0~combout\ ) ) # ( \comb_4|RD1|Add0~77_sumout\ & ( !\comb_4|RD1|Equal0~combout\ ) ) # ( 
-- !\comb_4|RD1|Add0~77_sumout\ & ( !\comb_4|RD1|Equal0~combout\ & ( (!\KEY[0]~input_o\) # (\comb_5|pres_s.state3~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001111110011111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \comb_5|ALT_INV_pres_s.state3~q\,
	datac => \ALT_INV_KEY[0]~input_o\,
	datae => \comb_4|RD1|ALT_INV_Add0~77_sumout\,
	dataf => \comb_4|RD1|ALT_INV_Equal0~combout\,
	combout => \comb_4|RD1|out~12_combout\);

-- Location: FF_X39_Y5_N50
\comb_4|RD1|out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \comb_4|RD1|out~12_combout\,
	ena => \comb_4|RD1|out[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_4|RD1|out\(13));

-- Location: LABCELL_X42_Y5_N42
\comb_4|RD1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_4|RD1|Add0~1_sumout\ = SUM(( \comb_4|RD1|out\(14) ) + ( VCC ) + ( \comb_4|RD1|Add0~78\ ))
-- \comb_4|RD1|Add0~2\ = CARRY(( \comb_4|RD1|out\(14) ) + ( VCC ) + ( \comb_4|RD1|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \comb_4|RD1|ALT_INV_out\(14),
	cin => \comb_4|RD1|Add0~78\,
	sumout => \comb_4|RD1|Add0~1_sumout\,
	cout => \comb_4|RD1|Add0~2\);

-- Location: FF_X42_Y5_N44
\comb_4|RD1|out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \comb_4|RD1|Add0~1_sumout\,
	sclr => \comb_4|RD1|out[15]~0_combout\,
	ena => \comb_4|RD1|out[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_4|RD1|out\(14));

-- Location: LABCELL_X42_Y5_N45
\comb_4|RD1|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_4|RD1|Add0~69_sumout\ = SUM(( \comb_4|RD1|out\(15) ) + ( VCC ) + ( \comb_4|RD1|Add0~2\ ))
-- \comb_4|RD1|Add0~70\ = CARRY(( \comb_4|RD1|out\(15) ) + ( VCC ) + ( \comb_4|RD1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_4|RD1|ALT_INV_out\(15),
	cin => \comb_4|RD1|Add0~2\,
	sumout => \comb_4|RD1|Add0~69_sumout\,
	cout => \comb_4|RD1|Add0~70\);

-- Location: MLABCELL_X39_Y5_N6
\comb_4|RD1|out~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_4|RD1|out~10_combout\ = ( \comb_4|RD1|Equal0~combout\ ) # ( !\comb_4|RD1|Equal0~combout\ & ( (!\KEY[0]~input_o\) # ((\comb_4|RD1|Add0~69_sumout\) # (\comb_5|pres_s.state3~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101111111111101110111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	datab => \comb_5|ALT_INV_pres_s.state3~q\,
	datad => \comb_4|RD1|ALT_INV_Add0~69_sumout\,
	dataf => \comb_4|RD1|ALT_INV_Equal0~combout\,
	combout => \comb_4|RD1|out~10_combout\);

-- Location: FF_X39_Y5_N8
\comb_4|RD1|out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \comb_4|RD1|out~10_combout\,
	ena => \comb_4|RD1|out[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_4|RD1|out\(15));

-- Location: LABCELL_X42_Y5_N48
\comb_4|RD1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_4|RD1|Add0~9_sumout\ = SUM(( \comb_4|RD1|out\(16) ) + ( VCC ) + ( \comb_4|RD1|Add0~70\ ))
-- \comb_4|RD1|Add0~10\ = CARRY(( \comb_4|RD1|out\(16) ) + ( VCC ) + ( \comb_4|RD1|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \comb_4|RD1|ALT_INV_out\(16),
	cin => \comb_4|RD1|Add0~70\,
	sumout => \comb_4|RD1|Add0~9_sumout\,
	cout => \comb_4|RD1|Add0~10\);

-- Location: FF_X42_Y5_N49
\comb_4|RD1|out[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \comb_4|RD1|Add0~9_sumout\,
	sclr => \comb_4|RD1|out[15]~0_combout\,
	ena => \comb_4|RD1|out[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_4|RD1|out\(16));

-- Location: LABCELL_X42_Y5_N51
\comb_4|RD1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_4|RD1|Add0~5_sumout\ = SUM(( \comb_4|RD1|out\(17) ) + ( VCC ) + ( \comb_4|RD1|Add0~10\ ))
-- \comb_4|RD1|Add0~6\ = CARRY(( \comb_4|RD1|out\(17) ) + ( VCC ) + ( \comb_4|RD1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \comb_4|RD1|ALT_INV_out\(17),
	cin => \comb_4|RD1|Add0~10\,
	sumout => \comb_4|RD1|Add0~5_sumout\,
	cout => \comb_4|RD1|Add0~6\);

-- Location: FF_X42_Y5_N52
\comb_4|RD1|out[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \comb_4|RD1|Add0~5_sumout\,
	sclr => \comb_4|RD1|out[15]~0_combout\,
	ena => \comb_4|RD1|out[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_4|RD1|out\(17));

-- Location: LABCELL_X42_Y5_N54
\comb_4|RD1|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_4|RD1|Add0~65_sumout\ = SUM(( \comb_4|RD1|out\(18) ) + ( VCC ) + ( \comb_4|RD1|Add0~6\ ))
-- \comb_4|RD1|Add0~66\ = CARRY(( \comb_4|RD1|out\(18) ) + ( VCC ) + ( \comb_4|RD1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \comb_4|RD1|ALT_INV_out\(18),
	cin => \comb_4|RD1|Add0~6\,
	sumout => \comb_4|RD1|Add0~65_sumout\,
	cout => \comb_4|RD1|Add0~66\);

-- Location: MLABCELL_X39_Y5_N33
\comb_4|RD1|out~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_4|RD1|out~9_combout\ = ( \comb_4|RD1|Add0~65_sumout\ ) # ( !\comb_4|RD1|Add0~65_sumout\ & ( (!\KEY[0]~input_o\) # ((\comb_5|pres_s.state3~q\) # (\comb_4|RD1|Equal0~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011111110111111101111111011111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	datab => \comb_4|RD1|ALT_INV_Equal0~combout\,
	datac => \comb_5|ALT_INV_pres_s.state3~q\,
	dataf => \comb_4|RD1|ALT_INV_Add0~65_sumout\,
	combout => \comb_4|RD1|out~9_combout\);

-- Location: FF_X39_Y5_N35
\comb_4|RD1|out[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \comb_4|RD1|out~9_combout\,
	ena => \comb_4|RD1|out[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_4|RD1|out\(18));

-- Location: LABCELL_X42_Y5_N57
\comb_4|RD1|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_4|RD1|Add0~61_sumout\ = SUM(( \comb_4|RD1|out\(19) ) + ( VCC ) + ( \comb_4|RD1|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \comb_4|RD1|ALT_INV_out\(19),
	cin => \comb_4|RD1|Add0~66\,
	sumout => \comb_4|RD1|Add0~61_sumout\);

-- Location: MLABCELL_X39_Y5_N24
\comb_4|RD1|out~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_4|RD1|out~8_combout\ = ( \comb_4|RD1|Add0~61_sumout\ ) # ( !\comb_4|RD1|Add0~61_sumout\ & ( (!\KEY[0]~input_o\) # ((\comb_5|pres_s.state3~q\) # (\comb_4|RD1|Equal0~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011111110111111101111111011111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	datab => \comb_4|RD1|ALT_INV_Equal0~combout\,
	datac => \comb_5|ALT_INV_pres_s.state3~q\,
	dataf => \comb_4|RD1|ALT_INV_Add0~61_sumout\,
	combout => \comb_4|RD1|out~8_combout\);

-- Location: FF_X39_Y5_N26
\comb_4|RD1|out[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \comb_4|RD1|out~8_combout\,
	ena => \comb_4|RD1|out[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_4|RD1|out\(19));

-- Location: MLABCELL_X39_Y5_N36
\comb_4|RD1|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_4|RD1|Equal0~2_combout\ = ( !\comb_4|RD1|out\(18) & ( (!\comb_4|RD1|out\(13) & (!\comb_4|RD1|out\(15) & (!\comb_4|RD1|out\(19) & !\comb_4|RD1|out\(12)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_4|RD1|ALT_INV_out\(13),
	datab => \comb_4|RD1|ALT_INV_out\(15),
	datac => \comb_4|RD1|ALT_INV_out\(19),
	datad => \comb_4|RD1|ALT_INV_out\(12),
	dataf => \comb_4|RD1|ALT_INV_out\(18),
	combout => \comb_4|RD1|Equal0~2_combout\);

-- Location: MLABCELL_X39_Y5_N0
\comb_4|RD1|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_4|RD1|Equal0~1_combout\ = ( !\comb_4|RD1|out\(10) & ( !\comb_4|RD1|out\(9) & ( (!\comb_4|RD1|out\(2) & (!\comb_4|RD1|out\(4) & (!\comb_4|RD1|out\(5) & !\comb_4|RD1|out\(8)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_4|RD1|ALT_INV_out\(2),
	datab => \comb_4|RD1|ALT_INV_out\(4),
	datac => \comb_4|RD1|ALT_INV_out\(5),
	datad => \comb_4|RD1|ALT_INV_out\(8),
	datae => \comb_4|RD1|ALT_INV_out\(10),
	dataf => \comb_4|RD1|ALT_INV_out\(9),
	combout => \comb_4|RD1|Equal0~1_combout\);

-- Location: LABCELL_X43_Y5_N48
\comb_4|RD1|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_4|RD1|Equal0~0_combout\ = ( !\comb_4|RD1|out\(16) & ( !\comb_4|RD1|out\(6) & ( (!\comb_4|RD1|out\(11) & (!\comb_4|RD1|out\(3) & (!\comb_4|RD1|out\(7) & !\comb_4|RD1|out\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_4|RD1|ALT_INV_out\(11),
	datab => \comb_4|RD1|ALT_INV_out\(3),
	datac => \comb_4|RD1|ALT_INV_out\(7),
	datad => \comb_4|RD1|ALT_INV_out\(1),
	datae => \comb_4|RD1|ALT_INV_out\(16),
	dataf => \comb_4|RD1|ALT_INV_out\(6),
	combout => \comb_4|RD1|Equal0~0_combout\);

-- Location: MLABCELL_X39_Y5_N57
\comb_4|RD1|Equal0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_4|RD1|Equal0~combout\ = LCELL(( \comb_4|RD1|Equal0~1_combout\ & ( \comb_4|RD1|Equal0~0_combout\ & ( (!\comb_4|RD1|out\(0) & (!\comb_4|RD1|out\(14) & (!\comb_4|RD1|out\(17) & \comb_4|RD1|Equal0~2_combout\))) ) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_4|RD1|ALT_INV_out\(0),
	datab => \comb_4|RD1|ALT_INV_out\(14),
	datac => \comb_4|RD1|ALT_INV_out\(17),
	datad => \comb_4|RD1|ALT_INV_Equal0~2_combout\,
	datae => \comb_4|RD1|ALT_INV_Equal0~1_combout\,
	dataf => \comb_4|RD1|ALT_INV_Equal0~0_combout\,
	combout => \comb_4|RD1|Equal0~combout\);

-- Location: LABCELL_X40_Y4_N45
\comb_4|F_F_1|outF~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_4|F_F_1|outF~4_combout\ = ( \KEY[0]~input_o\ & ( \comb_4|F_F_1|outF\(0) & ( ((\comb_4|F_F_1|outF\(2)) # (\comb_5|pres_s.state3~q\)) # (\comb_4|F_F_1|Equal0~combout\) ) ) ) # ( !\KEY[0]~input_o\ & ( \comb_4|F_F_1|outF\(0) ) ) # ( \KEY[0]~input_o\ & ( 
-- !\comb_4|F_F_1|outF\(0) & ( ((!\comb_4|F_F_1|outF\(1) $ (\comb_4|F_F_1|outF\(2))) # (\comb_5|pres_s.state3~q\)) # (\comb_4|F_F_1|Equal0~combout\) ) ) ) # ( !\KEY[0]~input_o\ & ( !\comb_4|F_F_1|outF\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111110111110111111111111111111111110101111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_4|F_F_1|ALT_INV_Equal0~combout\,
	datab => \comb_4|F_F_1|ALT_INV_outF\(1),
	datac => \comb_5|ALT_INV_pres_s.state3~q\,
	datad => \comb_4|F_F_1|ALT_INV_outF\(2),
	datae => \ALT_INV_KEY[0]~input_o\,
	dataf => \comb_4|F_F_1|ALT_INV_outF\(0),
	combout => \comb_4|F_F_1|outF~4_combout\);

-- Location: FF_X40_Y4_N5
\comb_4|F_F_1|outF[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_4|RD1|Equal0~combout\,
	asdata => \comb_4|F_F_1|outF~4_combout\,
	sload => VCC,
	ena => \comb_4|F_F_1|outF[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_4|F_F_1|outF\(2));

-- Location: LABCELL_X40_Y4_N36
\comb_4|F_F_1|Equal0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_4|F_F_1|Equal0~combout\ = LCELL(( !\comb_4|F_F_1|outF\(1) & ( (!\comb_4|F_F_1|outF\(2) & (!\comb_4|F_F_1|outF\(4) & (!\comb_4|F_F_1|outF\(0) & !\comb_4|F_F_1|outF\(3)))) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_4|F_F_1|ALT_INV_outF\(2),
	datab => \comb_4|F_F_1|ALT_INV_outF\(4),
	datac => \comb_4|F_F_1|ALT_INV_outF\(0),
	datad => \comb_4|F_F_1|ALT_INV_outF\(3),
	dataf => \comb_4|F_F_1|ALT_INV_outF\(1),
	combout => \comb_4|F_F_1|Equal0~combout\);

-- Location: IOIBUF_X40_Y0_N18
\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: IOIBUF_X40_Y0_N1
\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: LABCELL_X40_Y1_N30
\comb_5|rotation_next.rrr~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_5|rotation_next.rrr~0_combout\ = ( \KEY[2]~input_o\ & ( !\KEY[3]~input_o\ ) ) # ( !\KEY[2]~input_o\ & ( \KEY[3]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_KEY[3]~input_o\,
	dataf => \ALT_INV_KEY[2]~input_o\,
	combout => \comb_5|rotation_next.rrr~0_combout\);

-- Location: LABCELL_X40_Y1_N33
\comb_5|Selector6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_5|Selector6~0_combout\ = ( \comb_5|rotation.ggg~q\ & ( ((!\KEY[2]~input_o\) # (\KEY[3]~input_o\)) # (\comb_5|rotation.yyy~q\) ) ) # ( !\comb_5|rotation.ggg~q\ & ( (\comb_5|rotation.yyy~q\ & (!\KEY[3]~input_o\ & \KEY[2]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000011111111010111111111111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_5|ALT_INV_rotation.yyy~q\,
	datac => \ALT_INV_KEY[3]~input_o\,
	datad => \ALT_INV_KEY[2]~input_o\,
	dataf => \comb_5|ALT_INV_rotation.ggg~q\,
	combout => \comb_5|Selector6~0_combout\);

-- Location: LABCELL_X40_Y1_N0
\comb_5|rotation_next.bbb_626\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_5|rotation_next.bbb_626~combout\ = ( \comb_5|Selector6~0_combout\ & ( (\comb_5|rotation_next.bbb_626~combout\) # (\comb_5|rotation_next.rrr~0_combout\) ) ) # ( !\comb_5|Selector6~0_combout\ & ( (!\comb_5|rotation_next.rrr~0_combout\ & 
-- \comb_5|rotation_next.bbb_626~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \comb_5|ALT_INV_rotation_next.rrr~0_combout\,
	datad => \comb_5|ALT_INV_rotation_next.bbb_626~combout\,
	dataf => \comb_5|ALT_INV_Selector6~0_combout\,
	combout => \comb_5|rotation_next.bbb_626~combout\);

-- Location: LABCELL_X40_Y1_N9
\comb_5|rotation~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_5|rotation~11_combout\ = ( !\comb_5|rotation_next.bbb_626~combout\ & ( !\KEY[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_KEY[0]~input_o\,
	dataf => \comb_5|ALT_INV_rotation_next.bbb_626~combout\,
	combout => \comb_5|rotation~11_combout\);

-- Location: FF_X40_Y1_N11
\comb_5|rotation.bbb\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \comb_5|rotation~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_5|rotation.bbb~q\);

-- Location: LABCELL_X40_Y1_N42
\comb_5|Selector8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_5|Selector8~0_combout\ = ( \comb_5|rotation.bbb~q\ & ( (\KEY[2]~input_o\ & (!\KEY[3]~input_o\ & ((\comb_5|rotation.rrr~q\) # (\comb_5|rotation.ggg~q\)))) ) ) # ( !\comb_5|rotation.bbb~q\ & ( (!\KEY[2]~input_o\) # (((\comb_5|rotation.rrr~q\) # 
-- (\comb_5|rotation.ggg~q\)) # (\KEY[3]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011111111111111101111111111111100000100010001000000010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[2]~input_o\,
	datab => \ALT_INV_KEY[3]~input_o\,
	datac => \comb_5|ALT_INV_rotation.ggg~q\,
	datad => \comb_5|ALT_INV_rotation.rrr~q\,
	dataf => \comb_5|ALT_INV_rotation.bbb~q\,
	combout => \comb_5|Selector8~0_combout\);

-- Location: LABCELL_X40_Y1_N45
\comb_5|rotation_next.yyy_586\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_5|rotation_next.yyy_586~combout\ = ( \comb_5|Selector8~0_combout\ & ( (\comb_5|rotation_next.yyy_586~combout\) # (\comb_5|rotation_next.rrr~0_combout\) ) ) # ( !\comb_5|Selector8~0_combout\ & ( (!\comb_5|rotation_next.rrr~0_combout\ & 
-- \comb_5|rotation_next.yyy_586~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \comb_5|ALT_INV_rotation_next.rrr~0_combout\,
	datad => \comb_5|ALT_INV_rotation_next.yyy_586~combout\,
	dataf => \comb_5|ALT_INV_Selector8~0_combout\,
	combout => \comb_5|rotation_next.yyy_586~combout\);

-- Location: LABCELL_X40_Y1_N48
\comb_5|rotation~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_5|rotation~12_combout\ = ( !\KEY[0]~input_o\ & ( \comb_5|rotation_next.yyy_586~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \comb_5|ALT_INV_rotation_next.yyy_586~combout\,
	dataf => \ALT_INV_KEY[0]~input_o\,
	combout => \comb_5|rotation~12_combout\);

-- Location: FF_X40_Y1_N50
\comb_5|rotation.yyy\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \comb_5|rotation~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_5|rotation.yyy~q\);

-- Location: LABCELL_X40_Y1_N39
\comb_5|Selector10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_5|Selector10~0_combout\ = ( \comb_5|rotation.yyy~q\ & ( (!\KEY[2]~input_o\) # (\KEY[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_KEY[3]~input_o\,
	datad => \ALT_INV_KEY[2]~input_o\,
	dataf => \comb_5|ALT_INV_rotation.yyy~q\,
	combout => \comb_5|Selector10~0_combout\);

-- Location: LABCELL_X40_Y1_N36
\comb_5|rotation_next.rrr_566\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_5|rotation_next.rrr_566~combout\ = ( \comb_5|rotation_next.rrr~0_combout\ & ( \comb_5|Selector10~0_combout\ ) ) # ( !\comb_5|rotation_next.rrr~0_combout\ & ( \comb_5|rotation_next.rrr_566~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_5|ALT_INV_Selector10~0_combout\,
	datad => \comb_5|ALT_INV_rotation_next.rrr_566~combout\,
	dataf => \comb_5|ALT_INV_rotation_next.rrr~0_combout\,
	combout => \comb_5|rotation_next.rrr_566~combout\);

-- Location: LABCELL_X40_Y1_N3
\comb_5|rotation~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_5|rotation~10_combout\ = ( !\KEY[0]~input_o\ & ( \comb_5|rotation_next.rrr_566~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \comb_5|ALT_INV_rotation_next.rrr_566~combout\,
	dataf => \ALT_INV_KEY[0]~input_o\,
	combout => \comb_5|rotation~10_combout\);

-- Location: FF_X40_Y1_N5
\comb_5|rotation.rrr\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \comb_5|rotation~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_5|rotation.rrr~q\);

-- Location: LABCELL_X40_Y1_N21
\comb_5|Selector7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_5|Selector7~0_combout\ = ( \comb_5|rotation.rrr~q\ & ( \comb_5|rotation.bbb~q\ & ( (!\KEY[2]~input_o\) # (\KEY[3]~input_o\) ) ) ) # ( \comb_5|rotation.rrr~q\ & ( !\comb_5|rotation.bbb~q\ ) ) # ( !\comb_5|rotation.rrr~q\ & ( !\comb_5|rotation.bbb~q\ 
-- & ( (\KEY[2]~input_o\ & !\KEY[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000111111111111111100000000000000001010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[2]~input_o\,
	datac => \ALT_INV_KEY[3]~input_o\,
	datae => \comb_5|ALT_INV_rotation.rrr~q\,
	dataf => \comb_5|ALT_INV_rotation.bbb~q\,
	combout => \comb_5|Selector7~0_combout\);

-- Location: LABCELL_X40_Y1_N54
\comb_5|rotation_next.ggg_606\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_5|rotation_next.ggg_606~combout\ = ( \comb_5|rotation_next.ggg_606~combout\ & ( \comb_5|Selector7~0_combout\ ) ) # ( !\comb_5|rotation_next.ggg_606~combout\ & ( \comb_5|Selector7~0_combout\ & ( \comb_5|rotation_next.rrr~0_combout\ ) ) ) # ( 
-- \comb_5|rotation_next.ggg_606~combout\ & ( !\comb_5|Selector7~0_combout\ & ( !\comb_5|rotation_next.rrr~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \comb_5|ALT_INV_rotation_next.rrr~0_combout\,
	datae => \comb_5|ALT_INV_rotation_next.ggg_606~combout\,
	dataf => \comb_5|ALT_INV_Selector7~0_combout\,
	combout => \comb_5|rotation_next.ggg_606~combout\);

-- Location: LABCELL_X40_Y1_N24
\comb_5|rotation~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_5|rotation~9_combout\ = ( !\KEY[0]~input_o\ & ( \comb_5|rotation_next.ggg_606~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \comb_5|ALT_INV_rotation_next.ggg_606~combout\,
	dataf => \ALT_INV_KEY[0]~input_o\,
	combout => \comb_5|rotation~9_combout\);

-- Location: FF_X40_Y1_N26
\comb_5|rotation.ggg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \comb_5|rotation~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_5|rotation.ggg~q\);

-- Location: LABCELL_X40_Y1_N6
\comb_5|Selector15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_5|Selector15~0_combout\ = ( \comb_5|rotation.bbb~q\ & ( ((!\KEY[2]~input_o\ & (\KEY[3]~input_o\ & \comb_5|rotation.rrr~q\))) # (\comb_5|rotation.ggg~q\) ) ) # ( !\comb_5|rotation.bbb~q\ & ( ((!\KEY[2]~input_o\ & (\KEY[3]~input_o\ & 
-- \comb_5|rotation.rrr~q\)) # (\KEY[2]~input_o\ & (!\KEY[3]~input_o\))) # (\comb_5|rotation.ggg~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100111101101111010011110110111100001111001011110000111100101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[2]~input_o\,
	datab => \ALT_INV_KEY[3]~input_o\,
	datac => \comb_5|ALT_INV_rotation.ggg~q\,
	datad => \comb_5|ALT_INV_rotation.rrr~q\,
	dataf => \comb_5|ALT_INV_rotation.bbb~q\,
	combout => \comb_5|Selector15~0_combout\);

-- Location: LABCELL_X40_Y3_N57
\comb_5|gen_\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_5|gen_~combout\ = ( \comb_5|Selector15~0_combout\ & ( !\comb_5|rotation.ggg~q\ ) ) # ( !\comb_5|Selector15~0_combout\ & ( \comb_5|gen_~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \comb_5|ALT_INV_rotation.ggg~q\,
	datad => \comb_5|ALT_INV_gen_~combout\,
	dataf => \comb_5|ALT_INV_Selector15~0_combout\,
	combout => \comb_5|gen_~combout\);

-- Location: LABCELL_X40_Y2_N15
\comb_4|randn|data~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_4|randn|data~0_combout\ = ( \comb_4|randn|data\(3) & ( (!\KEY[0]~input_o\) # (!\comb_4|randn|data\(2)) ) ) # ( !\comb_4|randn|data\(3) & ( (!\KEY[0]~input_o\) # (\comb_4|randn|data\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011111111111100001111111111111111111100001111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_KEY[0]~input_o\,
	datad => \comb_4|randn|ALT_INV_data\(2),
	dataf => \comb_4|randn|ALT_INV_data\(3),
	combout => \comb_4|randn|data~0_combout\);

-- Location: FF_X40_Y2_N17
\comb_4|randn|data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \comb_4|randn|data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_4|randn|data\(2));

-- Location: LABCELL_X40_Y2_N33
\comb_4|randn|data_next[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_4|randn|data_next\(0) = ( \comb_4|randn|data\(3) & ( !\comb_4|randn|data\(2) $ (\comb_4|randn|data\(0)) ) ) # ( !\comb_4|randn|data\(3) & ( !\comb_4|randn|data\(2) $ (!\comb_4|randn|data\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000011110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \comb_4|randn|ALT_INV_data\(2),
	datad => \comb_4|randn|ALT_INV_data\(0),
	dataf => \comb_4|randn|ALT_INV_data\(3),
	combout => \comb_4|randn|data_next\(0));

-- Location: FF_X40_Y2_N35
\comb_4|randn|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \comb_4|randn|data_next\(0),
	asdata => VCC,
	sload => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_4|randn|data\(0));

-- Location: LABCELL_X40_Y2_N27
\comb_4|randn|data~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_4|randn|data~1_combout\ = ( \KEY[0]~input_o\ & ( !\comb_4|randn|data\(0) $ (!\comb_4|randn|data\(3) $ (\comb_4|randn|data\(1))) ) ) # ( !\KEY[0]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111101011010101001010101101010100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_4|randn|ALT_INV_data\(0),
	datac => \comb_4|randn|ALT_INV_data\(3),
	datad => \comb_4|randn|ALT_INV_data\(1),
	dataf => \ALT_INV_KEY[0]~input_o\,
	combout => \comb_4|randn|data~1_combout\);

-- Location: FF_X40_Y2_N29
\comb_4|randn|data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \comb_4|randn|data~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_4|randn|data\(1));

-- Location: LABCELL_X40_Y2_N12
\comb_4|randn|data_next[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_4|randn|data_next[1]~0_combout\ = !\comb_4|randn|data\(0) $ (!\comb_4|randn|data\(1))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100101101001011010010110100101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_4|randn|ALT_INV_data\(0),
	datac => \comb_4|randn|ALT_INV_data\(1),
	combout => \comb_4|randn|data_next[1]~0_combout\);

-- Location: FF_X40_Y2_N14
\comb_4|randn|data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \comb_4|randn|data_next[1]~0_combout\,
	asdata => VCC,
	sload => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_4|randn|data\(3));

-- Location: LABCELL_X40_Y2_N45
\comb_5|WideOr8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_5|WideOr8~0_combout\ = ( \comb_5|pres_s.state3~q\ ) # ( !\comb_5|pres_s.state3~q\ & ( \comb_5|pres_s.state4~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \comb_5|ALT_INV_pres_s.state4~q\,
	dataf => \comb_5|ALT_INV_pres_s.state3~q\,
	combout => \comb_5|WideOr8~0_combout\);

-- Location: LABCELL_X40_Y2_N9
\comb_5|newColEn_\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_5|newColEn_~combout\ = ( !\comb_5|WideOr8~0_combout\ & ( \comb_5|pres_s.state4~q\ & ( \comb_5|newColEn_~combout\ ) ) ) # ( \comb_5|WideOr8~0_combout\ & ( !\comb_5|pres_s.state4~q\ ) ) # ( !\comb_5|WideOr8~0_combout\ & ( !\comb_5|pres_s.state4~q\ & ( 
-- \comb_5|newColEn_~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111111111111111100001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \comb_5|ALT_INV_newColEn_~combout\,
	datae => \comb_5|ALT_INV_WideOr8~0_combout\,
	dataf => \comb_5|ALT_INV_pres_s.state4~q\,
	combout => \comb_5|newColEn_~combout\);

-- Location: LABCELL_X40_Y2_N24
\comb_4|randcol|pickCol[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_4|randcol|pickCol\(1) = ( \comb_4|randcol|pickCol\(1) & ( (!\comb_5|newColEn_~combout\) # (\comb_4|randn|data\(3)) ) ) # ( !\comb_4|randcol|pickCol\(1) & ( (\comb_4|randn|data\(3) & \comb_5|newColEn_~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \comb_4|randn|ALT_INV_data\(3),
	datad => \comb_5|ALT_INV_newColEn_~combout\,
	dataf => \comb_4|randcol|ALT_INV_pickCol\(1),
	combout => \comb_4|randcol|pickCol\(1));

-- Location: MLABCELL_X39_Y3_N54
\comb_4|ycc|_Colout~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_4|ycc|_Colout~2_combout\ = ( !\comb_5|pres_s.state2~q\ & ( (!\comb_5|pres_s.state3~q\ & (!\comb_5|gen_~combout\ & (\comb_5|pres_s.reset_s~q\ & \comb_4|randcol|pickCol\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_5|ALT_INV_pres_s.state3~q\,
	datab => \comb_5|ALT_INV_gen_~combout\,
	datac => \comb_5|ALT_INV_pres_s.reset_s~q\,
	datad => \comb_4|randcol|ALT_INV_pickCol\(1),
	dataf => \comb_5|ALT_INV_pres_s.state2~q\,
	combout => \comb_4|ycc|_Colout~2_combout\);

-- Location: LABCELL_X40_Y1_N12
\comb_5|Selector9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_5|Selector9~0_combout\ = ( \comb_5|rotation.bbb~q\ & ( (!\KEY[3]~input_o\ & (\comb_5|rotation.yyy~q\ & ((\KEY[2]~input_o\)))) # (\KEY[3]~input_o\ & (((\comb_5|rotation.ggg~q\ & !\KEY[2]~input_o\)))) ) ) # ( !\comb_5|rotation.bbb~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000011010001000000001101000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_5|ALT_INV_rotation.yyy~q\,
	datab => \ALT_INV_KEY[3]~input_o\,
	datac => \comb_5|ALT_INV_rotation.ggg~q\,
	datad => \ALT_INV_KEY[2]~input_o\,
	dataf => \comb_5|ALT_INV_rotation.bbb~q\,
	combout => \comb_5|Selector9~0_combout\);

-- Location: LABCELL_X40_Y3_N12
\comb_5|ben_\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_5|ben_~combout\ = ( \comb_5|Selector9~0_combout\ & ( \comb_5|rotation.bbb~q\ ) ) # ( !\comb_5|Selector9~0_combout\ & ( \comb_5|ben_~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_5|ALT_INV_rotation.bbb~q\,
	datab => \comb_5|ALT_INV_ben_~combout\,
	dataf => \comb_5|ALT_INV_Selector9~0_combout\,
	combout => \comb_5|ben_~combout\);

-- Location: LABCELL_X40_Y1_N51
\comb_5|Selector13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_5|Selector13~0_combout\ = ( \comb_5|rotation.yyy~q\ & ( ((!\KEY[2]~input_o\ & \KEY[3]~input_o\)) # (\comb_5|rotation.rrr~q\) ) ) # ( !\comb_5|rotation.yyy~q\ & ( \comb_5|rotation.rrr~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001010111111110000101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[2]~input_o\,
	datac => \ALT_INV_KEY[3]~input_o\,
	datad => \comb_5|ALT_INV_rotation.rrr~q\,
	dataf => \comb_5|ALT_INV_rotation.yyy~q\,
	combout => \comb_5|Selector13~0_combout\);

-- Location: LABCELL_X40_Y3_N42
\comb_5|ren_\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_5|ren_~combout\ = ( \comb_5|Selector13~0_combout\ & ( \comb_5|rotation.yyy~q\ ) ) # ( !\comb_5|Selector13~0_combout\ & ( \comb_5|ren_~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \comb_5|ALT_INV_rotation.yyy~q\,
	datad => \comb_5|ALT_INV_ren_~combout\,
	dataf => \comb_5|ALT_INV_Selector13~0_combout\,
	combout => \comb_5|ren_~combout\);

-- Location: LABCELL_X40_Y1_N27
\comb_5|Selector16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_5|Selector16~0_combout\ = ( \comb_5|rotation.bbb~q\ & ( (!\comb_5|rotation.ggg~q\ & ((!\comb_5|rotation.rrr~q\) # ((\KEY[2]~input_o\ & !\KEY[3]~input_o\)))) # (\comb_5|rotation.ggg~q\ & (\KEY[2]~input_o\ & (!\KEY[3]~input_o\))) ) ) # ( 
-- !\comb_5|rotation.bbb~q\ & ( (!\comb_5|rotation.ggg~q\ & (!\KEY[2]~input_o\ & (\KEY[3]~input_o\ & !\comb_5|rotation.rrr~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000010000000000010111010001100001011101000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_5|ALT_INV_rotation.ggg~q\,
	datab => \ALT_INV_KEY[2]~input_o\,
	datac => \ALT_INV_KEY[3]~input_o\,
	datad => \comb_5|ALT_INV_rotation.rrr~q\,
	dataf => \comb_5|ALT_INV_rotation.bbb~q\,
	combout => \comb_5|Selector16~0_combout\);

-- Location: LABCELL_X40_Y1_N15
\comb_5|yen_\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_5|yen_~combout\ = ( \comb_5|Selector16~0_combout\ & ( !\comb_5|rotation.yyy~q\ ) ) # ( !\comb_5|Selector16~0_combout\ & ( \comb_5|yen_~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_5|ALT_INV_rotation.yyy~q\,
	datac => \comb_5|ALT_INV_yen_~combout\,
	dataf => \comb_5|ALT_INV_Selector16~0_combout\,
	combout => \comb_5|yen_~combout\);

-- Location: LABCELL_X40_Y3_N15
\comb_4|ycc|outy[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_4|ycc|outy[0]~0_combout\ = ( !\comb_5|yen_~combout\ & ( (!\comb_5|ben_~combout\ & (!\comb_5|ren_~combout\ & !\comb_5|gen_~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \comb_5|ALT_INV_ben_~combout\,
	datac => \comb_5|ALT_INV_ren_~combout\,
	datad => \comb_5|ALT_INV_gen_~combout\,
	dataf => \comb_5|ALT_INV_yen_~combout\,
	combout => \comb_4|ycc|outy[0]~0_combout\);

-- Location: LABCELL_X40_Y3_N36
\comb_4|ycc|_Colout[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_4|ycc|_Colout[2]~1_combout\ = ( \comb_5|pres_s.state2~q\ & ( !\comb_4|ycc|outy[0]~0_combout\ ) ) # ( !\comb_5|pres_s.state2~q\ & ( (!\comb_4|ycc|outy[0]~0_combout\) # ((\comb_5|pres_s.reset_s~q\ & !\comb_5|pres_s.state3~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111111001100110011111100110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \comb_4|ycc|ALT_INV_outy[0]~0_combout\,
	datac => \comb_5|ALT_INV_pres_s.reset_s~q\,
	datad => \comb_5|ALT_INV_pres_s.state3~q\,
	dataf => \comb_5|ALT_INV_pres_s.state2~q\,
	combout => \comb_4|ycc|_Colout[2]~1_combout\);

-- Location: FF_X39_Y3_N56
\comb_4|ycc|_Colout[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_4|F_F_1|Equal0~combout\,
	d => \comb_4|ycc|_Colout~2_combout\,
	ena => \comb_4|ycc|_Colout[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_4|ycc|_Colout\(1));

-- Location: LABCELL_X40_Y2_N3
\wheely|done~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \wheely|done~0_combout\ = ( \comb_5|yen_~combout\ ) # ( !\comb_5|yen_~combout\ & ( \wheely|done~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \wheely|ALT_INV_done~q\,
	dataf => \comb_5|ALT_INV_yen_~combout\,
	combout => \wheely|done~0_combout\);

-- Location: FF_X40_Y2_N4
\wheely|done\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \wheely|done~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wheely|done~q\);

-- Location: LABCELL_X40_Y3_N39
\wheelg|done~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \wheelg|done~0_combout\ = ( \comb_5|gen_~combout\ ) # ( !\comb_5|gen_~combout\ & ( \wheelg|done~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \wheelg|ALT_INV_done~q\,
	dataf => \comb_5|ALT_INV_gen_~combout\,
	combout => \wheelg|done~0_combout\);

-- Location: FF_X40_Y3_N40
\wheelg|done\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \wheelg|done~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wheelg|done~q\);

-- Location: LABCELL_X40_Y3_N33
\comb_4|ycc|outy[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_4|ycc|outy[0]~1_combout\ = ( !\comb_5|pres_s.state6~q\ & ( (!\KEY[0]~input_o\ & (((!\comb_5|pres_s.reset_s~q\) # (\comb_5|pres_s.state3~q\)) # (\comb_5|pres_s.state2~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110001001100110011000100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_5|ALT_INV_pres_s.state2~q\,
	datab => \ALT_INV_KEY[0]~input_o\,
	datac => \comb_5|ALT_INV_pres_s.state3~q\,
	datad => \comb_5|ALT_INV_pres_s.reset_s~q\,
	dataf => \comb_5|ALT_INV_pres_s.state6~q\,
	combout => \comb_4|ycc|outy[0]~1_combout\);

-- Location: LABCELL_X40_Y2_N18
\wheelr|done~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \wheelr|done~0_combout\ = ( \comb_5|ren_~combout\ ) # ( !\comb_5|ren_~combout\ & ( \wheelr|done~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \wheelr|ALT_INV_done~q\,
	dataf => \comb_5|ALT_INV_ren_~combout\,
	combout => \wheelr|done~0_combout\);

-- Location: FF_X40_Y2_N20
\wheelr|done\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \wheelr|done~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wheelr|done~q\);

-- Location: LABCELL_X40_Y3_N18
\wheelb|done~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \wheelb|done~0_combout\ = ( \comb_5|ben_~combout\ ) # ( !\comb_5|ben_~combout\ & ( \wheelb|done~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \wheelb|ALT_INV_done~q\,
	dataf => \comb_5|ALT_INV_ben_~combout\,
	combout => \wheelb|done~0_combout\);

-- Location: FF_X40_Y3_N19
\wheelb|done\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \wheelb|done~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wheelb|done~q\);

-- Location: LABCELL_X40_Y2_N21
\comb_4|ycc|outx~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_4|ycc|outx~0_combout\ = ( \comb_4|ycc|outx\(0) & ( (!\comb_5|ren_~combout\ & (((!\comb_5|ben_~combout\) # (\wheelb|done~q\)))) # (\comb_5|ren_~combout\ & (\wheelr|done~q\)) ) ) # ( !\comb_4|ycc|outx\(0) & ( (!\comb_5|ren_~combout\ & 
-- (((\comb_5|ben_~combout\ & \wheelb|done~q\)))) # (\comb_5|ren_~combout\ & (\wheelr|done~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100011101000100010001110111010001110111011101000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wheelr|ALT_INV_done~q\,
	datab => \comb_5|ALT_INV_ren_~combout\,
	datac => \comb_5|ALT_INV_ben_~combout\,
	datad => \wheelb|ALT_INV_done~q\,
	dataf => \comb_4|ycc|ALT_INV_outx\(0),
	combout => \comb_4|ycc|outx~0_combout\);

-- Location: LABCELL_X40_Y2_N54
\comb_4|ycc|outx~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_4|ycc|outx~1_combout\ = ( \comb_4|ycc|outy[0]~1_combout\ & ( \comb_4|ycc|outx~0_combout\ & ( (!\comb_5|gen_~combout\ & (((!\comb_5|yen_~combout\)) # (\wheely|done~q\))) # (\comb_5|gen_~combout\ & (((\wheelg|done~q\)))) ) ) ) # ( 
-- !\comb_4|ycc|outy[0]~1_combout\ & ( \comb_4|ycc|outx~0_combout\ & ( (\comb_5|gen_~combout\ & \wheelg|done~q\) ) ) ) # ( \comb_4|ycc|outy[0]~1_combout\ & ( !\comb_4|ycc|outx~0_combout\ & ( (!\comb_5|gen_~combout\ & (\wheely|done~q\ & 
-- ((\comb_5|yen_~combout\)))) # (\comb_5|gen_~combout\ & (((\wheelg|done~q\)))) ) ) ) # ( !\comb_4|ycc|outy[0]~1_combout\ & ( !\comb_4|ycc|outx~0_combout\ & ( (\comb_5|gen_~combout\ & \wheelg|done~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110100011100000011000000111100111101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wheely|ALT_INV_done~q\,
	datab => \comb_5|ALT_INV_gen_~combout\,
	datac => \wheelg|ALT_INV_done~q\,
	datad => \comb_5|ALT_INV_yen_~combout\,
	datae => \comb_4|ycc|ALT_INV_outy[0]~1_combout\,
	dataf => \comb_4|ycc|ALT_INV_outx~0_combout\,
	combout => \comb_4|ycc|outx~1_combout\);

-- Location: FF_X40_Y2_N56
\comb_4|ycc|outx[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_4|F_F_1|Equal0~combout\,
	d => \comb_4|ycc|outx~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_4|ycc|outx\(0));

-- Location: MLABCELL_X39_Y2_N39
\~GND\ : cyclonev_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: LABCELL_X40_Y3_N0
\comb_4|ycc|outx[4]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_4|ycc|outx[4]~2_combout\ = ( !\comb_5|gen_~combout\ & ( \comb_4|ycc|outx\(4) & ( (!\comb_4|ycc|outy[0]~1_combout\) # ((!\comb_5|yen_~combout\ & (!\comb_5|ben_~combout\ & !\comb_5|ren_~combout\))) ) ) ) # ( !\comb_5|gen_~combout\ & ( 
-- !\comb_4|ycc|outx\(4) & ( !\comb_4|ycc|outy[0]~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000000000000000000011111000111100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_5|ALT_INV_yen_~combout\,
	datab => \comb_5|ALT_INV_ben_~combout\,
	datac => \comb_4|ycc|ALT_INV_outy[0]~1_combout\,
	datad => \comb_5|ALT_INV_ren_~combout\,
	datae => \comb_5|ALT_INV_gen_~combout\,
	dataf => \comb_4|ycc|ALT_INV_outx\(4),
	combout => \comb_4|ycc|outx[4]~2_combout\);

-- Location: FF_X40_Y3_N32
\comb_4|ycc|outx[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_4|F_F_1|Equal0~combout\,
	asdata => \comb_4|ycc|outx[4]~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_4|ycc|outx\(4));

-- Location: MLABCELL_X39_Y3_N48
\comb_4|ycc|outy~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_4|ycc|outy~2_combout\ = ( !\comb_4|c1|outC\(2) & ( (!\comb_5|pres_s.state3~q\ & (!\comb_5|gen_~combout\ & (\comb_5|pres_s.reset_s~q\ & !\comb_5|pres_s.state2~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000010000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_5|ALT_INV_pres_s.state3~q\,
	datab => \comb_5|ALT_INV_gen_~combout\,
	datac => \comb_5|ALT_INV_pres_s.reset_s~q\,
	datad => \comb_5|ALT_INV_pres_s.state2~q\,
	dataf => \comb_4|c1|ALT_INV_outC\(2),
	combout => \comb_4|ycc|outy~2_combout\);

-- Location: LABCELL_X40_Y3_N51
\comb_4|ycc|outy[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_4|ycc|outy[0]~3_combout\ = ( \comb_5|pres_s.state3~q\ & ( \comb_4|ycc|outy[0]~0_combout\ & ( (\comb_5|pres_s.state6~q\) # (\KEY[0]~input_o\) ) ) ) # ( !\comb_5|pres_s.state3~q\ & ( \comb_4|ycc|outy[0]~0_combout\ & ( (((\comb_5|pres_s.reset_s~q\ & 
-- !\comb_5|pres_s.state2~q\)) # (\comb_5|pres_s.state6~q\)) # (\KEY[0]~input_o\) ) ) ) # ( \comb_5|pres_s.state3~q\ & ( !\comb_4|ycc|outy[0]~0_combout\ ) ) # ( !\comb_5|pres_s.state3~q\ & ( !\comb_4|ycc|outy[0]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111101111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_5|ALT_INV_pres_s.reset_s~q\,
	datab => \ALT_INV_KEY[0]~input_o\,
	datac => \comb_5|ALT_INV_pres_s.state6~q\,
	datad => \comb_5|ALT_INV_pres_s.state2~q\,
	datae => \comb_5|ALT_INV_pres_s.state3~q\,
	dataf => \comb_4|ycc|ALT_INV_outy[0]~0_combout\,
	combout => \comb_4|ycc|outy[0]~3_combout\);

-- Location: FF_X39_Y3_N50
\comb_4|ycc|outy[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_4|F_F_1|Equal0~combout\,
	d => \comb_4|ycc|outy~2_combout\,
	ena => \comb_4|ycc|outy[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_4|ycc|outy\(0));

-- Location: MLABCELL_X39_Y3_N24
\comb_4|ycc|outy~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_4|ycc|outy~4_combout\ = ( !\comb_4|c1|outC\(3) & ( \comb_4|c1|outC\(2) & ( (\comb_5|pres_s.reset_s~q\ & (!\comb_5|pres_s.state2~q\ & (!\comb_5|pres_s.state3~q\ & !\comb_5|gen_~combout\))) ) ) ) # ( \comb_4|c1|outC\(3) & ( !\comb_4|c1|outC\(2) & ( 
-- (\comb_5|pres_s.reset_s~q\ & (!\comb_5|pres_s.state2~q\ & (!\comb_5|pres_s.state3~q\ & !\comb_5|gen_~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010000000000000001000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_5|ALT_INV_pres_s.reset_s~q\,
	datab => \comb_5|ALT_INV_pres_s.state2~q\,
	datac => \comb_5|ALT_INV_pres_s.state3~q\,
	datad => \comb_5|ALT_INV_gen_~combout\,
	datae => \comb_4|c1|ALT_INV_outC\(3),
	dataf => \comb_4|c1|ALT_INV_outC\(2),
	combout => \comb_4|ycc|outy~4_combout\);

-- Location: FF_X39_Y3_N26
\comb_4|ycc|outy[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_4|F_F_1|Equal0~combout\,
	d => \comb_4|ycc|outy~4_combout\,
	ena => \comb_4|ycc|outy[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_4|ycc|outy\(1));

-- Location: MLABCELL_X39_Y3_N57
\VGA|user_input_translator|Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|user_input_translator|Add0~0_combout\ = ( \comb_4|ycc|outy\(1) & ( !\comb_4|ycc|outx\(4) ) ) # ( !\comb_4|ycc|outy\(1) & ( \comb_4|ycc|outx\(4) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \comb_4|ycc|ALT_INV_outx\(4),
	dataf => \comb_4|ycc|ALT_INV_outy\(1),
	combout => \VGA|user_input_translator|Add0~0_combout\);

-- Location: MLABCELL_X39_Y3_N36
\comb_4|ycc|outy~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_4|ycc|outy~5_combout\ = ( \comb_4|c1|outC\(2) & ( \comb_4|c1|outC\(3) & ( (!\comb_5|pres_s.state3~q\ & (!\comb_5|gen_~combout\ & (\comb_5|pres_s.reset_s~q\ & !\comb_5|pres_s.state2~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_5|ALT_INV_pres_s.state3~q\,
	datab => \comb_5|ALT_INV_gen_~combout\,
	datac => \comb_5|ALT_INV_pres_s.reset_s~q\,
	datad => \comb_5|ALT_INV_pres_s.state2~q\,
	datae => \comb_4|c1|ALT_INV_outC\(2),
	dataf => \comb_4|c1|ALT_INV_outC\(3),
	combout => \comb_4|ycc|outy~5_combout\);

-- Location: FF_X39_Y3_N38
\comb_4|ycc|outy[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_4|F_F_1|Equal0~combout\,
	d => \comb_4|ycc|outy~5_combout\,
	ena => \comb_4|ycc|outy[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_4|ycc|outy\(2));

-- Location: MLABCELL_X39_Y3_N18
\VGA|user_input_translator|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|user_input_translator|Add0~1_combout\ = ( \comb_4|ycc|outy\(0) & ( !\comb_4|ycc|outy\(2) $ (((\comb_4|ycc|outy\(1) & \comb_4|ycc|outx\(4)))) ) ) # ( !\comb_4|ycc|outy\(0) & ( !\comb_4|ycc|outy\(2) $ (((!\comb_4|ycc|outy\(1)) # 
-- (!\comb_4|ycc|outx\(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111101110000100011110111011101110000100011110111000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_4|ycc|ALT_INV_outy\(1),
	datab => \comb_4|ycc|ALT_INV_outx\(4),
	datad => \comb_4|ycc|ALT_INV_outy\(2),
	dataf => \comb_4|ycc|ALT_INV_outy\(0),
	combout => \VGA|user_input_translator|Add0~1_combout\);

-- Location: MLABCELL_X39_Y3_N45
\VGA|user_input_translator|Add0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|user_input_translator|Add0~2_combout\ = ( \comb_4|ycc|outy\(2) & ( \comb_4|ycc|outy\(0) & ( !\comb_4|ycc|outy\(1) ) ) ) # ( !\comb_4|ycc|outy\(2) & ( \comb_4|ycc|outy\(0) & ( (!\comb_4|ycc|outx\(4) & \comb_4|ycc|outy\(1)) ) ) ) # ( 
-- \comb_4|ycc|outy\(2) & ( !\comb_4|ycc|outy\(0) & ( (!\comb_4|ycc|outx\(4) & \comb_4|ycc|outy\(1)) ) ) ) # ( !\comb_4|ycc|outy\(2) & ( !\comb_4|ycc|outy\(0) & ( \comb_4|ycc|outy\(1) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001000100010001000100010001000101100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_4|ycc|ALT_INV_outx\(4),
	datab => \comb_4|ycc|ALT_INV_outy\(1),
	datae => \comb_4|ycc|ALT_INV_outy\(2),
	dataf => \comb_4|ycc|ALT_INV_outy\(0),
	combout => \VGA|user_input_translator|Add0~2_combout\);

-- Location: MLABCELL_X39_Y3_N3
\VGA|user_input_translator|Add0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|user_input_translator|Add0~3_combout\ = ( \comb_4|ycc|outy\(2) & ( \comb_4|ycc|outy\(0) & ( !\comb_4|ycc|outy\(1) ) ) ) # ( !\comb_4|ycc|outy\(2) & ( \comb_4|ycc|outy\(0) & ( (\comb_4|ycc|outx\(4) & \comb_4|ycc|outy\(1)) ) ) ) # ( 
-- \comb_4|ycc|outy\(2) & ( !\comb_4|ycc|outy\(0) & ( (!\comb_4|ycc|outx\(4)) # (!\comb_4|ycc|outy\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011101110111000010001000100011100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_4|ycc|ALT_INV_outx\(4),
	datab => \comb_4|ycc|ALT_INV_outy\(1),
	datae => \comb_4|ycc|ALT_INV_outy\(2),
	dataf => \comb_4|ycc|ALT_INV_outy\(0),
	combout => \VGA|user_input_translator|Add0~3_combout\);

-- Location: MLABCELL_X39_Y3_N30
\VGA|user_input_translator|Add0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|user_input_translator|Add0~4_combout\ = ( \comb_4|ycc|outy\(0) & ( (\comb_4|ycc|outy\(1) & \comb_4|ycc|outy\(2)) ) ) # ( !\comb_4|ycc|outy\(0) & ( (\comb_4|ycc|outy\(1) & (\comb_4|ycc|outx\(4) & \comb_4|ycc|outy\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000100000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_4|ycc|ALT_INV_outy\(1),
	datab => \comb_4|ycc|ALT_INV_outx\(4),
	datad => \comb_4|ycc|ALT_INV_outy\(2),
	dataf => \comb_4|ycc|ALT_INV_outy\(0),
	combout => \VGA|user_input_translator|Add0~4_combout\);

-- Location: FF_X42_Y4_N19
\VGA|controller|xCounter[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	d => \VGA|controller|Add0~17_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \VGA|controller|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|controller|xCounter[6]~DUPLICATE_q\);

-- Location: LABCELL_X40_Y2_N0
\comb_4|randcol|pickCol[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_4|randcol|pickCol\(2) = ( \comb_5|newColEn_~combout\ & ( !\comb_4|randn|data\(2) ) ) # ( !\comb_5|newColEn_~combout\ & ( \comb_4|randcol|pickCol\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \comb_4|randn|ALT_INV_data\(2),
	datad => \comb_4|randcol|ALT_INV_pickCol\(2),
	dataf => \comb_5|ALT_INV_newColEn_~combout\,
	combout => \comb_4|randcol|pickCol\(2));

-- Location: LABCELL_X40_Y3_N54
\comb_4|ycc|_Colout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_4|ycc|_Colout~0_combout\ = ( !\comb_5|pres_s.state2~q\ & ( (!\comb_5|gen_~combout\ & (!\comb_5|pres_s.state3~q\ & (\comb_4|randcol|pickCol\(2) & \comb_5|pres_s.reset_s~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_5|ALT_INV_gen_~combout\,
	datab => \comb_5|ALT_INV_pres_s.state3~q\,
	datac => \comb_4|randcol|ALT_INV_pickCol\(2),
	datad => \comb_5|ALT_INV_pres_s.reset_s~q\,
	dataf => \comb_5|ALT_INV_pres_s.state2~q\,
	combout => \comb_4|ycc|_Colout~0_combout\);

-- Location: FF_X40_Y3_N56
\comb_4|ycc|_Colout[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_4|F_F_1|Equal0~combout\,
	d => \comb_4|ycc|_Colout~0_combout\,
	ena => \comb_4|ycc|_Colout[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_4|ycc|_Colout\(2));

-- Location: M10K_X38_Y4_N0
\VGA|VideoMemory|auto_generated|ram_block1a7\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002AAAAAAA00000000000000000000000000000000000000000000000000000000000000000000000AAAAAAAAAA800000000000000000000000000000000000000000000000000000000000000000000AAAAAAAAAAAA80000000000000000000000000000000000000000000000000000000000000000002AAAAAAAAAAAAA000000000000000000000000000000000000000000000000000000000000000000AAAAAAAAAAAAAA80000000000000000",
	mem_init1 => "00000000000000000000000000000000000000000000000032AAAAAAAAAAAAA10000000000000000000000000000000000000000000000000000000000000000FCAAAAAAAAAAAA854000000000000000000000000000000000000000000000000000000000000003FF2AAAAAAAAAAA155000000000000000000000000000000000000000000000000000000000000003FFCAAAAAAAAAA855500000000000000000000000000000000000000000000000000000000000000FFFF2AAAAAAAAA155540000000000000000000000000000000000000000000000000000000000000FFFFCAAAAAAAA8555540000000000000000000000000000000000000000000000",
	mem_init0 => "000000000000003FFFFF2AAAAAAA1555550000000000000000000000000000000000000000000000000000000000003FFFFFCAAAAAA85555550000000000000000000000000000000000000000000000000000000000003FFFFFF2AAAAA1555555000000000000000000000000000000000000000000000000000000000000FFFFFFFCAAAA85555555400000000000000000000000000000000000000000000000000000000000FFFFFFFF2AAA15555555400000000000000000000000000000000000000000000000000000000000FFFFFFFFCAA855555555400000000000000000000000000000000000000000000000000000000000FFFFFFFFF2A1555555",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "blue.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_adapter:VGA|altsyncram:VideoMemory|altsyncram_14m1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 19200,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 2,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 19200,
	port_b_logical_ram_width => 3,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbre => VCC,
	clk0 => \CLOCK_50~inputCLKENA0_outclk\,
	clk1 => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	ena0 => GND,
	ena1 => \VGA|VideoMemory|auto_generated|rden_decode_b|w_anode166w\(2),
	portadatain => \VGA|VideoMemory|auto_generated|ram_block1a7_PORTADATAIN_bus\,
	portaaddr => \VGA|VideoMemory|auto_generated|ram_block1a7_PORTAADDR_bus\,
	portbaddr => \VGA|VideoMemory|auto_generated|ram_block1a7_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \VGA|VideoMemory|auto_generated|ram_block1a7_PORTBDATAOUT_bus\);

-- Location: LABCELL_X37_Y4_N21
\VGA|VideoMemory|auto_generated|rden_decode_b|w_anode157w[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|VideoMemory|auto_generated|rden_decode_b|w_anode157w\(2) = (!\VGA|controller|controller_translator|Add1~5_sumout\ & \VGA|controller|controller_translator|Add1~1_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \VGA|controller|controller_translator|ALT_INV_Add1~5_sumout\,
	datad => \VGA|controller|controller_translator|ALT_INV_Add1~1_sumout\,
	combout => \VGA|VideoMemory|auto_generated|rden_decode_b|w_anode157w\(2));

-- Location: M10K_X38_Y5_N0
\VGA|VideoMemory|auto_generated|ram_block1a5\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "0000000000000000000000000000000FFFFE80000000000000000000000000000000000FFFFF00000000000000000000000000000000000FFFFE00000000000000000000000000000000000FFFFC00000000000000000000000000000000000FFFF800000000000000000000000000000000000FFFF000000000000000000000000000000000000FFFE0000000000000000000000000000000000007FFC0000000000000000000000000000000000007FF80000000000000000000000000000000000007FF00000000000000000000000000000000000003FE00000000000000000000000000000000000003FC00000000000000000000000000000000000001",
	mem_init2 => "F800000000000000000000000000000000000001F000000000000000000000000000000000000000E00000000000000000000000000000000000000040000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "blue.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_adapter:VGA|altsyncram:VideoMemory|altsyncram_14m1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 19200,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 19200,
	port_b_logical_ram_width => 3,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbre => VCC,
	clk0 => \CLOCK_50~inputCLKENA0_outclk\,
	clk1 => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	ena0 => GND,
	ena1 => \VGA|VideoMemory|auto_generated|rden_decode_b|w_anode157w\(2),
	portadatain => \VGA|VideoMemory|auto_generated|ram_block1a5_PORTADATAIN_bus\,
	portaaddr => \VGA|VideoMemory|auto_generated|ram_block1a5_PORTAADDR_bus\,
	portbaddr => \VGA|VideoMemory|auto_generated|ram_block1a5_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \VGA|VideoMemory|auto_generated|ram_block1a5_PORTBDATAOUT_bus\);

-- Location: MLABCELL_X39_Y3_N21
\comb_4|c1|outC[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_4|c1|outC[1]~0_combout\ = ( \comb_5|pres_s.state4~q\ ) # ( !\comb_5|pres_s.state4~q\ & ( (\comb_5|pres_s.state7~q\) # (\comb_5|pres_s.state6~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \comb_5|ALT_INV_pres_s.state6~q\,
	datad => \comb_5|ALT_INV_pres_s.state7~q\,
	dataf => \comb_5|ALT_INV_pres_s.state4~q\,
	combout => \comb_4|c1|outC[1]~0_combout\);

-- Location: LABCELL_X37_Y4_N3
\VGA|VideoMemory|auto_generated|rden_decode_b|w_anode143w[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|VideoMemory|auto_generated|rden_decode_b|w_anode143w\(2) = ( !\VGA|controller|controller_translator|Add1~1_sumout\ & ( !\VGA|controller|controller_translator|Add1~5_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000000000000000000011110000111100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \VGA|controller|controller_translator|ALT_INV_Add1~5_sumout\,
	datae => \VGA|controller|controller_translator|ALT_INV_Add1~1_sumout\,
	combout => \VGA|VideoMemory|auto_generated|rden_decode_b|w_anode143w\(2));

-- Location: M10K_X41_Y5_N0
\VGA|VideoMemory|auto_generated|ram_block1a2\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "blue.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_adapter:VGA|altsyncram:VideoMemory|altsyncram_14m1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 19200,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 19200,
	port_b_logical_ram_width => 3,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \comb_4|c1|outC[1]~0_combout\,
	portbre => VCC,
	clk0 => \CLOCK_50~inputCLKENA0_outclk\,
	clk1 => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	ena0 => \comb_4|c1|outC[1]~0_combout\,
	ena1 => \VGA|VideoMemory|auto_generated|rden_decode_b|w_anode143w\(2),
	portadatain => \VGA|VideoMemory|auto_generated|ram_block1a2_PORTADATAIN_bus\,
	portaaddr => \VGA|VideoMemory|auto_generated|ram_block1a2_PORTAADDR_bus\,
	portbaddr => \VGA|VideoMemory|auto_generated|ram_block1a2_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \VGA|VideoMemory|auto_generated|ram_block1a2_PORTBDATAOUT_bus\);

-- Location: FF_X37_Y4_N29
\VGA|VideoMemory|auto_generated|address_reg_b[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	asdata => \VGA|controller|controller_translator|Add1~5_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|VideoMemory|auto_generated|address_reg_b\(1));

-- Location: FF_X37_Y4_N25
\VGA|VideoMemory|auto_generated|out_address_reg_b[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	asdata => \VGA|VideoMemory|auto_generated|address_reg_b\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|VideoMemory|auto_generated|out_address_reg_b\(1));

-- Location: LABCELL_X37_Y4_N18
\VGA|VideoMemory|auto_generated|mux3|result_node[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|VideoMemory|auto_generated|mux3|result_node[2]~0_combout\ = ( \VGA|VideoMemory|auto_generated|out_address_reg_b\(1) & ( \VGA|VideoMemory|auto_generated|ram_block1a8\ ) ) # ( !\VGA|VideoMemory|auto_generated|out_address_reg_b\(1) & ( 
-- (!\VGA|VideoMemory|auto_generated|out_address_reg_b\(0) & ((\VGA|VideoMemory|auto_generated|ram_block1a2~portbdataout\))) # (\VGA|VideoMemory|auto_generated|out_address_reg_b\(0) & (\VGA|VideoMemory|auto_generated|ram_block1a5~portbdataout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001011010111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|VideoMemory|auto_generated|ALT_INV_out_address_reg_b\(0),
	datab => \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a8\,
	datac => \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a5~portbdataout\,
	datad => \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a2~portbdataout\,
	dataf => \VGA|VideoMemory|auto_generated|ALT_INV_out_address_reg_b\(1),
	combout => \VGA|VideoMemory|auto_generated|mux3|result_node[2]~0_combout\);

-- Location: M10K_X41_Y4_N0
\VGA|VideoMemory|auto_generated|ram_block1a1\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "blue.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_adapter:VGA|altsyncram:VideoMemory|altsyncram_14m1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 19200,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 19200,
	port_b_logical_ram_width => 3,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \comb_4|c1|outC[1]~0_combout\,
	portbre => VCC,
	clk0 => \CLOCK_50~inputCLKENA0_outclk\,
	clk1 => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	ena0 => \comb_4|c1|outC[1]~0_combout\,
	ena1 => \VGA|VideoMemory|auto_generated|rden_decode_b|w_anode143w\(2),
	portadatain => \VGA|VideoMemory|auto_generated|ram_block1a1_PORTADATAIN_bus\,
	portaaddr => \VGA|VideoMemory|auto_generated|ram_block1a1_PORTAADDR_bus\,
	portbaddr => \VGA|VideoMemory|auto_generated|ram_block1a1_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \VGA|VideoMemory|auto_generated|ram_block1a1_PORTBDATAOUT_bus\);

-- Location: M10K_X38_Y3_N0
\VGA|VideoMemory|auto_generated|ram_block1a4\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "F800000000000000000000000000000FFFFE3FFFF800000000000000000000000000000FFFFF7FFFF800000000000000000000000000000FFFFE3FFFF800000000000000000000000000000FFFFC1FFFF800000000000000000000000000000FFFF80FFFF800000000000000000000000000000FFFF007FFF800000000000000000000000000000FFFE003FFF8000000000000000000000000000007FFC001FFF0000000000000000000000000000007FF8000FFF0000000000000000000000000000007FF00007FF0000000000000000000000000000003FE00003FE0000000000000000000000000000003FC00001FE0000000000000000000000000000001",
	mem_init2 => "F800000FC0000000000000000000000000000001F0000007C0000000000000000000000000000000E00000038000000000000000000000000000000040000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "blue.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_adapter:VGA|altsyncram:VideoMemory|altsyncram_14m1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 19200,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 19200,
	port_b_logical_ram_width => 3,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbre => VCC,
	clk0 => \CLOCK_50~inputCLKENA0_outclk\,
	clk1 => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	ena0 => GND,
	ena1 => \VGA|VideoMemory|auto_generated|rden_decode_b|w_anode157w\(2),
	portadatain => \VGA|VideoMemory|auto_generated|ram_block1a4_PORTADATAIN_bus\,
	portaaddr => \VGA|VideoMemory|auto_generated|ram_block1a4_PORTAADDR_bus\,
	portbaddr => \VGA|VideoMemory|auto_generated|ram_block1a4_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \VGA|VideoMemory|auto_generated|ram_block1a4_PORTBDATAOUT_bus\);

-- Location: LABCELL_X37_Y4_N15
\VGA|VideoMemory|auto_generated|mux3|result_node[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|VideoMemory|auto_generated|mux3|result_node[1]~1_combout\ = ( \VGA|VideoMemory|auto_generated|ram_block1a4~portbdataout\ & ( (!\VGA|VideoMemory|auto_generated|out_address_reg_b\(1) & (((\VGA|VideoMemory|auto_generated|ram_block1a1~portbdataout\)) # 
-- (\VGA|VideoMemory|auto_generated|out_address_reg_b\(0)))) # (\VGA|VideoMemory|auto_generated|out_address_reg_b\(1) & (((\VGA|VideoMemory|auto_generated|ram_block1a7~portbdataout\)))) ) ) # ( !\VGA|VideoMemory|auto_generated|ram_block1a4~portbdataout\ & ( 
-- (!\VGA|VideoMemory|auto_generated|out_address_reg_b\(1) & (!\VGA|VideoMemory|auto_generated|out_address_reg_b\(0) & (\VGA|VideoMemory|auto_generated|ram_block1a1~portbdataout\))) # (\VGA|VideoMemory|auto_generated|out_address_reg_b\(1) & 
-- (((\VGA|VideoMemory|auto_generated|ram_block1a7~portbdataout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000111011000010000011101101001100011111110100110001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|VideoMemory|auto_generated|ALT_INV_out_address_reg_b\(0),
	datab => \VGA|VideoMemory|auto_generated|ALT_INV_out_address_reg_b\(1),
	datac => \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a1~portbdataout\,
	datad => \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a7~portbdataout\,
	dataf => \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a4~portbdataout\,
	combout => \VGA|VideoMemory|auto_generated|mux3|result_node[1]~1_combout\);

-- Location: LABCELL_X40_Y2_N51
\comb_4|randcol|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_4|randcol|Mux2~0_combout\ = ( !\comb_4|randn|data\(3) & ( \comb_4|randn|data\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \comb_4|randn|ALT_INV_data\(2),
	dataf => \comb_4|randn|ALT_INV_data\(3),
	combout => \comb_4|randcol|Mux2~0_combout\);

-- Location: LABCELL_X40_Y2_N30
\comb_4|randcol|pickCol[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_4|randcol|pickCol\(0) = ( \comb_4|randcol|Mux2~0_combout\ & ( (\comb_4|randcol|pickCol\(0)) # (\comb_5|newColEn_~combout\) ) ) # ( !\comb_4|randcol|Mux2~0_combout\ & ( (!\comb_5|newColEn_~combout\ & \comb_4|randcol|pickCol\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \comb_5|ALT_INV_newColEn_~combout\,
	datac => \comb_4|randcol|ALT_INV_pickCol\(0),
	dataf => \comb_4|randcol|ALT_INV_Mux2~0_combout\,
	combout => \comb_4|randcol|pickCol\(0));

-- Location: MLABCELL_X39_Y3_N6
\comb_4|ycc|_Colout~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_4|ycc|_Colout~3_combout\ = ( !\comb_5|pres_s.state2~q\ & ( (!\comb_5|gen_~combout\ & (\comb_4|randcol|pickCol\(0) & (!\comb_5|pres_s.state3~q\ & \comb_5|pres_s.reset_s~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_5|ALT_INV_gen_~combout\,
	datab => \comb_4|randcol|ALT_INV_pickCol\(0),
	datac => \comb_5|ALT_INV_pres_s.state3~q\,
	datad => \comb_5|ALT_INV_pres_s.reset_s~q\,
	dataf => \comb_5|ALT_INV_pres_s.state2~q\,
	combout => \comb_4|ycc|_Colout~3_combout\);

-- Location: FF_X40_Y3_N2
\comb_4|ycc|_Colout[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_4|F_F_1|Equal0~combout\,
	asdata => \comb_4|ycc|_Colout~3_combout\,
	sload => VCC,
	ena => \comb_4|ycc|_Colout[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_4|ycc|_Colout\(0));

-- Location: M10K_X41_Y2_N0
\VGA|VideoMemory|auto_generated|ram_block1a0\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "blue.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_adapter:VGA|altsyncram:VideoMemory|altsyncram_14m1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 19200,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 19200,
	port_b_logical_ram_width => 3,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \comb_4|c1|outC[1]~0_combout\,
	portbre => VCC,
	clk0 => \CLOCK_50~inputCLKENA0_outclk\,
	clk1 => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	ena0 => \comb_4|c1|outC[1]~0_combout\,
	ena1 => \VGA|VideoMemory|auto_generated|rden_decode_b|w_anode143w\(2),
	portadatain => \VGA|VideoMemory|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \VGA|VideoMemory|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \VGA|VideoMemory|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \VGA|VideoMemory|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: M10K_X38_Y2_N0
\VGA|VideoMemory|auto_generated|ram_block1a6\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "blue.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_adapter:VGA|altsyncram:VideoMemory|altsyncram_14m1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 19200,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 2,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 19200,
	port_b_logical_ram_width => 3,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbre => VCC,
	clk0 => \CLOCK_50~inputCLKENA0_outclk\,
	clk1 => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	ena0 => GND,
	ena1 => \VGA|VideoMemory|auto_generated|rden_decode_b|w_anode166w\(2),
	portadatain => \VGA|VideoMemory|auto_generated|ram_block1a6_PORTADATAIN_bus\,
	portaaddr => \VGA|VideoMemory|auto_generated|ram_block1a6_PORTAADDR_bus\,
	portbaddr => \VGA|VideoMemory|auto_generated|ram_block1a6_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \VGA|VideoMemory|auto_generated|ram_block1a6_PORTBDATAOUT_bus\);

-- Location: M10K_X41_Y3_N0
\VGA|VideoMemory|auto_generated|ram_block1a3\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000000000000000000000000000000000000001C000000000000000000000000000000000000003E000000000000000000000000000000000000007F00000000000000000000000000000000000000FF80000000000000000000000000000000000001FFC0000000000000000000000000000000000003FFE0000000000000000000000000000000000007FFF000000000000000000000000000000000000FFFF800000000000000000000000000000000001FFFFC000000000000000000000000000000000",
	mem_init2 => "03FFFFE00000000000000000000000000000000007FFFFF0000000000000000000000000000000000FFFFFF8000000000000000000000000000000001FFFFFFC000000000000000000000000000000003FFFFFFE000000000000000000000000000000003FFFFFFE000000000000000000000000000000001FFFFFFC0000000000000000000000000000000007FFFFF00000000000000000000000000000000003FFFFE000000000000000000000000000000000007FFF00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "blue.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_adapter:VGA|altsyncram:VideoMemory|altsyncram_14m1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 19200,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 19200,
	port_b_logical_ram_width => 3,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbre => VCC,
	clk0 => \CLOCK_50~inputCLKENA0_outclk\,
	clk1 => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	ena0 => GND,
	ena1 => \VGA|VideoMemory|auto_generated|rden_decode_b|w_anode157w\(2),
	portadatain => \VGA|VideoMemory|auto_generated|ram_block1a3_PORTADATAIN_bus\,
	portaaddr => \VGA|VideoMemory|auto_generated|ram_block1a3_PORTAADDR_bus\,
	portbaddr => \VGA|VideoMemory|auto_generated|ram_block1a3_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \VGA|VideoMemory|auto_generated|ram_block1a3_PORTBDATAOUT_bus\);

-- Location: LABCELL_X37_Y4_N12
\VGA|VideoMemory|auto_generated|mux3|result_node[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|VideoMemory|auto_generated|mux3|result_node[0]~2_combout\ = ( \VGA|VideoMemory|auto_generated|ram_block1a3~portbdataout\ & ( (!\VGA|VideoMemory|auto_generated|out_address_reg_b\(1) & (((\VGA|VideoMemory|auto_generated|ram_block1a0~portbdataout\)) # 
-- (\VGA|VideoMemory|auto_generated|out_address_reg_b\(0)))) # (\VGA|VideoMemory|auto_generated|out_address_reg_b\(1) & (((\VGA|VideoMemory|auto_generated|ram_block1a6~portbdataout\)))) ) ) # ( !\VGA|VideoMemory|auto_generated|ram_block1a3~portbdataout\ & ( 
-- (!\VGA|VideoMemory|auto_generated|out_address_reg_b\(1) & (!\VGA|VideoMemory|auto_generated|out_address_reg_b\(0) & (\VGA|VideoMemory|auto_generated|ram_block1a0~portbdataout\))) # (\VGA|VideoMemory|auto_generated|out_address_reg_b\(1) & 
-- (((\VGA|VideoMemory|auto_generated|ram_block1a6~portbdataout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000111011000010000011101101001100011111110100110001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|VideoMemory|auto_generated|ALT_INV_out_address_reg_b\(0),
	datab => \VGA|VideoMemory|auto_generated|ALT_INV_out_address_reg_b\(1),
	datac => \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a0~portbdataout\,
	datad => \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a6~portbdataout\,
	dataf => \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a3~portbdataout\,
	combout => \VGA|VideoMemory|auto_generated|mux3|result_node[0]~2_combout\);

-- Location: IOIBUF_X12_Y0_N18
\SW[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\SW[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X8_Y0_N35
\SW[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X4_Y0_N52
\SW[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X2_Y0_N41
\SW[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X16_Y0_N18
\SW[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: IOIBUF_X4_Y0_N35
\SW[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: IOIBUF_X4_Y0_N1
\SW[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: IOIBUF_X4_Y0_N18
\SW[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: IOIBUF_X2_Y0_N58
\SW[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);


pll_reconfig_inst_tasks : altera_pll_reconfig_tasks
-- pragma translate_off
GENERIC MAP (
      number_of_fplls => 1);
-- pragma translate_on
END structure;



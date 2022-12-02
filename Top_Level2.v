// Copyright (C) 2018  Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License 
// Subscription Agreement, the Intel Quartus Prime License Agreement,
// the Intel FPGA IP License Agreement, or other applicable license
// agreement, including, without limitation, that your use is for
// the sole purpose of programming logic devices manufactured by
// Intel and sold by Intel or its authorized distributors.  Please
// refer to the applicable agreement for further details.

// PROGRAM		"Quartus Prime"
// VERSION		"Version 18.0.0 Build 614 04/24/2018 SJ Lite Edition"
// CREATED		"Thu Dec 01 18:25:30 2022"

module Top_Level2(
	Data,
	Clock,
	CLK,
	out,
	LED
);


input wire	Data;
input wire	Clock;
input wire	CLK;
output wire	out;
output wire	LED;

wire	wire_1;
wire	wire_2;
wire	[16:0] y;
wire	SYNTHESIZED_WIRE_7;
wire	[16:0] SYNTHESIZED_WIRE_8;
wire	[16:0] SYNTHESIZED_WIRE_3;
wire	[7:0] SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_6;





SIPO2	b2v_inst(
	.in(Data),
	.clk(Clock),
	
	.out(SYNTHESIZED_WIRE_4));
	defparam	b2v_inst.N = 10;

assign	wire_2 =  ~SYNTHESIZED_WIRE_7;


comparator	b2v_inst14(
	.a(SYNTHESIZED_WIRE_8),
	.c(y),
	
	
	
	.lte(SYNTHESIZED_WIRE_6)
	
	);
	defparam	b2v_inst14.F = 1;
	defparam	b2v_inst14.M = 17;
	defparam	b2v_inst14.N = 17;


comparator	b2v_inst15(
	.a(SYNTHESIZED_WIRE_8),
	.c(y),
	
	
	
	
	
	.gte(wire_1));
	defparam	b2v_inst15.F = 2;
	defparam	b2v_inst15.M = 17;
	defparam	b2v_inst15.N = 17;


comparator	b2v_inst16(
	.a(SYNTHESIZED_WIRE_3),
	.c(y),
	
	
	
	.lte(SYNTHESIZED_WIRE_7)
	
	);
	defparam	b2v_inst16.F = 2;
	defparam	b2v_inst16.M = 17;
	defparam	b2v_inst16.N = 17;


counter	b2v_inst3(
	.clk(CLK),
	.reset(wire_1),
	.q(SYNTHESIZED_WIRE_8));
	defparam	b2v_inst3.N = 17;


counter	b2v_inst5(
	.clk(CLK),
	.reset(wire_2),
	.q(SYNTHESIZED_WIRE_3));
	defparam	b2v_inst5.N = 17;


decoder	b2v_inst8(
	.in(SYNTHESIZED_WIRE_4),
	.y(y));
	defparam	b2v_inst8.M = 10;
	defparam	b2v_inst8.N = 8;


clr_mux	b2v_inst9(
	.d0(SYNTHESIZED_WIRE_7),
	.sel(SYNTHESIZED_WIRE_6),
	.d1(wire_1),
	.y(out));


endmodule

`timescale 1ns/1ps

module test;

reg CLOCK_sig;
reg i_sel_sig;
reg [15:0] IWDG_KR_sig;
reg aCore_signal_sig;
wire Reset_signal_sig;

IWDG IWDG_inst
(
	.CLOCK(CLOCK_sig) ,	// input  CLOCK_sig
	.i_sel(i_sel_sig) ,	// input  i_sel_sig
	.IWDG_KR(IWDG_KR_sig) ,	// input [15:0] IWDG_KR_sig
	.aCore_signal(aCore_signal_sig) ,	// input  aCore_signal_sig
	.i_arstn(i_arstn_sig) ,	// input  i_arstn_sig
	.Reset_signal(Reset_signal_sig) 	// output  Reset_signal_sig
);

initial begin 
	i_sel_sig = 0;
	aCore_signal_sig = 0;
	IWDG_KR_sig = 16'hCCCC;
	
end

initial begin
	CLOCK_sig = 1'b0;
	forever #1 CLOCK_sig = ~CLOCK_sig;
end
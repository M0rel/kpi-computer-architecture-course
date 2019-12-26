`timescale 1ns/1ps
// Copyright (C) 1991-2013 Altera Corporation
// Your use of Altera Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Altera Program License 
// Subscription Agreement, Altera MegaCore Function License 
// Agreement, or other applicable license agreement, including, 
// without limitation, that your use is for the sole purpose of 
// programming logic devices manufactured by Altera and sold by 
// Altera or its authorized distributors.  Please refer to the 
// applicable agreement for further details.
// Generated by Quartus II 64-Bit Version 13.0 (Build Build 232 06/12/2013)
// Created on Tue Oct  1 06:35:09 2019

module alu_tb;

reg [31:0]A_sig;
reg [31:0]B_sig;
reg [7:0]operation_sig;
wire zf_sig;
wire [31:0]resault_sig;
wire of_sig;

ALU ALU_inst
(
	.A(A_sig) ,	// input [WIDTH-1:0] A_sig
	.B(B_sig) ,	// input [WIDTH-1:0] B_sig
	.operation(operation_sig) ,	// input [7:0] operation_sig
	.zf(zf_sig) ,	// output  zf_sig
	.resault(resault_sig) ,	// output [WIDTH-1:0] resault_sig
	.of(of_sig) 	// output  of_sig
);

defparam ALU_inst.WIDTH = 32;  

initial begin 		
	A_sig = 32'h6abc56f0;
	B_sig = 32'h4def67f1;
	    operation_sig = 8'b10111000;    //add	
	#10 operation_sig = 8'b10111001;    //sub
    	#10 operation_sig = 8'b11000000;    //and
	#10 operation_sig = 8'b11010000;    //or
	#10 operation_sig = 8'b11001000;    //nor
	#10 operation_sig = 8'b11011000;    //xor
	#10 A_sig = 32'h00000100;
	    B_sig = 32'h00000080;
	    operation_sig = 8'b10000000;    //mul low
	#10 operation_sig = 8'b10001000;    //mul high
	#10 A_sig = 32'h00008055;
	    B_sig = 32'h00000080;
	    operation_sig = 8'b10010000;    //div 
	#10 operation_sig = 8'b10011000;    //rest
	#10 A_sig = 32'h00000004;
	    B_sig = 32'h8def67f1;
	    operation_sig = 8'b00000000;    //SLL    
	#10 operation_sig = 8'b00010000;    //SRL   
	#10 operation_sig = 8'b00001000;    //ROL   
	#10 operation_sig = 8'b00011000;    //ROR   
	#10 operation_sig = 8'b00110000;    //SRA   
end		
initial begin 
 	#150 $stop();
end

endmodule
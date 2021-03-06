// Generated by Quartus II 64-Bit Version 13.0 (Build Build 232 06/12/2013)
// Created on Sun Sep 22 20:46:35 2019

`timescale 1ns/1ps

module barrel_shifter_test;

reg  [2:0] bs_opsel_sig;
reg  [4:0] shift_amount_sig;
reg  [31:0] data_in_sig ;
wire [31:0] result_sig;

integer i = 0;

lab3_barrel_shifter lab3_barrel_shifter_inst(
	.bs_opsel(bs_opsel_sig) ,	// input [2:0] bs_opsel_sig
	.shift_amount(shift_amount_sig) ,	// input [4:0] shift_amount_sig
	.data_in(data_in_sig) ,	// input [31:0] data_in_sig
	.result(result_sig) 	// output [31:0] result_sig
);

initial begin 

  data_in_sig= 32'habcdabcd;
  bs_opsel_sig = 0;
  shift_amount_sig = 0;
  #10 shift_amount_sig = 5'h4;

  for (i = 0; i <= 7; i++) begin 
    #10 bs_opsel_sig = 3'(i);      //create by Vadim Charchuk
  end

end

initial begin 
	#400 $stop();
end

endmodule


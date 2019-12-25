`timescale 1ns/1ps
module IWDG (CLOCK, i_sel,IWDG_KR,aCore_signal,Reset_signal);

input CLOCK;
input i_sel; 
input [15:0] IWDG_KR;  //0xCCCC
input aCore_signal;
output reg Reset_signal;

reg comp_status;

reg [15:0] Reg_data;
//reg [11:0] counter_dat;
reg rst_status;



wire Counter_clock;

wire    clock_en = (comp_status & Counter_clock);
					 
mux mux_1(.i_sel(i_sel),
			 .i_dat0(CLOCK),
			 .i_dat1(1'b0),
			 .o_dat(Counter_clock)
			);

counter couter_c(.sys_clk(clock_en),
					  .sys_rst(aCore_signal),
					  .cnt(Counter_dat)
					 );
					 
	always @ (posedge CLOCK)
begin
	Reg_data <= IWDG_KR;
	if (Reg_data == 16'hCCCC)
		begin
			comp_status <= 1'b1;
		end else begin
			comp_status <= 1'b0;
		end 
end		

always @ (posedge clock_en, negedge aCore_signal) begin
	if(!aCore_signal)begin
		Reset_signal <= 0;
	end else begin
		Reset_signal <=!Counter_dat;
		end
end			 
	
				 
endmodule


// Update the register output on the clock's rising edge


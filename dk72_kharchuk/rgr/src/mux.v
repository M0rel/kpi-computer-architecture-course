module mux(i_dat0, i_dat1, i_sel, o_dat);

parameter WIDTH = 1;

input       i_sel;
input       [WIDTH-1:0]  i_dat0, i_dat1;
output reg  [WIDTH-1:0]  o_dat;

always @* begin

    o_dat = 0;

    case (i_sel)

    1'b0: o_dat = i_dat0;

    1'b1: o_dat = i_dat1;

    endcase

end

endmodule
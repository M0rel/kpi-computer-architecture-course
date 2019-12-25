module counter(sys_clk,sys_rst,cnt);

input   sys_clk;
input sys_rst;

output reg     [11:0] cnt;


always @(posedge sys_clk, negedge sys_rst) begin
    if(~sys_rst) begin
        cnt <= 12'hFFF;
    end else begin
        cnt <= cnt - 1'b1;
    end
end


endmodule
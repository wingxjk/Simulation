`timescale 1ns/1ps;

module tb_count();
reg clk;
wire [24:0] N;
wire out;


initial 
begin
  clk = 1'b1;
  
end

/* 
always@(*)
begin
    #1  clk=~clk;
end
*/

always #5 clk =~clk;

count u0(.clk(clk),.N(N),.out(out));
endmodule
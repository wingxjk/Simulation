`timescale 1ns/1ps;


module count(clk,N,out);
input clk;
output reg [24:0] N;
output reg out;

//reg [24:0] value;
initial 
begin
    N = 25'd0;
    out = 1'b0;

end

always@(posedge clk or negedge clk)
begin
    if(N==25'd10000)
    begin    
        N = 25'd0;
        out = ~out;
    end
    else
        N = N + 1;


end

//assign N = value;

endmodule



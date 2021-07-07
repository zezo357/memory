`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/14/2021 01:43:00 PM
// Design Name: 
// Module Name: memory
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module mem(clk,readdata,address,readsignal,writesignal,writedata);
input clk,writesignal,readsignal;
input [31:0] address,writedata;
output reg [31:0] readdata;
reg [31:0] memorycells[0:255];
integer index;
initial
begin
for(index=0;index<=255;index=index+1)
begin
memorycells[index]<=index;
end
end
always@(posedge clk)
begin 
if(writesignal)
memorycells[address]<=writedata;
end

always@(posedge clk)
begin 
if(readsignal)
readdata<=memorycells[address];
end
endmodule

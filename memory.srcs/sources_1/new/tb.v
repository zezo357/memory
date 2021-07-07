`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/14/2021 01:56:24 PM
// Design Name: 
// Module Name: tb
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

module tb();
reg clk,writesignal,readsignal;
reg [31:0] address,writedata;
wire [31:0] readdata;
mem m(clk,readdata,address,readsignal,writesignal,writedata);
initial
begin
clk=0;
while(1)
begin
#5
clk=~clk;
end
end
initial
begin
readsignal=1;
address=32'd5;
#20
writesignal=1;
writedata<=32'd2156;
address=5'd0;
#10
readsignal=1;
address=32'd0;
end
endmodule
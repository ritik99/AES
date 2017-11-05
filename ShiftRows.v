`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:54:04 10/22/2017 
// Design Name: 
// Module Name:    ShiftRows 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module ShiftRows(data,out, clk);
input [127:0] data;
input clk;
output reg [127:0] out;
reg [31:0] t0, t1, t2, t3;
reg [31:0] ws0, ws1, ws2, ws3;

always@(posedge clk)
begin
t0 = data[127:096];
t1 = data[095 : 064];
t2 = data[063 : 032];
t3 = data[031 : 000];

ws0 = {t0[31 : 24], t1[23 : 16], t2[15 : 08], t3[07 : 00]};
ws1 = {t1[31 : 24], t2[23 : 16], t3[15 : 08], t0[07 : 00]};
ws2 = {t2[31 : 24], t3[23 : 16], t0[15 : 08], t1[07 : 00]};
ws3 = {t3[31 : 24], t0[23 : 16], t1[15 : 08], t2[07 : 00]};

out = {ws0, ws1, ws2, ws3};
end
endmodule

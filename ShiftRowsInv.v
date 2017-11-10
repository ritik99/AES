`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:16:29 10/22/2017 
// Design Name: 
// Module Name:    ShiftRowsInv 
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
module ShiftRowsInv(input [127 : 0] data, output reg [127:0] inv_shiftrows);
    reg [31 : 0] w0, w1, w2, w3;
    reg [31 : 0] ws0, ws1, ws2, ws3;
	 always
	 begin
      w0 = data[127 : 096];
      w1 = data[095 : 064];
      w2 = data[063 : 032];
      w3 = data[031 : 000];

      ws0 = {w0[31 : 24], w3[23 : 16], w2[15 : 08], w1[07 : 00]};
      ws1 = {w1[31 : 24], w0[23 : 16], w3[15 : 08], w2[07 : 00]};
      ws2 = {w2[31 : 24], w1[23 : 16], w0[15 : 08], w3[07 : 00]};
      ws3 = {w3[31 : 24], w2[23 : 16], w1[15 : 08], w0[07 : 00]};

      inv_shiftrows = {ws0, ws1, ws2, ws3};
		end
endmodule // addroundkey

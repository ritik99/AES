`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:08:49 10/22/2017 
// Design Name: 
// Module Name:    AddRoundKey 
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
module addroundkey(input [127 : 0] data, output [127:0] out, input [127:0] key, input clk);

generate
genvar i;
for(i = 0; i < 128; i = i + 1)
begin: h
assign out[i] = data[i]^key[i];
end
endgenerate
endmodule

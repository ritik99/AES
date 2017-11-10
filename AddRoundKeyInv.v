`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:05:08 10/22/2017 
// Design Name: 
// Module Name:    AddRoundKeyInv 
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
function [127 : 0] addroundkey(input [127 : 0] data, input [127 : 0] rkey);
    begin
      addroundkey = data ^ rkey;
    end
endfunction // addroundkey

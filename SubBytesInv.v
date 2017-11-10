`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:38:46 10/22/2017 
// Design Name: 
// Module Name:    SubBytesInv 
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
module SubBytes(input [127:0] data, output reg [127:0] out);
	
	function [7:0] invsbox;
	input[7:0] address;
	begin
		case (address)
			8'h63 : invsbox = 8'h0;
			8'h7C : invsbox = 8'h1;
			8'h77 : invsbox = 8'h77;
			8'h7B : invsbox = 8'h7B;
			8'hF2 : invsbox = 8'hF2;
			8'h6B : invsbox = 8'h6B;
			8'h6F : invsbox = 8'h6F;
			8'hC5 : invsbox = 8'hC5;
			8'h30 : invsbox = 8'h30;
			8'h1 : invsbox = 8'h1;
			8'h67 : invsbox = 8'h67;
			8'h2B : invsbox = 8'h2B;
			8'hFE : invsbox = 8'hFE;
			8'hD7 : invsbox = 8'hD7;
			8'hAB : invsbox = 8'hAB;
			8'h76 : invsbox = 8'h76;
			8'hCA : invsbox = 8'hCA;
			8'h82 : invsbox = 8'h82;
			8'hC9 : invsbox = 8'hC9;
			8'h7D : invsbox = 8'h7D;
			8'hFA : invsbox = 8'hFA;
			8'h59 : invsbox = 8'h59;
			8'h47 : invsbox = 8'h47;
			8'hF0 : invsbox = 8'hF0;
			8'hAD : invsbox = 8'hAD;
			8'hD4 : invsbox = 8'hD4;
			8'hA2 : invsbox = 8'hA2;
			8'hAF : invsbox = 8'hAF;
			8'h9C : invsbox = 8'h9C;
			8'hA4 : invsbox = 8'hA4;
			8'h72 : invsbox = 8'h72;
			8'hC0 : invsbox = 8'hC0;
			8'hB7 : invsbox = 8'hB7;
			8'hFD : invsbox = 8'hFD;
			8'h93 : invsbox = 8'h93;
			8'h26 : invsbox = 8'h26;
			8'h36 : invsbox = 8'h36;
			8'h3F : invsbox = 8'h3F;
			8'hF7 : invsbox = 8'hF7;
			8'hCC : invsbox = 8'hCC;
			8'h34 : invsbox = 8'h34;
			8'hA5 : invsbox = 8'hA5;
			8'hE5 : invsbox = 8'hE5;
			8'hF1 : invsbox = 8'hF1;
			8'h71 : invsbox = 8'h71;
			8'hD8 : invsbox = 8'hD8;
			8'h31 : invsbox = 8'h31;
			8'h15 : invsbox = 8'h15;
			8'h4 : invsbox = 8'h4;
			8'hC7 : invsbox = 8'hC7;
			8'h23 : invsbox = 8'h23;
			8'hC3 : invsbox = 8'hC3;
			8'h18 : invsbox = 8'h18;
			8'h96 : invsbox = 8'h96;
			8'h5 : invsbox = 8'h5;
			8'h9A : invsbox = 8'h9A;
			8'h7 : invsbox = 8'h7;
			8'h12 : invsbox = 8'h12;
			8'h80 : invsbox = 8'h80;
			8'hE2 : invsbox = 8'hE2;
			8'hEB : invsbox = 8'hEB;
			8'h27 : invsbox = 8'h27;
			8'hB2 : invsbox = 8'hB2;
			8'h75 : invsbox = 8'h75;
			8'h9 : invsbox = 8'h9;
			8'h83 : invsbox = 8'h83;
			8'h2C : invsbox = 8'h2C;
			8'h1A : invsbox = 8'h1A;
			8'h1B : invsbox = 8'h1B;
			8'h6E : invsbox = 8'h6E;
			8'h5A : invsbox = 8'h5A;
			8'hA0 : invsbox = 8'hA0;
			8'h52 : invsbox = 8'h52;
			8'h3B : invsbox = 8'h3B;
			8'hD6 : invsbox = 8'hD6;
			8'hB3 : invsbox = 8'hB3;
			8'h29 : invsbox = 8'h29;
			8'hE3 : invsbox = 8'hE3;
			8'h2F : invsbox = 8'h2F;
			8'h84 : invsbox = 8'h84;
			8'h53 : invsbox = 8'h53;
			8'hD1 : invsbox = 8'hD1;
			8'h0 : invsbox = 8'h0;
			8'hED : invsbox = 8'hED;
			8'h20 : invsbox = 8'h20;
			8'hFC : invsbox = 8'hFC;
			8'hB1 : invsbox = 8'hB1;
			8'h5B : invsbox = 8'h5B;
			8'h6A : invsbox = 8'h6A;
			8'hCB : invsbox = 8'hCB;
			8'hBE : invsbox = 8'hBE;
			8'h39 : invsbox = 8'h39;
			8'h4A : invsbox = 8'h4A;
			8'h4C : invsbox = 8'h4C;
			8'h58 : invsbox = 8'h58;
			8'hCF : invsbox = 8'hCF;
			8'hD0 : invsbox = 8'hD0;
			8'hEF : invsbox = 8'hEF;
			8'hAA : invsbox = 8'hAA;
			8'hFB : invsbox = 8'hFB;
			8'h43 : invsbox = 8'h43;
			8'h4D : invsbox = 8'h4D;
			8'h33 : invsbox = 8'h33;
			8'h85 : invsbox = 8'h85;
			8'h45 : invsbox = 8'h45;
			8'hF9 : invsbox = 8'hF9;
			8'h2 : invsbox = 8'h2;
			8'h7F : invsbox = 8'h7F;
			8'h50 : invsbox = 8'h50;
			8'h3C : invsbox = 8'h3C;
			8'h9F : invsbox = 8'h9F;
			8'hA8 : invsbox = 8'hA8;
			8'h51 : invsbox = 8'h51;
			8'hA3 : invsbox = 8'hA3;
			8'h40 : invsbox = 8'h40;
			8'h8F : invsbox = 8'h8F;
			8'h92 : invsbox = 8'h92;
			8'h9D : invsbox = 8'h9D;
			8'h38 : invsbox = 8'h38;
			8'hF5 : invsbox = 8'hF5;
			8'hBC : invsbox = 8'hBC;
			8'hB6 : invsbox = 8'hB6;
			8'hDA : invsbox = 8'hDA;
			8'h21 : invsbox = 8'h21;
			8'h10 : invsbox = 8'h10;
			8'hFF : invsbox = 8'hFF;
			8'hF3 : invsbox = 8'hF3;
			8'hD2 : invsbox = 8'hD2;
			8'hCD : invsbox = 8'hCD;
			8'hC : invsbox = 8'hC;
			8'h13 : invsbox = 8'h13;
			8'hEC : invsbox = 8'hEC;
			8'h5F : invsbox = 8'h5F;
			8'h97 : invsbox = 8'h97;
			8'h44 : invsbox = 8'h44;
			8'h17 : invsbox = 8'h17;
			8'hC4 : invsbox = 8'hC4;
			8'hA7 : invsbox = 8'hA7;
			8'h7E : invsbox = 8'h7E;
			8'h3D : invsbox = 8'h3D;
			8'h64 : invsbox = 8'h64;
			8'h5D : invsbox = 8'h5D;
			8'h19 : invsbox = 8'h19;
			8'h73 : invsbox = 8'h73;
			8'h60 : invsbox = 8'h60;
			8'h81 : invsbox = 8'h81;
			8'h4F : invsbox = 8'h4F;
			8'hDC : invsbox = 8'hDC;
			8'h22 : invsbox = 8'h22;
			8'h2A : invsbox = 8'h2A;
			8'h90 : invsbox = 8'h90;
			8'h88 : invsbox = 8'h88;
			8'h46 : invsbox = 8'h46;
			8'hEE : invsbox = 8'hEE;
			8'hB8 : invsbox = 8'hB8;
			8'h14 : invsbox = 8'h14;
			8'hDE : invsbox = 8'hDE;
			8'h5E : invsbox = 8'h5E;
			8'hB : invsbox = 8'hB;
			8'hDB : invsbox = 8'hDB;
			8'hE0 : invsbox = 8'hE0;
			8'h32 : invsbox = 8'h32;
			8'h3A : invsbox = 8'h3A;
			8'hA : invsbox = 8'hA;
			8'h49 : invsbox = 8'h49;
			8'h6 : invsbox = 8'h6;
			8'h24 : invsbox = 8'h24;
			8'h5C : invsbox = 8'h5C;
			8'hC2 : invsbox = 8'hC2;
			8'hD3 : invsbox = 8'hD3;
			8'hAC : invsbox = 8'hAC;
			8'h62 : invsbox = 8'h62;
			8'h91 : invsbox = 8'h91;
			8'h95 : invsbox = 8'h95;
			8'hE4 : invsbox = 8'hE4;
			8'h79 : invsbox = 8'h79;
			8'hE7 : invsbox = 8'hE7;
			8'hC8 : invsbox = 8'hC8;
			8'h37 : invsbox = 8'h37;
			8'h6D : invsbox = 8'h6D;
			8'h8D : invsbox = 8'h8D;
			8'hD5 : invsbox = 8'hD5;
			8'h4E : invsbox = 8'h4E;
			8'hA9 : invsbox = 8'hA9;
			8'h6C : invsbox = 8'h6C;
			8'h56 : invsbox = 8'h56;
			8'hF4 : invsbox = 8'hF4;
			8'hEA : invsbox = 8'hEA;
			8'h65 : invsbox = 8'h65;
			8'h7A : invsbox = 8'h7A;
			8'hAE : invsbox = 8'hAE;
			8'h8 : invsbox = 8'h8;
			8'hBA : invsbox = 8'hBA;
			8'h78 : invsbox = 8'h78;
			8'h25 : invsbox = 8'h25;
			8'h2E : invsbox = 8'h2E;
			8'h1C : invsbox = 8'h1C;
			8'hA6 : invsbox = 8'hA6;
			8'hB4 : invsbox = 8'hB4;
			8'hC6 : invsbox = 8'hC6;
			8'hE8 : invsbox = 8'hE8;
			8'hDD : invsbox = 8'hDD;
			8'h74 : invsbox = 8'h74;
			8'h1F : invsbox = 8'h1F;
			8'h4B : invsbox = 8'h4B;
			8'hBd : invsbox = 8'hBD;
			8'h8B : invsbox = 8'h8B;
			8'h8A : invsbox = 8'h8A;
			8'h70 : invsbox = 8'h70;
			8'h3E : invsbox = 8'h3E;
			8'hB5 : invsbox = 8'hB5;
			8'h66 : invsbox = 8'h66;
			8'h48 : invsbox = 8'h48;
			8'h3 : invsbox = 8'h3;
			8'hF6 : invsbox = 8'hF6;
			8'hE : invsbox = 8'hE;
			8'h61 : invsbox = 8'h61;
			8'h35 : invsbox = 8'h35;
			8'h57 : invsbox = 8'h57;
			8'hB9 : invsbox = 8'hB9;
			8'h86 : invsbox = 8'h86;
			8'hC1 : invsbox = 8'hC1;
			8'h1D : invsbox = 8'h1D;
			8'h9E : invsbox = 8'h9E;
			8'hE1 : invsbox = 8'hE1;
			8'hF8 : invsbox = 8'hF8;
			8'h98 : invsbox = 8'h98;
			8'h11 : invsbox = 8'h11;
			8'h69 : invsbox = 8'h69;
			8'hD9 : invsbox = 8'hD9;
			8'h8E : invsbox = 8'h8E;
			8'h94 : invsbox = 8'h94;
			8'h9B : invsbox = 8'h9B;
			8'h1E : invsbox = 8'h1E;
			8'h87 : invsbox = 8'h87;
			8'hE9 : invsbox = 8'hE9;
			8'hCE : invsbox = 8'hCE;
			8'h55 : invsbox = 8'h55;
			8'h28 : invsbox = 8'h28;
			8'hDF : invsbox = 8'hDF;
			8'h8C : invsbox = 8'h8C;
			8'hA1 : invsbox = 8'hA1;
			8'h89 : invsbox = 8'h89;
			8'hD : invsbox = 8'hD;
			8'hBF : invsbox = 8'hBF;
			8'hE6 : invsbox = 8'hE6;
			8'h42 : invsbox = 8'h42;
			8'h68 : invsbox = 8'h68;
			8'h41 : invsbox = 8'h41;
			8'h99 : invsbox = 8'h99;
			8'h2D : invsbox = 8'h2D;
			8'hF : invsbox = 8'hF;
			8'hB0 : invsbox = 8'hB0;
			8'h54 : invsbox = 8'h54;
			8'hBB : invsbox = 8'hBB;
			8'h16 : invsbox = 8'h16;
			default : invsbox = 8'h0;
		endcase
	end
	endfunction
	
	
	genvar i;
	generate
	reg [127:0] t;
	assign out = t;
	wire [7:0] q[15:0];
	for(i = 0; i < 16; i = i + 1)
		begin: h1
		q[8*(i+1) - 1 : 8*i] = invsbox(data[7:0]);
		end
	endgenerate
endmodule 
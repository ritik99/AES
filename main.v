`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:48:45 10/22/2017 
// Design Name: 
// Module Name:    main 
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
  
module main(input [127:0] data, input [127:0] round_key, input [127:0] master_key, output [127:0] out, input clk);

integer i = 1;
/*wire [127:0] temp;
assign temp = data;
wire [127:0] t0[;
wire [127:0] t1;
wire [127:0] t2;
//wire [127:0] t3;
wire [127:0] t4;
wire [127:0] t5;
wire [127:0] t6;
wire [127:0] t7;*/
wire [127:0] SB_out [10:0];
wire [127:0] SR_out [10:0];
wire [127:0] MX_out [10:0];
wire [127:0] AR_out [10:0];
wire [127:0] KE_out [10:0];
//wire [127:0] t8;

wire [127:0] temp_key [11:0];
//integer j;
assign KE_out[0] = master_key;
addroundkey aRK1(data, AR_out[0], KE_out[0], clk);
Key_Expansion KE1(KE_out[0], KE_out[1], 1, clk);

genvar j;
generate
for(j = 1; j <= 9; j = j + 1)
begin: h
Byte_Sub SB1(AR_out[j-1], SB_out[j], clk);
ShiftRows SR1(SB_out[j], SR_out[j], clk);
MixColumns MX1(SR_out[j], MX_out[j], clk);
addroundkey aRK2(MX_out[j], AR_out[j], KE_out[j], clk);
Key_Expansion ke(KE_out[j], KE_out[j+1], j, clk); 
end

endgenerate


endmodule






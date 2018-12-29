`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:40:45 12/21/2018 
// Design Name: 
// Module Name:    color 
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
module color(
	input wire clk,
	input wire[8:0] posY,
	input wire[9:0] posX,
	output reg[11:0] ocolor
    );

	// wire[23:0] load;
	// wire[11:0] address;

	localparam height = 64;
	localparam width = 64;

	localparam TOP_BOARD = 9'd50,
               BOTTOM_BOARD = 9'd430,
               LEFT_BOARD = 10'd50,
               RIGHT_BOARD = 10'd590;

	//IP core storing the image
	// img2 load_color(.a(address), .spo(load));
	// assign address = (row - posY) * width + (col - posX);
	always@(posedge clk)
	begin
		if(posY < TOP_BOARD | posY > BOTTOM_BOARD | posX < LEFT_BOARD | posX > RIGHT_BOARD) ocolor = 12'h000;
		else if(x > 300 && x < 400) ocolor = 12'hF0_0;
		else ocolor = 12'hFF_F;
	end

endmodule
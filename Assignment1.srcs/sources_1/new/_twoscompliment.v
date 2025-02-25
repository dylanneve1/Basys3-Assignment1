`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/25/2025 01:13:11 PM
// Design Name: 
// Module Name: _twoscompliment
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


module _twoscompliment(input [5:0] x, output [5:0] y);
    _6bit_ripple_adder link_adder(.x(6'b000000), .y(x), .sel(1'b1), .sum(y), .overflow(), .c_out());
endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/25/2025 04:24:49 PM
// Design Name: 
// Module Name: _bitwise_nxor
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


module _bitwise_nxor(input [5:0] a, b, output [5:0] out);
    assign out = a~^b;
endmodule

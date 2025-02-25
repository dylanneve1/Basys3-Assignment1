`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/11/2025 01:09:54 PM
// Design Name: 
// Module Name: 6bit_ripple_adder
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


module _6bit_ripple_adder (input [5:0] x, y, input sel, output overflow, c_out, output [5:0] sum);
    wire c1, c2, c3, c4, c5, c6;
    
    FullAdder bit0 (x[0], y[0], sel, sum[0], c1);
    FullAdder bit1 (x[1], y[1], c1, sum[1], c2);
    FullAdder bit2 (x[2], y[2], c2, sum[2], c3);
    FullAdder bit3 (x[3], y[3], c3, sum[3], c4);
    FullAdder bit4 (x[4], y[4], c4, sum[4], c5);
    FullAdder bit5 (x[5], y[5], c5, sum[5], c6);
    
    xor g0 (overflow, c5, c6);
    assign c_out = c6;

endmodule

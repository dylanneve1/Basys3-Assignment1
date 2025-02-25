`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/25/2025 03:07:13 PM
// Design Name: 
// Module Name: eq2
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

module eq2(input wire [1:0] a, b, output wire aeqb);
    wire e0, e1;
    eq1 eq_bit0_unit(.i0(a[0]), .i1(b[0]), .eq(e0));
    eq1 eq_bit1_unit(.eq(e1), .i0(a[1]), .i1(b[1]));
    assign aeqb = e0 & e1;
endmodule


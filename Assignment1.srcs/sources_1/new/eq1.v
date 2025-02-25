`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/25/2025 02:58:27 PM
// Design Name: 
// Module Name: eq1
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


module eq1(input wire i0, i1, output wire eq);
    wire p0, p1;
    assign eq = p0 | p1;
    assign p0 = ~i0 & ~i1;
    assign p1 = i0 & i1;
endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/25/2025 03:17:05 PM
// Design Name: 
// Module Name: gt2
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


module gt2(input wire [1:0] a, input wire [1:0] b, output wire gt);
    // a > b if:
    //  - The MSB of a is high and b's is low, OR
    //  - The MSBs are equal and a's LSB is high while b's LSB is low.
    assign gt = (a[1] & ~b[1]) | ((~(a[1] ^ b[1])) & (a[0] & ~b[0]));
endmodule

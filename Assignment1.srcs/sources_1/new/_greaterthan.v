`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/25/2025 03:30:36 PM
// Design Name: 
// Module Name: _greaterthan
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
// s
//////////////////////////////////////////////////////////////////////////////////


module _greaterthan(input wire [5:0] a, b, output wire [5:0] lt_flag);
    wire ge8_out;
    // Sign-extend 6-bit numbers to 8 bits (using the MSB as sign)
    ge8 ge_inst(.a({{2{a[5]}}, a}), .b({{2{b[5]}}, b}), .ge(ge8_out));
    // A < B is true if A is NOT greater than or equal to B.
    // Output a 6-bit flag: 6'111111 if true, 6'b000000 if false.
    assign lt_flag = (ge8_out) ? 6'b111111 : 6'b000000;
endmodule

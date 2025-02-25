`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/18/2025 01:27:40 PM
// Design Name: 
// Module Name: ALU
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


module ALU(input [5:0] A, B, input [2:0] fxn, output [5:0] X);
    wire [5:0] op0; // fxn 000: Output A
    wire [5:0] op1; // fxn 001: Output B
    wire [5:0] op2; // fxn 010: -A
    wire [5:0] op3; // fxn 011: -B
    wire [5:0] op4; // fxn 100: A < B
    wire [5:0] op5; // fxn 101: A NXOR B
    wire [5:0] op6; // fxn 110: A + B
    wire [5:0] op7; // fxn 111: A - B
    
    _passthrough fxn_op0(.x(A), .y(op0));
    _passthrough fxn_op1(.x(B), .y(op1));
    _twoscompliment fxn_op2(.x(A), .y(op2));
    _twoscompliment fxn_op3(.x(B), .y(op3));
    _greaterthan fxn_op4(.a(B), .b(A), .lt_flag(op4));
    _bitwise_nxor fxn_op5(.a(B), .b(A), .out(op5));
    _6bit_ripple_adder fxn_op6(.x(A), .y(B), .sel(1'b0), .sum(op6), .overflow(), .c_out());
    _6bit_ripple_adder fxn_op7(.x(A), .y(B), .sel(1'b1), .sum(op7), .overflow(), .c_out());
    
    _multiplexer get_op(.in0(op0), .in1(op1), .in2(op2), .in3(op3), .in4(op4), .in5(op5), .in6(op6), .in7(op7), .sel(fxn), .out(X));

endmodule

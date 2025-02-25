`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/11/2025 02:32:06 PM
// Design Name: 
// Module Name: tb_6bit_ripple_adder
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


module tb_6bit_ripple_adder;
    reg [5:0] x, y;
    reg sel;
    wire overflow,  c_out;
    wire [5:0] sum;
    
    _6bit_ripple_adder uut (.x(x), .y(y), .sel(sel), .overflow(overflow), .c_out(c_out), .sum(sum));
    
    initial
    begin
        x = 6'b000001;
        y = 6'b000100;
        sel = 1'b0;
        #10;
        
        x = 6'b001010;
        y = 6'b010101;
        sel = 1'b0;
        #10
        
        x = 6'b000000;
        y = 6'b000000;
        sel = 1'b0;
        #10
        
        $stop;
    end
    
    initial
    begin
        $monitor("Time=%0dns sel=%b x=%b, y=%b | sum=%b c_out=%b overflow=%b", $time, sel, x, y, sum, c_out, overflow);
    end
    
endmodule

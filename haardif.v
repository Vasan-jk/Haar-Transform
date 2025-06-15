`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:    21:14:30 07/27/24
// Design Name:    
// Module Name:    haardif
// Project Name:   
// Target Device:  
// Tool versions:  
// Description:
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////
module haardif(out, a,b);
    output [7:0] out;
    input [7:0] a,b;

  assign	out = ((a+b)/2);


endmodule


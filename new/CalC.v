`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.08.2023 15:45:58
// Design Name: 
// Module Name: CalC
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


module CalC(o,zr,ng,x,y,zx,nx,zy,ny,f,no);
    input [15:0] x,y;
    input zx,nx,zy,ny,f,no;
    output [15:0] o;
    output zr,ng;

    wire [15:0] X,Y;

    // Assigning the values of X and Y
    assign X = ((~zx)&(~nx))?x:((~zx)&nx)?(~x):(zx&(~nx))?16'b0:(~16'b0);
    assign Y = ((~zy)&(~ny))?y:((~zy)&ny)?(~y):(zy&(~ny))?16'b0:(~16'b0);

    // Assigning the final output
    assign o = ((~f)&(~no))?(X&Y):((~f)&no)?(~(X&Y)):(f&(~no))?(X+Y):(~(X+Y));

    // Output control bit for zr
    assign zr = (o==0);

    // Output control bit for ng
    assign ng = o[15];
endmodule
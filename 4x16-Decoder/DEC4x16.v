`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/02/2026 11:56:00 AM
// Design Name: 
// Module Name: dec4x16
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


module DEC4x16(input [3:0]a,output [15:0]y);
    wire [3:0]na;
    genvar i;
    generate
        for (i=0;i<4;i=i+1)
            not(na[i],a[i]);
    endgenerate
    
    and(y[0],na[3],na[2],na[1],na[0]);
    and(y[1],na[3],na[2],na[1],a[0]);
    and(y[2],na[3],na[2],a[1],na[0]);
    and(y[3],na[3],na[2],a[1],a[0]);
    and(y[4],na[3],a[2],na[1],na[0]);
    and(y[5],na[3],a[2],na[1],a[0]);
    and(y[6],na[3],a[2],a[1],na[0]);
    and(y[7],na[3],a[2],a[1],a[0]);
    and(y[8],a[3],na[2],na[1],na[0]);
    and(y[9],a[3],na[2],na[1],a[0]);
    and(y[10],a[3],na[2],a[1],na[0]);
    and(y[11],a[3],na[2],a[1],a[0]);
    and(y[12],a[3],a[2],na[1],na[0]);
    and(y[13],a[3],a[2],na[1],a[0]);
    and(y[14],a[3],a[2],a[1],na[0]);
    and(y[15],a[3],a[2],a[1],a[0]);
endmodule



`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/02/2026 12:07:26 PM
// Design Name: 
// Module Name: RCA
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


module RCA #(parameter n=4)(input [n-1:0]a,b,input cin,output [n-1:0]sum,output cout);
    localparam carryw=n+1;
    wire [carryw-1:0]c;
    assign c[0]=cin;
    
    genvar i;
    generate
        for(i=0;i<n;i=i+1) begin:ADD
            FA full_add(.A(a[i]),.B(b[i]),.CIN(c[i]),.S(sum[i]),.COUT(c[i+1]));
        end
    endgenerate
    assign cout=c[n];
endmodule

module FA(input A,B,CIN,output S,COUT);
    wire [2:0]W;
    xor(S,A,B,CIN);
    and(W[0],A,B);
    and(W[1],A,CIN);
    and(W[2],B,CIN);
    or(COUT,W[2],W[1],W[0]);
endmodule

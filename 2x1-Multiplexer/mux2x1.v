`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/31/2026 11:52:38 AM
// Design Name: 
// Module Name: mux2x1
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


module MUX2x1(input [1:0]I,input sel,output P);
    //assign P=I[sel]; //dataflow
    
    wire nsel; //structural
    wire [1:0]x;
    not(nsel,sel);
    and(x[0],nsel,I[0]);
    and(x[1],sel,I[1]);
    or(P,x[0],x[1]);
endmodule

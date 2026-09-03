`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/24/2026 12:15:17 PM
// Design Name: 
// Module Name: ECE3300testbench
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


module MUX2x1_tb();
    reg [1:0]in=2'b00; //mux2x1 inputs
    reg S=0; //mux2x1 select input
    wire out; //mux2x1 output
    
    MUX2x1 dut(.I(in),.sel(S),.P(out));
    initial begin:muxtest
            S<=0;
        in<=2'b00;
        
        #1  S<=0;
        in<=2'b01;
        
        #1  S<=0;
        in<=2'b10;
        
        #1  S<=0;
        in<=2'b11;
        
        #1  S<=1;
        in<=2'b00;
        
        #1  S<=1;
        in<=2'b01;
        
        #1  S<=1;
        in<=2'b10;
        
        #1  S<=1;
        in<=2'b11;
        
        #1  $finish;
    end
endmodule

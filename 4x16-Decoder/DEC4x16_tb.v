`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/02/2026 11:55:46 AM
// Design Name: 
// Module Name: dec4x16_tb
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


module DEC4x16_tb();
    reg [3:0]in;
    wire [15:0]min;
    integer i,err;
    reg [15:0]expected;
    
    DEC4x16 dut(.a(in),.y(min));
    initial begin
        err=0;
        for(i=0;i<16;i=i+1) begin
            in=i;
            expected=16'd1<<i;
            #10;
            if(min!==expected) begin
                err=err+1;
                $display("FAIL a=%0d y=%b",i,min);
            end
        end
        $display("done: 0%d errors",err);
        $finish;
    end
endmodule
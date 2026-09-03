`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/02/2026 12:07:13 PM
// Design Name: 
// Module Name: RCA_tb
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


module RCA_tb();
    localparam n=4;
    
    reg [n-1:0]a,b;
    reg cin;
    wire [n-1:0]sum;
    wire cout;
    integer i,j,err;
    reg [n:0]expected;
    
    RCA #(.n(n)) dut(.a(a),.b(b),.cin(cin),.sum(sum),.cout(cout));
    initial begin
        cin=0;err=0;
        for(i=0;i<2**n;i=i+1)
            for(j=0;j<2**n;j=j+1) begin
                a=i;b=j;
                #10;
                expected=i+j;
                if({cout,sum}!==expected)begin
                    err=err+1;
                    $display("FAIL %0d+%0d got %0d",i,j,{cout,sum});
                end
            end
        $display("done: %0d errors",err);
        $finish;
    end
endmodule

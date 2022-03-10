`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/01/2022 09:30:44 PM
// Design Name: 
// Module Name: ex1
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


module ex1();

reg a, b;

initial begin
        a = 0;
        b = 0;
    #1  b = 1;
    #1  a = 1;
        b = 0;
    #1  a = 1;
        b = 1;
     #2 $stop();        // simularea este oprit?
end







endmodule

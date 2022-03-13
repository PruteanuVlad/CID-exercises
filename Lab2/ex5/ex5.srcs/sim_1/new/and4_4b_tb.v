`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/13/2022 12:52:11 PM
// Design Name: 
// Module Name: and4_4b_tb
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


module and4_4b_tb(

    );
    
    
    reg     [3:0]   in_0;
    reg     [3:0]   in_1;
    reg     [3:0]   in_2;
    reg     [3:0]   in_3;
    wire    [3:0]   e_tb;
    
    and4_4b dut(  .in0(in_0),
                    .in1(in_1),
                    .in2(in_2),
                    .in3(in_3),
                    .out0(e_tb)

    );
    initial begin
        in_0 = 0;
        in_1 = 0;
        in_2 = 15;
        in_3 = 7;
        #5
        in_1 = 3;
        in_3 = 4;
        #5
        in_0 = 1;
        #5
        in_3 = 9;
        #5
        in_0 = 2;
        #5
        in_3 = 6;
        #5
        in_0 = 3;
        in_1 = 15;
        #5
        in_3 = 0;
        #15
        in_0 = 15;
        #20
        $stop();
    end
    
   
endmodule

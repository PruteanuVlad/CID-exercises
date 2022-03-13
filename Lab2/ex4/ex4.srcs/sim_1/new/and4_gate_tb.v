`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/12/2022 07:11:53 PM
// Design Name: 
// Module Name: and4_gate_tb
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


module and4_gate_tb(

    );
    
    reg a_tb;
    reg b_tb;
    reg c_tb;
    reg d_tb;
    wire e_tb;
    
    and4_gate dut(  .in0(a_tb),
                    .in1(b_tb),
                    .in2(c_tb),
                    .in3(d_tb),
                    .out0(e_tb)

    );
    initial begin
        a_tb = 0;
        b_tb = 1;
        c_tb = 0;
        d_tb = 0;
        forever #1  d_tb = ~d_tb;
    end
    
    initial begin 
        #7
        a_tb = 1;
        c_tb = 1;
        #3
        a_tb = 0;
        c_tb = 0;
        #3
        c_tb = 1;
        #2
        $stop();
    end
    
endmodule

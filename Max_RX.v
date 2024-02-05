`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Hamza Ali 
// 
// Create Date: 09/17/2023 11:29:20 AM
// Design Name: 
// Module Name: Max_RX
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


module DMax_RX(
    input Rx,
    input [3:0] sel,
    output reg [9:0] data
    );
    
    initial begin data = 10'b0; end
    always@(*)
    begin
            case(sel)
                    4'b0000: data[0] = Rx;
                    
                    4'b0001: data[1] = Rx;
                    4'b0010: data[2] = Rx;
                    4'b0011: data[3] = Rx;
                    4'b0100: data[4] = Rx;
                    4'b0101: data[5] = Rx;
                    4'b0110: data[6] = Rx;
                    4'b0111: data[7] = Rx;
                    4'b1000: data[8] = Rx;
                    
                    4'b1001: data[9] = Rx;
                    
                 default: data = 1'b0;   
            endcase
    end
endmodule

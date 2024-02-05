`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Hamza Ali
// 
// Create Date: 09/12/2023 02:35:25 PM
// Design Name: 
// Module Name: Max_TX
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


module Max_TX(
    input start_bit,end_bit,
    input [7:0] data,
    input [3:0] sel,
    output reg Tx
    );
    
    always@(*)
    begin
            case(sel)
                    4'b0000: Tx = start_bit;
                    
                    4'b0001: Tx = data[0];
                    4'b0010: Tx = data[1];
                    4'b0011: Tx = data[2];
                    4'b0100: Tx = data[3];
                    4'b0101: Tx = data[4];
                    4'b0110: Tx = data[5];
                    4'b0111: Tx = data[6];
                    4'b1000: Tx = data[7];
                    
                    4'b1001: Tx = end_bit;
                    
                 default: Tx =1'b0;    
            endcase
    end
endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/01/2023 02:39:17 PM
// Design Name: 
// Module Name: UART_TX_TB
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


module UART_TX_TB(

    );
    
    reg clk;
    reg reset;
    wire Tx;
    
    
    UART_TX uut(
    .clk(clk),
    .reset(reset),
    .Tx(Tx)
    );
    
    localparam T = 4;
     
     initial #400 $stop;
     
     always
     begin
     clk = 'b0;
     #(T / 2);
     clk = 'b1;
     #(T / 2);
     end
     
     initial 
     begin
     reset = 'b1;
     #4;
     reset = 'b1;
     end
     
endmodule

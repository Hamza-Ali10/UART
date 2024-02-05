`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Hamza Ali
// 
// Create Date: 09/18/2023 12:55:03 PM
// Design Name: 
// Module Name: UART_TB
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


module UART_TB();
    
    reg clk;
    reg reset;
    wire [7:0] data;
    
    UART uut(
    .clk(clk),
    .reset(reset),
    .data(data)
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
    #2;
    reset = 'b0;
    #5
    reset = 'b1;
    end
    
    
endmodule

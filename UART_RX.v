`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Hamza Ali
// 
// Create Date: 09/17/2023 11:19:11 AM
// Design Name: 
// Module Name: UART_RX
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

 module UART_RX(
    input clk,
    input reset,
    input Rx,
    output [7:0] data
    );
    
    wire [3:0] selection;
    wire [9:0] out;
    wire enable;
    
    DMax_RX max(
    .Rx(Rx),
    .sel(selection),
    .data(out)
    );
    register R1 ( 
    .clk(clk) , 
    .load(enable) , 
    .reset(reset) , 
    .D( out[8:1] ),
    .Q(data) 
     );
                    
    mod_10counter counter(
    .clk(clk),
    .reset(reset),
    .en(enable),
    .Q(selection)
    );

endmodule


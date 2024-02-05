`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/01/2023 03:10:16 PM
// Design Name: 
// Module Name: Max_TX_TB
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


module Max_TX_TB(

    );
    
    reg [7:0] data;
    reg [3:0] sel;
    wire Tx;
        
        
      Max_TX uut(
      .data(data),
      .sel(sel),
      .Tx(Tx)            
            );  
            integer i;
            initial begin
                    for(i = 0 ; i < 20 ; i = i + 1 )
                    begin
                        data = $random;
                        sel = $random;
                        #4;  //wait for 4ns
                    end
        
            #200 $stop;
            end
endmodule

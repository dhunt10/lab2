`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/28/2020 09:19:05 AM
// Design Name: 
// Module Name: eightbit_palu_tb
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


module eightbit_palu_tb();
    reg [7:0] a = 8'b0000000;
    reg [7:0] b = 8'b0000000;
    reg [1:0] sel = 2'b00;
    
    wire [7:0] f;
    wire ovf;
    
    eightbit_palu UUT (.a(a),
                       .b(b), 
                       .sel(sel), 
                       .f(f), 
                       .ovf(ovf));
                       
    initial
   
        begin
        
        #200;
        a = 8'b00001111;
        b = 8'b00001111;
        
        #200;
        a = 8'b11110000;
        b = 8'b00001111;
        
        #200;
        a = 8'b00001111;
        b = 8'b11110000;
        
        #200;
        a = 8'b11111111;
        b = 8'b11111111;
        
        //
        
        #200;
        sel = 2'b01;
        a = 8'b00001111;
        b = 8'b00001111;
        
        #200;
        a = 8'b11110000;
        b = 8'b00001111;
        
        #200;
        a = 8'b00001111;
        b = 8'b11110000;
        
        #200;
        a = 8'b11111111;
        b = 8'b11111111;
        
        //
        
        #200;
        sel = 2'b10;
        a = 8'b00001111;
        b = 8'b00001111;
        
        #200;
        a = 8'b11110000;
        b = 8'b00001111;
        
        #200;
        a = 8'b00001111;
        b = 8'b11110000;
        
        #200;
        a = 8'b11111111;
        b = 8'b11111111;
        
        //
        
        #200;
        sel = 2'b11;
        a = 8'b00001111;
        b = 8'b00001111;
        
        #200;
        a = 8'b11110000;
        b = 8'b00001111;
        
        #200;
        a = 8'b00001111;
        b = 8'b11110000;
        
        #200;
        a = 8'b11111111;
        b = 8'b11111111;
        
        #200;
        a = 8'b00000000;
        b = 8'b00000000;
        sel = 2'b00;
        
    end
        
endmodule

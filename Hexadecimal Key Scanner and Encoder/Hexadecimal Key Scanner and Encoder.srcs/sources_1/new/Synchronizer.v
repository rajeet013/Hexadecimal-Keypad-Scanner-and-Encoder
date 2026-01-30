`timescale 1ns / 1ps


module Synchronizer(
    input [3:0] Row,
    input Clock,
    input Reset,
    output reg S_Row
    );
    reg A_Row;
    
    always @(negedge Clock or posedge Reset)
    begin
    if(Reset)
    begin
        A_Row <= 0;
        S_Row <= 0;
    end   
    else
    begin
        A_Row <= (Row[0] || Row[1] || Row[2] || Row[3]);
        S_Row <= A_Row;
    end
    end
    
endmodule

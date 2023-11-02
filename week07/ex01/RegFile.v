`timescale 1ns / 1ps

module RegFile(
    input wire [3:0] raddr1,
    input wire [3:0] raddr2,
    input wire [3:0] waddr,
    input wire we,
    input wire clk,
    input wire [7:0] wdata,
    output reg [7:0] rdata1,
    output reg [7:0] rdata2
);
    
  // write your code here
reg [7:0] registers [0:15];
 
    always @(posedge clk) begin
        if (we) begin
           
            registers[waddr] <= wdata;
        end
       
        rdata1 <= registers[raddr1];
        rdata2 <= registers[raddr2];
    end
endmodule
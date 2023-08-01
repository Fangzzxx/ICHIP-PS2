`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.08.2023 15:47:03
// Design Name: 
// Module Name: Memory
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


module Memory(data_out,data_in,addr,addr_mode,wr);
    input addr_mode,wr;
    input [9:0] addr;
    input [15:0] data_in;
    output reg [15:0] data_out;

    reg [15:0] memory [0:1023];
    wire [9:0] ind_addr;

    initial begin
        // Input file for Program
        $readmemh("C:/Users/omver/16-Bit Microprocessor/16-Bit Microprocessor.srcs/sources_1/new/Program.txt",memory,0,400);
        // Input file for Data
        $readmemh("C:/Users/omver/16-Bit Microprocessor/16-Bit Microprocessor.srcs/sources_1/new/Data.txt",memory,401,1023);
    end

    assign ind_addr = memory[addr];
    always @(*) begin
        if(addr_mode) data_out <= memory[ind_addr];
        else data_out <= memory[addr];
    end

    always @(posedge wr) memory[addr] <= data_in;

    initial begin
        // Writing output to file
        #310
        $writememh("C:/Users/omver/16-Bit Microprocessor/16-Bit Microprocessor.srcs/sim_1/new/Memory_Output.txt",memory,401,430);
    end
endmodule


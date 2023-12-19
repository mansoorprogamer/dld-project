
`timescale 1ns / 1ps

module closed_lid(
    input wire [16:0] address,
    input wire clk_pix,
    output reg [7:0] dataout 
    );

    (*ROM_STYLE="block"*) reg [7:0] memory_array [0:200000]; 
    
    initial 
    begin
        $readmemh("trex.mem", memory_array);
    end

    always@(posedge clk_pix)
            dataout <= memory_array[address];     
endmodule

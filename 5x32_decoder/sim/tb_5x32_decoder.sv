`timescale 1ns/1ps
////////////////////////////////////////////////////////////////////////////////
//
//  Filename      : tb_5x32_decoder.sv
//  Author        : Abdur-Rehman
//  Creation Date : 04/08/2020
//  Email         : abdurrehmansiddiqui30@gmail.com
//
//  Open source and free to use SystemVerilog programs for your task
//
//  Description
//  ===========
//  SystemVerilog testbench for 5x32 decoder
//
////////////////////////////////////////////////////////////////////////////////

module tb_decoder5to32 ();

  reg [ 4:0] Data_in ;
  reg [31:0] Data_out;

  decoder5to32 inst_decoder5to32 (
    .Data_in (Data_in ),
    .Data_out(Data_out)
  );

  initial begin
    Data_in = 5'b00000;
    
    #10
    
    for (int i=0; i<(2**5); i=i+1) begin
      Data_in = i;
      #10;
    end
  end

endmodule : tb_decoder5to32
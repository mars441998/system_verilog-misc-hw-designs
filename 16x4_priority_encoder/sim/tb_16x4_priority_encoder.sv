`timescale 1ns/1ps
////////////////////////////////////////////////////////////////////////////////
//
//  Filename      : tb_16x4_priority_encoder.sv
//  Author        : Abdur-Rehman
//  Creation Date : 04/08/2020
//  Email         : abdurrehmansiddiqui30@gmail.com
//
//  Open source and free to use SystemVerilog programs for your task
//
//  Description
//  ===========
//  SystemVerilog testbench for 16x4 priority encoder
//
////////////////////////////////////////////////////////////////////////////////

module tb_priority_encoder_16by4_case ();

  reg [15:0] data_in ;
  reg [ 3:0] data_out;

  priority_encoder_16by4_case inst_priority_encoder_16by4_case (
    .data_in (data_in ),
    .data_out(data_out)
  );

  initial begin
    // Resetting
    data_in = 16'b0;

    #10;
    // Testing all possible input patterns
    for (int i=0; i<(2**16); i=i+1) begin
      data_in = i;
      #10;
    end
  end

endmodule : tb_priority_encoder_16by4_case
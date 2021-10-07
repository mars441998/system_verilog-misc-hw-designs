`timescale 1ns/1ps
////////////////////////////////////////////////////////////////////////////////
//
//  Filename      : tb_BCD_7seg.sv
//  Author        : Abdur-Rehman
//  Creation Date : 04/08/2020
//  Email         : abdurrehmansiddiqui30@gmail.com
//
//  Open source and free to use SystemVerilog programs for your task
//
//  Description
//  ===========
//  SystemVerilog testbench for BCD Seven segment
//
////////////////////////////////////////////////////////////////////////////////

module tb_bcd_sseg ();

  reg [3:0] bcd_in ;
  reg [6:0] seg_out;

  bcd_sseg inst_bcd_sseg (
    .bcd_in (bcd_in ),
    .seg_out(seg_out)
  );

  initial begin
    // Resetting
    bcd_in = 4'b0000;
    
    #10
    // Testing all possible input patterns
    for (int i=0; i<(2**4); i=i+1) begin
      bcd_in = i;
      #10;
    end
  end

endmodule // tb_bcd_sseg
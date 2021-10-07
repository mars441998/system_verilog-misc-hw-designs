`timescale 1ns/1ps
////////////////////////////////////////////////////////////////////////////////
//
//  Filename      : barrel_shifter.sv
//  Author        : Abdur-Rehman
//  Creation Date : 04/08/2020
//  Email         : abdurrehmansiddiqui30@gmail.com
//
//  Open source and free to use SystemVerilog programs for your task
//
//  Description
//  ===========
//  SystemVerilog program for 8-bit barrel shifter MUX
//
////////////////////////////////////////////////////////////////////////////////

module tb_barrel_shifter ();

  // Inputs
  reg  [7:0] data_in;

  // Outputs
  reg  [2:0] shift_mag;
  wire [7:0] data_out ;

  // Instantiate the Unit Under Test (UUT)
  barrrel_shifter inst_barrel_shifter (
    .data_in  (data_in  ),
    .shift_mag(shift_mag),
    .data_out (data_out )
  );

  initial begin
    // Initialize Inputs
    data_in = 0;

    #10;
    for(int i = 0; i<8; i++)
      begin
        data_in   = $urandom;
        shift_mag = i;
      end
  end

endmodule
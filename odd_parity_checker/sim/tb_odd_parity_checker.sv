`timescale 1ns/1ps

////////////////////////////////////////////////////////////////////////////////
//
//  Filename      : odd_parity_checker.sv
//  Author        : Abdur-Rehman
//  Creation Date : 04/08/2020
//  Email         : abdurrehmansiddiqui30@gmail.com
//
//  Open source and free to use SystemVerilog programs for your task
//
//  Description
//  ===========
//  SystemVerilog testbench to check odd parity of a 16-bit input
//
////////////////////////////////////////////////////////////////////////////////

module tb_odd_parity_checker ();

  reg [15:0] data_in      ; // Initializing data_in bits
  bit        tb_parity_out; // Initializing output bits

// Instantiating the RTL module in testbench

  odd_parity_checker inst_odd_parity_checker (
    // Creating instance of the RTL
    .data_in   (data_in      ),
    .parity_out(tb_parity_out)
  );


  initial begin

    // First initialize the variable with zero (equivalent to reset)
    data_in = 16'b0;

    //Adding 10ns delay
    #10;

    //  Giving all the possible 16-bit values to check the functionality of the design
    //  For 2^16 = 65535 values

    for (int i = 0; i<(2**16); i++) begin
      data_in = i;
      #10;
    end
    
  end

endmodule : tb_odd_parity_checker
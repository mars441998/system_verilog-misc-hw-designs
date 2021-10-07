`timescale 1ns/1ps
////////////////////////////////////////////////////////////////////////////////
//
//  Filename      : tb_4x1_multiplexer.sv
//  Author        : Abdur-Rehman
//  Creation Date : 04/08/2020
//  Email         : abdurrehmansiddiqui30@gmail.com
//
//  Open source and free to use SystemVerilog programs for your task
//
//  Description
//  ===========
//  SystemVerilog testbench for a 4x1 Multiplexer using case statement
//
////////////////////////////////////////////////////////////////////////////////

module tb_mux_4_by_1_case ();

  bit       in_mux_1;
  bit       in_mux_2;
  bit       in_mux_3;
  bit       in_mux_4;
  reg [1:0] sel_mux ;
  bit       out_mux ;

  mux_4_by_1_case inst_mux_4_by_1_case (
    .in_mux_1(in_mux_1),
    .in_mux_2(in_mux_2),
    .in_mux_3(in_mux_3),
    .in_mux_4(in_mux_4),
    .sel_mux (sel_mux ),
    .out_mux (out_mux )
  );

  initial begin
    // Resetting all inputs
    in_mux_1 = 0;
    in_mux_2 = 0;
    in_mux_3 = 0;
    in_mux_4 = 0;
    sel_mux = 2'b00;

    #10

    in_mux_1 = 1;
    in_mux_2 = 0;
    in_mux_3 = 0;
    in_mux_4 = 1;
    sel_mux = 2'b00;

    #10

    in_mux_1 = 1;
    in_mux_2 = 0;
    in_mux_3 = 0;
    in_mux_4 = 1;
    sel_mux = 2'b01;

    #10

    in_mux_1 = 1;
    in_mux_2 = 0;
    in_mux_3 = 0;
    in_mux_4 = 1;
    sel_mux = 2'b10;

    #10

    in_mux_1 = 1;
    in_mux_2 = 0;
    in_mux_3 = 0;
    in_mux_4 = 1;
    sel_mux = 2'b11;

  end

endmodule : tb_mux_4_by_1_case
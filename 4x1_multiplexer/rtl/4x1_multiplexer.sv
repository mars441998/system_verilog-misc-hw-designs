////////////////////////////////////////////////////////////////////////////////
//
//  Filename      : 4x1_multiplexer.sv
//  Author        : Abdur-Rehman
//  Creation Date : 04/08/2020
//  Email         : abdurrehmansiddiqui30@gmail.com
//
//  Open source and free to use SystemVerilog programs for your task
//
//  Description
//  ===========
//  SystemVerilog program for a 4x1 Multiplexer using case statement
//
////////////////////////////////////////////////////////////////////////////////

module mux_4_by_1_case (
  input            in_mux_1, // Input initialization
  input            in_mux_2,
  input            in_mux_3,
  input            in_mux_4,
  input      [1:0] sel_mux , // 2-bit select line
  output reg       out_mux
);

  always @* begin
    case (sel_mux)                      // case begining with sel_mux parameter
      2'b00 : out_mux <= in_mux_1;
      2'b01 : out_mux <= in_mux_2;
      2'b10 : out_mux <= in_mux_3;
      2'b11 : out_mux <= in_mux_4;
    endcase
  end

endmodule
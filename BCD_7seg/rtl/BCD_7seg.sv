////////////////////////////////////////////////////////////////////////////////
//
//  Filename      : BCD_7seg.sv
//  Author        : Abdur-Rehman
//  Creation Date : 04/08/2020
//  Email         : abdurrehmansiddiqui30@gmail.com
//
//  Open source and free to use SystemVerilog programs for your task
//
//  Description
//  ===========
//  SystemVerilog program for BCD Seven segment
//
////////////////////////////////////////////////////////////////////////////////

module bcd_sseg (
  input  wire [3:0] bcd_in , //4-bit input for seven segment
  output reg  [6:0] seg_out  //7-bit output for seven segment
);

//always block for converting bcd digit into 7 segment format
  always @(bcd_in) begin
    case (bcd_in) //case statement
      4'b0000 : seg_out = 7'b0000001;     // show 0
      4'b0001 : seg_out = 7'b1001111;     // show 1
      4'b0010 : seg_out = 7'b0010010;     // show 2
      4'b0011 : seg_out = 7'b0000110;     // show 3
      4'b0100 : seg_out = 7'b1001100;     // show 4
      4'b0101 : seg_out = 7'b0100100;     // show 5
      4'b0110 : seg_out = 7'b0100000;     // show 6
      4'b0111 : seg_out = 7'b0001111;     // show 7
      4'b1000 : seg_out = 7'b0000000;     // show 8
      4'b1001 : seg_out = 7'b0000100;     // show 9

      //switch off 7 segment character when the bcd digit is a character that can't be show on 7-segment
      default : seg_out = 7'b1111111;
    endcase
  end

endmodule
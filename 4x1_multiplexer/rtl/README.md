There are several ways to design a Multiplexer. Most common ways are using case statement or using if else condition. Since I have included case statement in the RTL, here is the if else condition snippet:

  always @* begin
    if (sel_mux == 2'b00)
      out_mux <= in_mux_1;

    else if (sel_mux == 2'b01)
      out_mux <= in_mux_2;

    else if (sel_mux == 2'b10)
      out_mux <= in_mux_3;

    else out_mux <= in_mux_4;

  end

You can also use simple assign statement with a turnary operator:

assign out_mux = sel_mux[1] ? (sel_mux[0] ? in_mux_4 : in_mux_3) : (sel_mux[0] ? in_mux_2 : in_mux_1); 
module seq(input clk,
           input reset,
           input in,
           output reg out);
  reg[2:0] state, next_state;
  localparam s0=3'd0, s1=3'd1, s2=3'd2, s3=3'd3, s4=3'd4;
  always @(*) begin
    case(state)
      s0:next_state=(in)?s1:s0;
      s1:next_state=(in)?s1:s2;
      s2:next_state=(in)?s3:s0;
      s3:next_state=(in)?s4:s2;
      s4:next_state=(in)?s1:s2;
      default:next_state=s0;
    endcase
  end
  always @(posedge clk or posedge reset) begin
    if(reset)
      state<=s0;
    else
      state<=next_state;
  end
  always @(*)
    out=(state==s4);
endmodule
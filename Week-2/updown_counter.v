module counter(input clk,
               input reset,
               input up_down,
               output reg [3:0]count);
  always@(posedge clk or posedge reset) begin
    if(reset)
      count<=4'd0;
    else begin
      if(up_down) begin
        if(count==4'd9)
          count<=4'd0;
        else
          count<=count+4'd1;
      end
      else begin
        if(count==4'd0)
          count<=4'd9;
        else
          count<=count-4'd1;
      end
    end
  end
endmodule
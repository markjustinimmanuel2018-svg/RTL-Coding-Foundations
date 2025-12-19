module alu(input a,
           input b,
           input[1:0] sel,
           output reg out);
  always@(*) begin
    case(sel)
      2'b00:out=a&b;  
      2'b01:out=a|b; 
      2'b10:out=a^b; 
      2'b11:out=~a;       
      default:out=1'b0;
    endcase
  end
endmodule


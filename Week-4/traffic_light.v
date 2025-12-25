module tlc(input clk,
           input reset,
           output reg nsR,nsY,nsG,
           output reg ewR,ewY,ewG);
  reg [2:0] light,n_light;
  reg [2:0] count;
  localparam s0=3'd0, s1=3'd1, s2=3'd2, s3=3'd3,s4=3'd4;
  localparam green_t=3'd4, yellow_t=3'd1, red_t=3'd1;
  
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      light<=s0;
      count<=3'd0;
    end
    else begin
      light<=n_light;
      if(light!=n_light)
        count<=3'd0;
      else
        count<=count+3'd1;
    end
  end
  
  always @(*) begin
    n_light=light;
    case(light)
      s0: if(count==red_t)    n_light=s1;
      s1: if(count==green_t)  n_light=s2;
      s2: if(count==yellow_t) n_light=s3;
      s3: if(count==green_t)  n_light=s4;
      s4: if(count==yellow_t) n_light=s1;
      default: n_light=s0;
    endcase
  end
  
  always @(*) begin
    nsR=1; nsY=0; nsG=0; ewR=1; ewY=0; ewG=0;
    case(light)
      s1: begin nsG=1; nsR=0; end
      s2: begin nsY=1; nsR=0; end
      s3: begin ewG=1; ewR=0; end
      s4: begin ewY=1; ewR=0; end
    endcase
  end
  
endmodule
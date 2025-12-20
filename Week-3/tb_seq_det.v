module tb_seq;
  reg clk;
  reg reset;
  reg in;
  wire out;
  seq dut(.clk(clk),.reset(reset),.in(in),.out(out));
  always #5 clk=~clk;
  initial begin
    clk=0;
    reset=1;
    in=0;
    $monitor("Time=%0t | in=%b | out=%b",$time,in,out);
    #12 reset=0;
    @(posedge clk) in=1;
    @(posedge clk) in=0;
    @(posedge clk) in=1;
    @(posedge clk) in=1;

    @(posedge clk) in=0;
    @(posedge clk) in=1;
    @(posedge clk) in=1;
    
    @(posedge clk) in=0;
    @(posedge clk) in=1;
    
    #20
    $finish;
  end
endmodule
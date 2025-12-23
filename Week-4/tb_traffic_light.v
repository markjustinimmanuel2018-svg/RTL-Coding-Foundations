module tb_tlc;
  reg clk;
  reg reset;
  wire nsR,nsY,nsG;
  wire ewR,ewY,ewG;
  tlc dut(.clk(clk),.reset(reset),.nsR(nsR),.nsY(nsY),.nsG(nsG),
          .ewR(ewR),.ewY(ewY),.ewG(ewG));
  always #5 clk=~clk;
  initial begin
    clk=0;
    reset=1;
    $monitor("T=%0t | NS(G,Y,R)=%b%b%b | EW(G,Y,R)=%b%b%b", $time,nsG,nsY,nsR,ewG,ewY,ewR);
    #12 reset=0;
    #300
    $finish;
  end
endmodule
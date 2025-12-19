module tb_counter;
  reg clk;
  reg reset;
  reg up_down;
  wire[3:0] count;
  counter dut(.clk(clk),.reset(reset),.up_down(up_down),.count(count));
  always #5 clk=~clk;
  initial begin
    clk=0;
    reset=1;
    up_down=1;
    $monitor("Time=%0t | reset=%b | up_down=%b |count=%0d",$time,reset,up_down,count);
    #12 reset=0;
    up_down=1;#100
    up_down=0;#100
    up_down=1;#100
    reset=1;#10
    reset=0;
    up_down=0;#50
    $finish;
  end
endmodule
module tb_alu;
  reg a;
  reg b;
  reg[1:0] sel;
  wire out;
  alu dut(.a(a),.b(b),.sel(sel),.out(out));
  initial begin
    $monitor("Time=%0t | sel=%b | a=%b | b=%b | out=%b",$time,sel,a,b,out);
    a=0;b=1;sel=2'b00;#10
    a=1;b=1;sel=2'b00;#10
    a=0;b=0;sel=2'b01;#10
    a=1;b=0;sel=2'b01;#10
    a=0;b=0;sel=2'b10;#10
    a=0;b=1;sel=2'b10;#10
    a=1;b=1;sel=2'b11;#10
    a=0;b=1;sel=2'b11;#10
    $finish;
  end
endmodule
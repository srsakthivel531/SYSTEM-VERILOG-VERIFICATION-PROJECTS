`include "interface.sv"
`include "program_block.sv"
module tb;
logic clk;
  
s_ram sr(clk);
sram dut(sr);
test t(sr);
 
initial begin 
clk=0;
forever #1 clk=~clk;
end 
 
initial begin 
sr.rst=1;
@(posedge clk);
sr.rst=0;
#1000 $finish;
end 
endmodule 

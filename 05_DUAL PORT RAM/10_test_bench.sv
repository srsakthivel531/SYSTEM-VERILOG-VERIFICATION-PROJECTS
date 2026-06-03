`include "test.sv"
`include "interface.sv"
module test_bench;
logic clk;
dpram_if vif(clk);
dualport dut(vif);
test t(vif);
initial begin
clk=0;
forever #1 clk=~clk;
end 
initial begin
$dumpfile("DPRAM.vcd");
$dumpvars(0,test_bench);
end 
initial begin
vif.rst=1;
@(posedge clk);
vif.rst=0;
#100 $finish;
end 
endmodule 

`include "interface.sv"
`include "test.sv"
module test_bench;
logic clk;
  
synfifo vif(clk);
fifo dut(.clk(clk),
.rst(vif.rst),
.wr_en(vif.wr_en),
.rd_en(vif.rd_en),
.data_in(vif.data_in),
.data_out(vif.data_out),
.full(vif.full),
.empty(vif.empty),
.overflow(vif.overflow),
.underflow(vif.underflow)
);
test t(vif);  
initial begin
clk=0;
forever #1 clk=~clk;
end 
  
initial begin
vif.rst=1;
@(posedge clk);
vif.rst=0;
#100 $finish; 
end 
  
initial begin
$dumpfile("fifo.vcd");
$dumpvars(0,test_bench);
end 
endmodule 

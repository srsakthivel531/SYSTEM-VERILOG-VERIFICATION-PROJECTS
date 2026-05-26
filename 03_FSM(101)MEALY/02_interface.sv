interface seq_inf(input logic clk);
logic x;
logic reset;
logic y;
// Clocking block
clocking drv_cb @(posedge clk);
default input #1step output #0;
output x,reset;
input y;
endclocking
clocking mon_cb @(posedge clk);
default input #1step;
input x,reset;
input y;
endclocking
endinterface 

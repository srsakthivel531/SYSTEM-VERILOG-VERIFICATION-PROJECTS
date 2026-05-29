interface s_ram#(parameter ADDR_WIDTH=4,DATA_WIDTH=8)(input logic clk);
logic rst;
logic r_en;
logic w_en;
logic[ADDR_WIDTH-1:0] address;
logic[DATA_WIDTH-1:0] w_data;
logic[DATA_WIDTH-1:0] r_data;
clocking cb @(posedge clk);
default input #1step output #0;
output rst;
output r_en;
output w_en;
output address;
output w_data;
input r_data;
endclocking 
endinterface

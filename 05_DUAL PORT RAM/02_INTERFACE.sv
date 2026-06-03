interface dpram_if#(parameter ADDR_WIDTH=6,DATA_WIDTH=8)(input logic clk);
logic rst;

// PORT A
logic wr_a;
logic rd_a;
logic[ADDR_WIDTH-1:0]addr_a;
logic[DATA_WIDTH-1:0]wdata_a;
logic[DATA_WIDTH-1:0]rdata_a;

// PORT B
logic wr_b;
logic rd_b;
logic[ADDR_WIDTH-1:0]addr_b;
logic[DATA_WIDTH-1:0]wdata_b;
logic[DATA_WIDTH-1:0]rdata_b;

clocking cb @(posedge clk);

default input #1step output #0;
//DRIVING 
output wr_a;
output rd_a;
output addr_a;
output wdata_a;
output wr_b;
output rd_b;
output addr_b;
output wdata_b;
//SAMPLING
input rdata_a;
input rdata_b;
endclocking
endinterface

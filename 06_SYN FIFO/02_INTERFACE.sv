interface synfifo(input logic clk);
logic rst;
logic wr_en;
logic rd_en;
logic [7:0] data_in;
logic [7:0] data_out;
logic full;
logic empty;
logic overflow;
logic underflow;

clocking cb @(posedge clk);
default input #1step output #0;
// DRIVING
output wr_en;
output rd_en;
output data_in;
// SAMPLING
input rst;
input data_out;
input full;
input empty;
input overflow;
input underflow;
endclocking
endinterface

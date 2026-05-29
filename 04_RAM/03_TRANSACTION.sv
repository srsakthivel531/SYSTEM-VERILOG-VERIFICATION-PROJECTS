class transaction;
parameter ADDR_WIDTH=4;
parameter DATA_WIDTH=8;
rand bit w_en;
rand bit r_en;
randc bit[ADDR_WIDTH-1:0]address;
randc bit[DATA_WIDTH-1:0]w_data;
bit[DATA_WIDTH-1:0]r_data;
constraint c1 {
  { w_en!=r_en };
  };
endclass 

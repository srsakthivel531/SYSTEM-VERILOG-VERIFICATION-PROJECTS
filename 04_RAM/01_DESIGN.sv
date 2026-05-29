module sram(s_ram sr);
reg [sr.DATA_WIDTH-1:0] mem[0:2**sr.ADDR_WIDTH-1]; 
integer i;
  always @(posedge sr.clk or posedge sr.rst)begin
  if(sr.rst)begin
    sr.r_data<=0;
    for(i=0;i<2**sr.ADDR_WIDTH;i=i+1)
    mem[i]<=0;
  end 
  else begin
    if(sr.w_en)
      mem[sr.address]<=sr.w_data;
    if(sr.r_en)
      sr.r_data<=mem[sr.address];
  end 
end 
endmodule 

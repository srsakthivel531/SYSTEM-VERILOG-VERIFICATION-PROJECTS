module dualport(dpram_if dp);
logic [dp.DATA_WIDTH-1:0]mem[0:(2**dp.ADDR_WIDTH)-1];
integer i;
always @(posedge dp.clk or posedge dp.rst)
begin
  if(dp.rst)
    begin
        dp.rdata_a<=0;
        dp.rdata_b<=0;
      for(i=0;i<2**dp.ADDR_WIDTH;i++)begin
        mem[i]<=0;
      end 
    end
    else
    begin 
    //PORT -A PRIORITY FOR READ 
      if(dp.rd_a&&dp.rd_b&&(dp.addr_a==dp.addr_b))
        begin
         dp.rdata_a<=mem[dp.addr_a];
        end 
      else begin
      if(dp.rd_a)
        dp.rdata_a<=mem[dp.addr_a];

      if(dp.rd_b)
        dp.rdata_b<=mem[dp.addr_b];
      end 
      //PORT -A PRIORITY FOR WRITE  
      if(dp.wr_a&&dp.wr_b&&(dp.addr_a==dp.addr_b))
        begin
          mem[dp.addr_a]<=dp.wdata_a; 
        end
        else
        begin
          if(dp.wr_a)
            mem[dp.addr_a]<=dp.wdata_a;

          if(dp.wr_b)
            mem[dp.addr_b]<=dp.wdata_b;
        end
    end
end
endmodule

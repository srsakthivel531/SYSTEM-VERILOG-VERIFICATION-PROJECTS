module fifo(
input clk,
input rst,
input wr_en,
input rd_en,
input[7:0]data_in,
output logic [7:0]data_out,
output logic full,
output logic empty,
output logic overflow,
output logic underflow
);

logic[7:0]mem[0:7];
logic[3:0]wr_ptr;
logic[3:0]rd_ptr;
logic[3:0]count;

integer i;

 always @(posedge clk or posedge rst)
  begin
   if(rst)
   begin
    wr_ptr<=0;
    rd_ptr<=0;
    count<=0;
    data_out<=0;
    overflow<=0;
    underflow<=0;
   for(i=0;i<8;i=i+1)
    mem[i]<=0;
   end

  else
   begin
   overflow<=0;
   underflow<=0;
   case({wr_en,rd_en})
  //WRITE ONLY 
   2'b10:
    begin
      if(!full)
         begin
         mem[wr_ptr[2:0]]<=data_in;
         wr_ptr<=wr_ptr+1;
         count<=count+1;
         end
      else
         begin
         overflow<=1;
         end
        end
  //READ ONLY 
   2'b01:
   begin
      if(!empty)
         begin
         data_out<= mem[rd_ptr[2:0]];
         rd_ptr<=rd_ptr+1;
         count<=count-1;
         end
      else
         begin
         underflow<=1;
         end
        end
  //SIMULTANEOUS WRITE AND READ 
   2'b11:
   begin
    if(empty)
     begin
       mem[wr_ptr[2:0]]<=data_in;
        wr_ptr<=wr_ptr+1;
        count<=count+1;
    end

    else if(full)
    begin
        data_out <= mem[rd_ptr[2:0]];
        rd_ptr<=rd_ptr+1;
       count<=count-1;
    end

    else
    begin
        data_out <= mem[rd_ptr[2:0]];
        mem[wr_ptr[2:0]]<=data_in;
        rd_ptr<=rd_ptr+1;
        wr_ptr<=wr_ptr+1;
    end

end
endcase
 end
end
assign full=(count==8);
assign empty=(count==0);
endmodule

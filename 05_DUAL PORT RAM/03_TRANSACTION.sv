class transaction;
parameter ADDR_WIDTH=6;
parameter DATA_WIDTH=8;
rand bit wr_a;
rand bit rd_a;
rand bit[ADDR_WIDTH-1:0]addr_a;
rand bit[DATA_WIDTH-1:0]wdata_a;
rand bit wr_b;
rand bit rd_b;
rand bit[ADDR_WIDTH-1:0]addr_b;
rand bit[DATA_WIDTH-1:0]wdata_b;
bit [DATA_WIDTH-1:0]rdata_a;
bit [DATA_WIDTH-1:0]rdata_b;

static int count;
constraint c1 {
  //WRITE IN PORT A 
  if(count inside{[0:7]}){
    wr_a==1;
    rd_a==0;
    wr_b==0;
    rd_b==0;
    addr_a==count;
  }
  //READ IN PORT A
  if(count inside{[8:15]}){
    wr_a==0;
    rd_a==1;
    wr_b==0;
    rd_b==0;
    addr_a==count-8;
  }
  //WRITE IN PORT B
  if(count inside{[16:23]}){
    wr_a==0;
    rd_a==0;
    wr_b==1;
    rd_b==0;
    addr_b==count;
  }
   //READ IN PORT B
  if(count inside{[24:31]}){
    wr_a==0;
    rd_a==0;
    wr_b==0;
    rd_b==1;
    addr_b==count-8;
  } 
  //SAME ADDRESS PORT A PRIORITY FOR WRITE
   if(count inside{[32:36]}){
    wr_a==1;
    wr_b==1;
    rd_a==0;
    rd_b==0;
    addr_a==count;
    addr_b==count;
  }
  //SAME ADDRESS PORT A PRIORITY FOR READ
     if(count inside{[37:41]}){
    wr_a==0;
    wr_b==0;
    rd_a==1;
    rd_b==1;
    addr_a==count-5;
    addr_b==count-5;
  }
  //WRITE IN PORT A & READ IN PORT B
    if(count inside{[42:48]}){
    wr_a==1;
    rd_a==0;
    wr_b==0;
    rd_b==1;
    addr_a==count;
    addr_b==count-42;
  }
}
endclass

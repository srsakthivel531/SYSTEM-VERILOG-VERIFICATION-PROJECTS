class transaction;
  
//INPUTS
rand bit wr_en;
rand bit rd_en;
rand bit [7:0]data_in;
  
//OUTPUTS
bit [7:0] data_out;
bit full;
bit empty;
bit overflow;
bit underflow;
static int count;
constraint c1
  { //WRITE CHECK
    if(count inside {[0:7]})
    {
      wr_en==1;
      rd_en==0;
    }
     //OVERFLOW CHECK
    if(count==8)
    {
      wr_en==1;
      rd_en==0;
    }
     //READ CHECK
    if(count inside {[9:16]})
    {
      wr_en==0;
      rd_en==1;
    }
    //AGAIN WRITE 
    if(count inside {[17:21]})
    {
      wr_en==1;
      rd_en==0;
    }
    //SIMULTANEOUS READ AND WRITE 
    if(count inside {[22:29]})
    {
      wr_en==1;
      rd_en==1;
    } 
    // READ AND UNDERFLOW CHECK
    if(count >29)
    {
      wr_en==0;
      rd_en==1;
    }
  }
 endclass

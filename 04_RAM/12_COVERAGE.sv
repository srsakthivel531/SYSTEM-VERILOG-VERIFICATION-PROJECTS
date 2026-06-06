class coverage;
transaction trans;
virtual s_ram sr;
covergroup cg;

//WRITE COVERAGE 
cp_wr_en:coverpoint trans.w_en
  {   
    bins w_en_0={0};
    bins w_en_1={1};
  }
  
//READ COVERAGE 
cp_rd_en:coverpoint trans.r_en
  {   
    bins r_en_0={0};
    bins r_en_1={1};
  }
 
//ADDR COVERAGE 
cp_addr:coverpoint trans.address
  {
    bins addr[]={[0:15]};
  }
  
//WRITE DATA COVERAGE 
cp_wdata:coverpoint trans.w_data
  {
    bins wd_first[]={[0:3]};
    bins wd_sec[]={[4:7]};
    bins wd_thi[]={[8:11]};
    bins wd_fourth[]={[12:15]};
  }
  
//READ DATA COVERAGE 
cp_rdata:coverpoint trans.r_data
  {
    bins rd_first[]={[0:3]};
    bins rd_sec[]={[4:7]};
    bins rd_thi[]={[8:11]};
    bins rd_fourth[]={[12:15]};
  }
  
//WRITE AND READ COVERAGE 
  cp_operation : coverpoint {trans.w_en,trans.r_en}
  {
    bins write={2'b10};
    bins read={2'b01};
  }
  
//CROSS WRITE ADDRESS COVERAGE 
cross_wr_addr:cross cp_wr_en,cp_addr;

    
//CROSS READ ADDRESS COVERAGE 
cross_rd_addr:cross cp_rd_en,cp_addr;
endgroup 

function new();
cg=new();
endfunction

function void sample(transaction trans);
this.trans=trans;
cg.sample();
endfunction
endclass 

class scoreboard;
transaction trans;
mailbox #(transaction) mon_to_sco;
bit [7:0]ref_mem[0:63];

function new(mailbox #(transaction)mon_to_sco);
this.mon_to_sco=mon_to_sco;
endfunction

task run();
repeat(50)
begin
mon_to_sco.get(trans);
  
              //PORT -A PRIORITY FOR WRITE
  if(trans.wr_a && trans.wr_b && trans.addr_a && trans.addr_b)begin 
     ref_mem[trans.addr_a]=trans.wdata_a;
    $display("WRITE PASS IN PORT A");
  end 
  else begin
//WRITE IN PORT A
  if(trans.wr_a)begin
    ref_mem[trans.addr_a]=trans.wdata_a;
    $display("WRITE PASS IN PORT A");
  end 
//WRITE IN PORT B
  if(trans.wr_b)begin
    ref_mem[trans.addr_b]=trans.wdata_b;
    $display("WRITE PASS IN PORT B");
  end
  end 
  
             // PORT -A PRIORITY FOR READ
    if(trans.rd_a && trans.rd_b && trans.addr_a && trans.addr_b)begin 
       if(trans.rdata_a==ref_mem[trans.addr_a]);
       $display("READ PASS IN PORT A");
  end 
    else begin
//READ IN PORT A
  if(trans.rd_a)begin
    if(trans.rdata_a==ref_mem[trans.addr_a])
    $display("READ PASS IN PORT A");
    else 
      $display("READ FAIL IN PORT A"); 
  end 
//READ IN PORT B
  if(trans.rd_b)begin
    if(trans.rdata_b==ref_mem[trans.addr_b])
    $display("READ PASS IN PORT B");
    else 
    $display("READ FAIL IN PORT B");
  end 
  end 

$display("_____________________________________________________________________________________________________________________________________");
end 
endtask 
endclass 

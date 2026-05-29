class scoreboard;
transaction trans;
mailbox #(transaction) mon_to_sco;
bit [7:0]ref_mem[15:0];
  
function new(mailbox #(transaction) mon_to_sco);
this.mon_to_sco=mon_to_sco;
endfunction 
  
task run();
repeat(20) begin
mon_to_sco.get(trans);
 $display("====================SCOREBOARD SIGNALS==================");
$display("TIME=%0t W_EN=%0d r_EN=%0d ADDRESS=%0d w_DATA=%0d,R_DATA=%0d",$time,trans.w_en,trans.r_en,trans.address,trans.w_data,trans.r_data);
   if(trans.w_en)begin
  ref_mem[trans.address]<=trans.w_data;
  $display("WRITE OPERATION SUCCESS");
  end 
  if(trans.r_en)begin
    if(ref_mem[trans.address]==trans.r_data)
      $display("READ OPERATION SUCCESS");
    else
      $display("READ OPERATION FAILED");
  end   $display("__________________________________________________________________________________________________________");
end
endtask
endclass 

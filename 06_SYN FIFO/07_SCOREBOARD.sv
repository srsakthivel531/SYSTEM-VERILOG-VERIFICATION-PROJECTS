class scoreboard;
transaction trans;
mailbox #(transaction)mon_to_sco;
bit [7:0]ref_q[$];
bit [7:0]exp_data;
  
function new(mailbox #(transaction) mon_to_sco);
this.mon_to_sco=mon_to_sco;
endfunction

task run();
repeat(40)
begin
mon_to_sco.get(trans);
  $display("SCOREBOARD SIGNALS");
$display("TIME=%0t wr_en=%0d rd_en=%0d data_in=%0d data_out=%0d full=%0d empty=%0d overflow=%0d underflow=%0d",$time,
trans.wr_en,trans.rd_en,trans.data_in,trans.data_out,trans.full,trans.empty,trans.overflow,trans.underflow);

// WRITE CHECK
if(trans.wr_en && !trans.overflow)
begin
ref_q.push_back(trans.data_in);
$display("WRITE PASS");
end

// READ CHECK
  if(trans.rd_en && !trans.underflow)
begin
   exp_data=ref_q.pop_front();

     if(exp_data==trans.data_out)begin
         $display("READ PASS");
       $display("ACTUAL VALUE=%0d  EXPEC-VALUE=%0d",trans.data_out,exp_data);
     end 
      else begin
         $display("READ FAIL");
        $display("ACTUAL VALUE=%0d  EXPEC-VALUE=%0d",trans.data_out,exp_data);
   end
   end 

  
// OVERFLOW
if(trans.overflow)
begin
$display("OVERFLOW DETECTED");
end

// UNDERFLOW
if(trans.underflow)
begin
$display("UNDERFLOW DETECTED");
end
$display("__________________________________________________________________________________________");
end
endtask
endclass

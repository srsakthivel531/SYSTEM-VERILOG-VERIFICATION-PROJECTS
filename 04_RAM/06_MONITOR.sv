class monitor;
transaction trans;
mailbox #(transaction) mon_to_sco;
virtual s_ram sr;

function new(mailbox #(transaction) mon_to_sco,virtual s_ram sr);
this.mon_to_sco=mon_to_sco;
this.sr=sr;
endfunction
  
task run();
repeat(20) begin
@(sr.mon_cb);
trans=new();
trans.w_en=sr.w_en;
trans.r_en=sr.r_en;
trans.address=sr.address;
trans.w_data=sr.w_data;
trans.r_data=sr.r_data;
$display("__________________________________________________________________________________________________________");
$display("====================MONITOR SIGNALS==================");
$display("TIME=%0t W_EN=%0d r_EN=%0d ADDRESS=%0d w_DATA=%0d R_DATA=%0d",$time,trans.w_en,trans.r_en,trans.address,trans.w_data,trans.r_data);
mon_to_sco.put(trans);
end 
endtask
endclass 

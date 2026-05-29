class driver;
transaction trans;
mailbox #(transaction) gen_to_dri;
virtual s_ram sr;

function new(mailbox #(transaction) gen_to_dri,virtual s_ram sr);
this.gen_to_dri=gen_to_dri;
this.sr=sr;
endfunction
  
task run();
repeat(20) begin
@(sr.cb);
gen_to_dri.get(trans);
sr.cb.w_en<=trans.w_en;
sr.cb.r_en<=trans.r_en;
sr.cb.address<=trans.address;
sr.cb.w_data<=trans.w_data;
$display("====================DRIVER SIGNALS==================");
$display("TIME=%0t W_EN=%0d r_EN=%0d ADDRESS=%0d w_DATA=%0d",$time,trans.w_en,trans.r_en,trans.address,trans.w_data);
end 
endtask
endclass 

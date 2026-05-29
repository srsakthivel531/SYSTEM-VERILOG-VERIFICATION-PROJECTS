class generator;
transaction trans;
mailbox #(transaction)gen_to_dri;
virtual s_ram sr;

function new(mailbox #(transaction) gen_to_dri,virtual s_ram sr);
this.gen_to_dri=gen_to_dri;
this.sr=sr;
endfunction
  
task run();
repeat(20) begin
@(sr.cb);
trans=new();
trans.randomize();
gen_to_dri.put(trans);
$display("__________________________________________________________________________________________________________");
$display("===================GENERATOR SIGNALS==================");
$display("TIME=%0t W_EN=%0d r_EN=%0d ADDRESS=%0d w_DATA=%0d",$time,trans.w_en,trans.r_en,trans.address,trans.w_data);
end 
endtask
endclass 

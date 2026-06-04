class generator;
transaction trans;
mailbox #(transaction)gen_to_drv;
virtual synfifo vif;
function new(mailbox #(transaction) gen_to_drv,virtual synfifo vif);
this.gen_to_drv=gen_to_drv;
this.vif=vif;
endfunction

task run();
@(negedge vif.rst);
repeat(40)
begin
trans=new();
trans.randomize();
transaction::count++;
gen_to_drv.put(trans);
end
endtask
endclass

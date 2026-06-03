class generator;
transaction trans;
mailbox #(transaction)gen_to_drv;
virtual dpram_if vif;
  
function new(mailbox #(transaction)gen_to_drv,virtual dpram_if vif);
this.gen_to_drv=gen_to_drv;
this.vif=vif;
endfunction

task run();
@(negedge vif.rst);
repeat(50)
begin
trans=new();
trans.randomize();
gen_to_drv.put(trans);
transaction::count++;
end
endtask
endclass

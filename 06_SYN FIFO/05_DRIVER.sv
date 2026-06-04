class driver;
transaction trans;
mailbox #(transaction)gen_to_drv;
virtual synfifo vif;

function new(mailbox #(transaction) gen_to_drv,virtual synfifo vif);
this.gen_to_drv= gen_to_drv;
this.vif=vif;
endfunction

task run();
repeat(40)
begin
@(vif.cb);
gen_to_drv.get(trans);
vif.cb.wr_en<=trans.wr_en;
vif.cb.rd_en<=trans.rd_en;
vif.cb.data_in<=trans.data_in; 
end
endtask
endclass

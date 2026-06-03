class driver;
transaction trans;
mailbox #(transaction)gen_to_drv;
virtual dpram_if vif;

function new(mailbox #(transaction)gen_to_drv,virtual dpram_if vif);
this.gen_to_drv=gen_to_drv;
this.vif=vif;
endfunction

task run();
repeat(50)
begin
@(vif.cb);
gen_to_drv.get(trans);
//PORT A
vif.cb.wr_a<=trans.wr_a;
vif.cb.rd_a<=trans.rd_a;
vif.cb.addr_a<=trans.addr_a;
vif.cb.wdata_a<=trans.wdata_a;
//PORT B 
vif.cb.wr_b<=trans.wr_b;
vif.cb.rd_b<=trans.rd_b;
vif.cb.addr_b<=trans.addr_b;
vif.cb.wdata_b<=trans.wdata_b;
end
endtask
endclass

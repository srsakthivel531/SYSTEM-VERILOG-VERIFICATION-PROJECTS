class driver;
transaction trans;
mailbox #(transaction) gen2drv;
virtual seq_inf vif;

 function new(mailbox #(transaction) gen2drv,virtual seq_inf vif);
this.gen2drv = gen2drv;
this.vif = vif;
endfunction

task run();
repeat(50)begin
@(vif.drv_cb);
gen2drv.get(trans);
vif.drv_cb.x<=trans.x;
vif.drv_cb.reset<=trans.reset;
trans.display("DRIVER SIGNALS");
end
endtask
endclass

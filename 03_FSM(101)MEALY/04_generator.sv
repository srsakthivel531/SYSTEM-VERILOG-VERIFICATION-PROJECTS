class generator;
transaction trans;
mailbox #(transaction) gen2drv;
virtual seq_inf vif;

function new(mailbox #(transaction) gen2drv,virtual seq_inf vif);
this.gen2drv=gen2drv;
this.vif=vif;
endfunction

task run();
repeat(50) begin
@(vif.drv_cb);
trans=new();
trans.randomize();
trans.display("GENERATOR SIGNALS");
gen2drv.put(trans);
end
endtask
endclass

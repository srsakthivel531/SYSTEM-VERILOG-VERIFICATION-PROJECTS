class monitor;
transaction trans;
mailbox #(transaction) mon2sco;
virtual seq_inf vif;

function new(mailbox #(transaction) mon2sco,virtual seq_inf vif);
this.mon2sco=mon2sco;
this.vif=vif;
endfunction

task run();
repeat(50)begin
@(vif.mon_cb);
trans=new();
trans.x=vif.x;
trans.reset=vif.reset;
trans.y=vif.y;
trans.display("MONITOR SIGNALS");
mon2sco.put(trans);
end
endtask
endclass

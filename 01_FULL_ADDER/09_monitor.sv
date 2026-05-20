class monitor;
transaction trans;
event drv_done;
mailbox #(transaction) mon_to_sco;
virtual adder_inf vif;
  function new(mailbox #(transaction) mon_to_sco,virtual adder_inf vif,event drv_done);
this.mon_to_sco=mon_to_sco;
this.vif=vif;
 this.drv_done=drv_done;
endfunction 
task run(); 
  repeat(5)
    begin
      @(drv_done); 
      trans=new();
      trans.a=vif.a;
      trans.b=vif.b;
      trans.cin=vif.cin;
      trans.sum=vif.sum;
      trans.carry=vif.carry;
      trans.display("MONITOR  SIGNALS");
      mon_to_sco.put(trans);
    end 
endtask
endclass 

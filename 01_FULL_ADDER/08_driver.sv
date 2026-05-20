class driver;
transaction trans;
event drv_done;
mailbox #(transaction) gen_to_dri;
virtual adder_inf vif;
function new(mailbox #(transaction) gen_to_dri,virtual adder_inf vif, event drv_done);
 this.gen_to_dri=gen_to_dri;
 this.vif=vif;
 this.drv_done=drv_done;
endfunction
task run();
  repeat(5)
    begin
      gen_to_dri.get(trans);
      vif.a=trans.a;
      vif.b=trans.b;
      vif.cin=trans.cin;
      #1;
      -> drv_done;
      trans.display("DRIVER  SIGNALS");
    end 
endtask 
endclass 

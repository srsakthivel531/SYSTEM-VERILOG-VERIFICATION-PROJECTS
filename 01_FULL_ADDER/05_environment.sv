class environment;
generator gen;
driver driv;
monitor  mon;
scoreboard sco;
event drv_done;
  mailbox #(transaction) mon_to_sco;
  mailbox #(transaction) gen_to_dri;
virtual adder_inf vif;
function new(virtual adder_inf vif);
this.vif=vif;
gen_to_dri=new();
mon_to_sco=new();
  gen=new(gen_to_dri);
  driv=new(gen_to_dri,vif,drv_done);
  mon=new(mon_to_sco,vif,drv_done);
  sco=new(mon_to_sco);
endfunction 
task main();
fork
  gen.run();
  driv.run();
  mon.run();
  sco.run();
join
endtask
endclass 
  
  

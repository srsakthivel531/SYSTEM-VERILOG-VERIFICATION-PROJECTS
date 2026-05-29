`include "transaction.sv"
`include "generator.sv"
`include "driver.sv"
`include "monitor.sv"
`include "scoreboard.sv"

class environment;
transaction trans;
generator gen;
monitor mon;
driver dri;
scoreboard sco;
mailbox #(transaction) mon_to_sco;
mailbox #(transaction)gen_to_dri;
virtual s_ram sr;
function new(virtual s_ram sr);
this.sr=sr;
mon_to_sco=new();
gen_to_dri=new();
gen=new(gen_to_dri);
dri=new(gen_to_dri,sr);
mon=new(mon_to_sco,sr);
sco=new(mon_to_sco);
endfunction 
task t();
fork 
gen.run();
dri.run();
mon.run();
sco.run();
join
endtask
endclass
  

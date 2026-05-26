`include "transaction.sv"
`include "generator.sv"
`include "driver.sv"
`include "monitor.sv"
`include "scoreboard.sv"

class environment;
generator gen;
driver drv;
monitor mon;
scoreboard sco;
mailbox #(transaction) gen2drv;
mailbox #(transaction) mon2sco;
virtual seq_inf vif;

function new(virtual seq_inf vif);
this.vif =vif;
gen2drv=new();
mon2sco=new();
gen=new(gen2drv,vif);
drv=new(gen2drv,vif);
mon=new(mon2sco,vif);
sco=new(mon2sco);
endfunction

task run();
fork
gen.run();
drv.run();
mon.run();
sco.run();
join
endtask
endclass

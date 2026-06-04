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
mailbox #(transaction)gen_to_drv;
mailbox #(transaction)mon_to_sco;

virtual synfifo vif;
function new(virtual synfifo vif);
this.vif=vif;
gen_to_drv=new();
mon_to_sco=new();
gen=new(gen_to_drv,vif);
drv=new(gen_to_drv,vif);
mon=new(mon_to_sco,vif);
sco=new(mon_to_sco);
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

class monitor;
transaction trans;
mailbox #(transaction)mon_to_sco;
virtual dpram_if vif;

function new(mailbox #(transaction)mon_to_sco,virtual dpram_if vif);
this.mon_to_sco=mon_to_sco;
this.vif=vif;
endfunction

task run();
repeat(50)
begin
@(vif.cb);
trans=new();
//PORT A
trans.wr_a=vif.wr_a;
trans.rd_a=vif.rd_a;
trans.addr_a=vif.addr_a;
trans.wdata_a=vif.wdata_a;
trans.rdata_a=vif.rdata_a;
//PORT B
trans.wr_b=vif.wr_b;
trans.rd_b=vif.rd_b;
trans.addr_b=vif.addr_b;
trans.wdata_b=vif.wdata_b;
trans.rdata_b=vif.rdata_b; $display("_____________________________________________________________________________________________________________________________________");
$display("MONITOR SIGNALS");
$display("===============PORT-A SIGNALS===================");
$display("TIME=%0t wr_a=%0d rd_a=%0d addr_a=%0d wdata_a=%0d rdata_a=%0d",$time,trans.wr_a,trans.rd_a,trans.addr_a,trans.wdata_a,trans.rdata_a);
$display("===============PORT-B SIGNALS===================");
$display("TIME=%0t wr_b=%0d rd_b=%0d addr_b=%0d wdata_b=%0d rdata_b=%0d",$time,trans.wr_b,trans.rd_b,trans.addr_b,trans.wdata_b,trans.rdata_b);
mon_to_sco.put(trans);
end
endtask
endclass

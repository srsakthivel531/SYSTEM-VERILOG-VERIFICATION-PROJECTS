class monitor;
transaction trans;
mailbox #(transaction)mon_to_sco;
virtual synfifo vif;

function new(mailbox #(transaction)mon_to_sco,virtual synfifo vif);
this.mon_to_sco=mon_to_sco;
this.vif = vif;
endfunction

task run();
  repeat(40)
begin
@(vif.cb);
trans=new();
trans.wr_en=vif.wr_en;
trans.rd_en=vif.rd_en;
trans.data_in=vif.data_in;
trans.data_out=vif.data_out;
trans.full=vif.full;
trans.empty=vif.empty;
trans.overflow=vif.overflow;
trans.underflow=vif.underflow;
mon_to_sco.put(trans);
$display("__________________________________________________________________________________________");
$display("MONITOR SIGNALS");
  $display("TIME=%0t wr_en=%0d rd_en=%0d data_in=%0d data_out=%0d full=%0d empty=%0d overflow=%0d underflow=%0d",$time,
trans.wr_en,trans.rd_en,trans.data_in,trans.data_out,trans.full,trans.empty,trans.overflow,trans.underflow);

end
endtask
endclass

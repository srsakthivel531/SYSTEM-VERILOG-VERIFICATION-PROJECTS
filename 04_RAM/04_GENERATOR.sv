class generator;
transaction trans;
mailbox #(transaction)gen_to_dri;


function new(mailbox #(transaction) gen_to_dri);
this.gen_to_dri=gen_to_dri;
endfunction
  
task run();
repeat(20) begin
trans=new();
trans.randomize();
gen_to_dri.put(trans);
end 
endtask
endclass 

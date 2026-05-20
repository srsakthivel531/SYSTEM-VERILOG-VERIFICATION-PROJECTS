//GENERATOR
class generator;
transaction trans;
mailbox #(transaction) gen_to_dri;
function new(mailbox #(transaction) gen_to_dri);
this.gen_to_dri=gen_to_dri;
endfunction 
task run();
  repeat(5)
    begin
      trans=new();
      trans.randomize();
      trans.display("GENERATOR SIGNAL");
      gen_to_dri.put(trans);
      #10;
    end 
endtask 
endclass 
      

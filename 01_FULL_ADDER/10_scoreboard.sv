class scoreboard;
transaction trans;
logic exp_sum;
logic exp_carry;
  mailbox #(transaction) mon_to_sco;
  function new(mailbox #(transaction) mon_to_sco);
this.mon_to_sco=mon_to_sco;
endfunction
task run();
  repeat(5)begin
    mon_to_sco.get(trans);
    trans.display("SCOREBOARD SIGNALS");
    exp_sum=trans.a^trans.b^trans.cin;
    exp_carry=(trans.a&trans.b)|(trans.b&trans.cin)|(trans.cin&trans.a);
    $display("=====================================");
    if(trans.sum==exp_sum && trans.carry==exp_carry)
      $display("VERIFICATION PASSED");
    else
      $display("VERIFICATION FAILED");
   $display("=====================================");
  end 
endtask 
endclass 
    

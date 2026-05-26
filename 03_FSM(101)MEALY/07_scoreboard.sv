class scoreboard;
transaction trans;
mailbox #(transaction) mon2sco;
bit [2:0] window;
int count=0;
int pass_count=0;
int fail_count=0;

function new(mailbox #(transaction) mon2sco);
this.mon2sco=mon2sco;
window=3'b000;
endfunction

task run();
repeat(50) begin
mon2sco.get(trans);
  if (trans.reset) begin
      window=3'b000;
      count=0;
    end
  else if(count==4)
    count=0;
  else begin
      window={window[1:0], trans.x};
      count++;
    if (count % 4==0)begin
      $display("=====================");
      if (window==3'b101)begin
          pass_count++;
             $display("FSM DETECTED");
      end 
         else begin
            $display("FSM NOT DETECTED");
        fail_count++;
         end 
    $display("=====================");

        end

      end

    end
     $display("=====================");
     $display("TOTAL PASS=%0d",pass_count);
     $display("TOTAL FAIL=%0d",fail_count);
     $display("=====================");
endtask
endclass

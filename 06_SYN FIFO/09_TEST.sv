`include "environment.sv"
program test(synfifo vif);
environment env;
initial begin
env=new(vif);
env.run();
end 
endprogram 

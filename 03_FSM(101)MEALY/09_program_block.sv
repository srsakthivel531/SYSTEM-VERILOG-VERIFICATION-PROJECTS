`include "environment.sv"
program test(seq_inf vif);
environment env;
initial begin
env=new(vif);
env.run();
end 
endprogram 

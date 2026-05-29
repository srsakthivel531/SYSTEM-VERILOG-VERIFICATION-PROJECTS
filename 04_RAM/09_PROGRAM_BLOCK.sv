`include "environment.sv"
program test(s_ram sr);
environment env;
initial begin 
env=new(sr);
env.t();
end 
endprogram 

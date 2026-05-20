class test;
environment env;
virtual adder_inf vif;
function new(virtual adder_inf vif);
this.vif=vif;
env=new(vif);
endfunction
task process();
env.main();
endtask 
endclass 

`include "transaction.sv"
`include "interface.sv"
`include "generator.sv"
`include "driver.sv"
`include "monitor.sv"
`include "scoreboard.sv"
`include "environment.sv"
`include "test.sv"
module tb;
adder_inf inf();
full_adder dut(inf);
initial begin
test t;
t=new(inf);
t.process();
#100 $finish;
end 
endmodule 

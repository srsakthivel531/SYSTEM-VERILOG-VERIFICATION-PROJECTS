`include "interface.sv"
`include "test.sv"
module tb;
logic clk=0;
always #5 clk=~clk;
seq_inf vif(clk);
seq_det_mealy dut(vif);
test t1(vif);
initial begin
#600$finish();
end 
endmodule

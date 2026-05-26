module seq_det_mealy(seq_inf inf);
parameter S0=2'b00,S1=2'b01,S2=2'b10;
reg [1:0]state,next_state;
// SEQUENTIAL LOGIC
always @(posedge inf.clk) begin
 if (inf.reset)
   state<=S0;
  else
   state<=next_state;
  end
  // COMBINATIONAL LOGIC
 always @(*)begin
    case(state)
      S0:next_state=(inf.x) ?S1:S0;
      S1:next_state=(inf.x)?S1:S2;
      S2:next_state=(inf.x)?S1:S0;
    default:next_state=S0;
  endcase
end
// OUTPUT LOGIC (MEALY)
assign inf.y = (state==S2&&inf.x==1);
endmodule

 

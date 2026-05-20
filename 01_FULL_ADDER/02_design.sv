module full_adder(adder_inf inf);
assign inf.sum=inf.a^inf.b^inf.cin;
assign inf.carry=(inf.a&inf.b)|(inf.b&inf.cin)|(inf.cin&inf.a);
endmodule

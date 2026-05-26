class transaction;
rand bit x;
rand bit reset;
bit y;
constraint c1 {
  reset dist {1:=1,0:=9};
};
  constraint c2{
    x dist{1:=6,0:=4};
  };
function void display(string name);
$display("================== %s ==================",name);
$display("$time=%0t x=%0b reset=%0b y=%0b", $time,x, reset, y);
$display("==========================================================");
endfunction
endclass

`timescale 1ns/1ps
module tb_mux2;
reg d0,d1,sel; wire y; integer errors=0;
mux2 dut(.d0(d0),.d1(d1),.sel(sel),.y(y));
task check; input reg a,b,s,e; begin d0=a;d1=b;sel=s;#1; if(y!==e) begin $display("FAIL"); errors=errors+1; end end endtask
initial begin check(0,1,0,0);check(0,1,1,1);check(1,0,0,1);check(1,0,1,0); if(errors==0)$display("TEST PASSED"); else $display("TEST FAILED: %0d errors",errors); $finish; end
endmodule

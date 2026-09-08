`timescale 1ns/1ps
module tb_and_gate;
reg a,b; wire y; integer errors=0;
and_gate dut(.a(a),.b(b),.y(y));
task check; input reg ta,tb,expected; begin a=ta;b=tb;#1; if(y!==expected) begin $display("FAIL"); errors=errors+1; end end endtask
initial begin check(0,0,0);check(0,1,0);check(1,0,0);check(1,1,1); if(errors==0)$display("TEST PASSED"); else $display("TEST FAILED: %0d errors",errors); $finish; end
endmodule

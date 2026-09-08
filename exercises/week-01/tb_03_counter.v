`timescale 1ns/1ps
module tb_counter;
reg clk=0,rst=1; wire [3:0] count; integer errors=0; integer i;
counter #(.WIDTH(4)) dut(.clk(clk),.rst(rst),.count(count)); always #5 clk=~clk;
initial begin repeat(2) @(posedge clk); #1; if(count!==4'd0) errors=errors+1; rst=0; for(i=1;i<=5;i=i+1) begin @(posedge clk);#1; if(count!==i[3:0]) errors=errors+1; end if(errors==0)$display("TEST PASSED"); else $display("TEST FAILED: %0d errors",errors); $finish; end
endmodule

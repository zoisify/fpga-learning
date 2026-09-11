# Project 03 — Fixed-Point Pipelined FFT

**What it is:** a deliberately small fixed-point pipelined FFT implemented in SystemVerilog and validated against MATLAB.  
**Why it exists:** to demonstrate DSP-oriented RTL, pipelining, timing analysis and engineering trade-offs beyond basic protocol/control logic.  
**What I expect to learn:** fixed-point arithmetic, latency/throughput reasoning, synthesis/resource analysis, timing closure and performance/precision trade-offs.

> Status: planned / starts January 2027. This project deliberately introduces SystemVerilog only after the VHDL-only phase ends.

## Planned evidence

- MATLAB golden/reference model
- fixed-point arithmetic and generated test vectors
- SystemVerilog radix-2 butterfly
- deliberately small pipelined FFT stages
- self-checking verification
- one useful waveform or architecture image near the top once evidence exists
- synthesis and implementation
- LUT/FF/DSP/BRAM resource evidence where relevant
- timing/WNS evidence
- at least one justified timing/pipelining improvement
- precision/resource/latency/throughput trade-off analysis

Python/NumPy is not required for the reference model.

Transform size is secondary to demonstrating correct fixed-point reasoning, verification, pipelining and timing improvement.

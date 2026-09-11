# FPGA & Digital Design Portfolio

FPGA and digital-design portfolio documenting my transition from aerospace engineering into RTL and programmable-logic development alongside an MSc in Aerospace Engineering at the University of Manchester.

My current work focuses on **VHDL RTL design, verification, synthesis and digital-system fundamentals**, progressing toward **SystemVerilog, fixed-point DSP and timing-driven design**.

## Projects

| Project | Focus | Status |
|---|---|---|
| [Aerospace Telemetry Receiver](01-telemetry-receiver/) | VHDL, UART RX, FSMs, packet parsing, checksum validation, self-checking verification, synthesis | In development |
| [FIFO & Clock-Domain Crossing](02-fifo-cdc/) | synchronous FIFO, metastability, synchronisers, Gray-code pointers, asynchronous FIFO | Planned |
| [Fixed-Point Pipelined FFT](03-fixed-point-fft/) | SystemVerilog, fixed-point DSP, pipelining, MATLAB validation, timing/resource trade-offs | Planned |

## Technical focus

- synchronous RTL design
- VHDL
- self-checking testbenches
- UART and packet-based interfaces
- FIFO design and clock-domain crossing
- Vivado simulation, synthesis and implementation
- timing and resource analysis
- SystemVerilog and fixed-point DSP as the portfolio develops

## Engineering approach

Projects are developed simulation-first and documented with evidence rather than skill claims. Where relevant, completed work includes:

- readable RTL
- self-checking testbenches with explicit pass/fail behaviour
- edge-case verification
- reproducible simulation instructions
- synthesis and resource-utilisation evidence
- timing evidence when timing performance is discussed

The repository verification conventions are documented in [`TESTING.md`](TESTING.md).

## Fundamentals

The [`exercises/`](exercises/) directory contains smaller VHDL designs used to build RTL fluency alongside the main projects. These are learning exercises rather than portfolio projects.

## Tools

**HDLs:** VHDL; SystemVerilog introduced for later DSP work  
**FPGA toolchain:** AMD Vivado / XSim  
**Numerical validation:** MATLAB  
**Version control:** Git / GitHub

---

This repository is intentionally evidence-based: project READMEs are updated as implementations, verification results and synthesis/timing evidence are completed.
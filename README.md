# FPGA Learning Portfolio

A public record of my conversion from aerospace engineering into FPGA and digital design.

**Current status (8 September 2026): Week 1.** I am working through digital-logic and HDL fundamentals. The project folders below are roadmap items unless their README explicitly says `in progress` or `complete`. I have not yet claimed board verification, timing closure, scripted Vivado builds, or production-level HDL experience.

I hold a 2:1 BEng in Aerospace Engineering and start an MSc in Aerospace Engineering on 22 September 2026. The MSc remains the priority; FPGA work drops sharply once term begins.

## Portfolio structure

| # | Project | Status | What it is intended to demonstrate |
|---|---|---|---|
| 01 | Basic sequential logic | Planned | counters, clock division, reset behaviour, simulation-first workflow |
| 02 | Traffic-light FSM | Planned | finite-state-machine design, timed transitions, state-based verification |
| 03 | UART - Verilog and VHDL | Planned | serial interfaces, baud timing, equivalent implementations in two HDLs |
| 04 | FIFO | Planned | synchronous buffering first, then CDC using Gray-code pointers and synchronizers |
| 05 | UART into FIFO | Planned | module integration, back-pressure/overflow handling, interface-level verification |
| 06 | SPI master - VHDL | Planned | VHDL RTL, synchronous serial protocol control, configurable timing |
| 07 | I2C master | Planned | open-drain signalling, ACK/NACK handling, protocol-state control |
| 08 | VGA Pong | Planned | video timing and integration of multiple RTL blocks into a small system |
| 09 | Fixed-point pipelined FFT | Planned | SystemVerilog, pipelining, fixed-point analysis, resource/precision trade-offs, timing closure |
| 10 | Quantised MNIST with HLS | Planned | C/C++-based HLS, quantisation trade-offs, hardware/software-oriented acceleration workflow |

Week-1 learning exercises live under [`exercises/`](exercises/) and are not counted as portfolio projects.

## Evidence standard

A skill is only described as **demonstrated** after the repository contains evidence for it. Depending on the project, that means some combination of:

- synthesizable RTL;
- a self-checking testbench with explicit pass/fail behaviour;
- simulator output or reproducible test instructions;
- synthesis/implementation reports;
- timing constraints and timing reports;
- scripted builds or regressions that work from a clean checkout;
- board results, when hardware is available.

Until that evidence exists, project READMEs use forward-looking language such as `will demonstrate` rather than claiming completion.

## Languages and tools

Current learning starts with Verilog. SystemVerilog features are introduced gradually. VHDL is co-equal in the roadmap: the UART will be implemented in both Verilog and VHDL, and the SPI master will be VHDL-only.

Planned tools include AMD Vivado ML Standard 2025.2, XSim, Tcl/Make-based batch flows, and Python/NumPy for later reference models. Hardware work will follow simulation rather than replace it.

## Testing

The repository's test philosophy is defined in [`TESTING.md`](TESTING.md). The short version is: self-checking first, waveforms for diagnosis rather than proof, and no project is labelled complete until its verification evidence is committed.

## Roadmap

The dated 31-week schedule is in [`PLAN.md`](PLAN.md). It is deliberately conservative after 22 September because the MSc takes priority.

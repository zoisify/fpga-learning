# FPGA Learning Portfolio

Aerospace engineer self-training into FPGA and digital design, targeting a PhD in
reconfigurable computing (2027 entry) and FPGA/hardware graduate and conversion
roles. This repo tracks that journey in public: every project, mistake and revision.

## Who I am

I'm Alex Polyzois, an aerospace engineering graduate (MSc, University of Manchester)
teaching myself digital design from first principles: combinational and sequential
logic, finite state machines, interfaces, and eventually hardware acceleration.
My background is in aircraft systems and aerodynamics; the common thread is
engineering rigour applied to a new domain.

## What's here

Self-contained Verilog projects, developed simulation-first (EDA Playground and
AMD Vivado) and later verified on a Digilent Basys 3 board. Every module ships with
a **self-checking testbench**: no "look at the waveform and eyeball it" - each
testbench asserts expected behaviour and reports pass/fail in the simulator log.

Projects build in order of difficulty:

| # | Project | What it practises |
|---|---------|-------------------|
| 01 | LED blinker | Clocks, counters, basic sequential logic |
| 02 | Traffic light FSM | Finite state machines, timed transitions (+ a VHDL port) |
| 03 | UART | Serial protocols, baud generation, RX/TX |
| 04 | FIFO | Clock-domain crossing: Gray-code pointers, synchronizers, metastability |
| 05 | SPI master | Synchronous serial interfaces, shift registers |
| 06 | AXI4-Lite slave | Memory-mapped bus protocols, handshaking |
| 07 | I2C master | Multi-master bus, open-drain signalling |
| 08 | VGA pong | Video timing, a complete small system (the fun one) |
| 09 | FFT | Pipelined fixed-point DSP, precision-vs-resource analysis, timing closure |
| 10 | HLS MNIST (optional, PhD track) | High-level synthesis, quantised neural network inference |
| 11 | Zynq SoC peripheral | AXI4-Lite peripheral on a Zynq, PS-PL integration, bare-metal driver |

Two things worth flagging:

- **VHDL matters.** Most UK FPGA teams are VHDL-first, so project 02 gets a VHDL
  port alongside the Verilog original - the portfolio shows both languages.
- **Timing closure is a first-class topic.** Project 09 (FFT) is constrained with
  XDC timing constraints and re-pipelined until it meets timing at 100 MHz, then
  pushed further. Reading a timing report is a skill, not a side effect.

Each project folder has its own README with design notes, the testbench strategy,
and a "what I tried differently" section on the iterations that didn't work first
time - the learning is in the diffs.

## Build flow

Every project builds and tests with one command. Each folder carries a Makefile
wrapping a Vivado Tcl batch script: `make` builds the design, `make test` runs the
full self-checking regression and prints the pass/fail summary. No clicking
through a GUI - the repo builds from a clean checkout.

## Tools

- **Verilog / SystemVerilog** - RTL and testbenches, plus **VHDL** for the ported project
- **AMD Vivado ML Standard** - synthesis, implementation, simulation (XSim)
- **Make + Tcl** - scripted, one-command builds and regressions
- **EDA Playground** - quick browser-based simulation and sharing
- **Basys 3 (Artix-7)** - target board for on-hardware projects
- **Python / NumPy** - reference models and test-vector generation for the DSP work

## Conventions

All projects follow the testbench convention described in
[TESTING.md](TESTING.md). Code is pushed as written - messy commits included -
because the commit trail is part of the portfolio.

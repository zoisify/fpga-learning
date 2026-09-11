# Project 02 — FIFO & Clock-Domain Crossing

**What it is:** a staged VHDL project progressing from a synchronous FIFO to an asynchronous dual-clock FIFO.  
**Why it exists:** to demonstrate buffering, full/empty control, metastability awareness and practical clock-domain-crossing reasoning.  
**What I expect to learn:** pointer management, synchronisers, Gray-code transfer, independent clock-domain behaviour and verification of CDC-sensitive logic.

> Status: planned / not started. No CDC competence is claimed until both the implementation and the reasoning are documented and verified.

## Planned stages

1. Synchronous FIFO in VHDL.
2. CDC fundamentals: metastability, two-flop synchronisers, multi-bit crossing risks and Gray-code reasoning.
3. Asynchronous dual-clock FIFO with unrelated clocks in simulation.

## Evidence required before calling it complete

- parameterised width/depth where practical
- verified full/empty behaviour
- simultaneous read/write handling
- pointer wraparound tests
- unrelated read/write clocks for the asynchronous FIFO
- documented synchroniser and Gray-code reasoning
- self-checking testbench evidence
- one useful waveform screenshot near the top once evidence exists
- synthesis/resource evidence
- limitations and assumptions

# Verification convention

This file defines the verification standard I am working toward. It is a convention, not a claim that every planned project already satisfies it.

## Minimum standard for a completed RTL project

1. **Self-checking testbench.** The testbench calculates or stores expected behaviour and reports failures automatically. A waveform is useful for debugging but is not the pass criterion.
2. **Explicit pass/fail result.** A successful run must finish with an unambiguous `TEST PASSED` message; mismatches must increment an error count or stop with an error.
3. **Reset is tested.** Reset assertion, release, and post-reset outputs are checked.
4. **Nominal and edge cases are separate tests.** Examples include UART back-to-back bytes, malformed telemetry packets, FIFO full/empty and pointer wraparound.
5. **Simulation before hardware.** Board testing is only added after simulation passes.
6. **Reproducibility.** Once the tool flow is established, each project should include enough instructions/scripts to reproduce simulation from a clean checkout.
7. **Evidence is committed.** A README may only say a behaviour is verified if the relevant testbench and reproducible procedure are in the repository.

## File naming

### VHDL phase — September to December 2026

- RTL: `<module>.vhd`
- testbench: `tb_<module>.vhd`

### SystemVerilog phase — from January 2027

- RTL: `<module>.sv`
- testbench: `tb_<module>.sv`

As projects become larger, source and testbench files may move into `rtl/` and `tb/` directories.

## Language guardrail

Through 31 December 2026, active HDL work in this repository is VHDL only. No Verilog exercises, side projects, or dual-language reimplementations are part of the active plan. SystemVerilog begins in January 2027 with the FFT project.

## Self-checking pattern

A small testbench should normally contain stimulus generation, automatic checks, an error counter, descriptive failure messages, and a final pass/fail summary.

For the FFT project, expected vectors come from a MATLAB reference model. For protocol work, the testbench should model the other endpoint rather than only toggling pins blindly.

## Timing and CDC

Functional simulation is not sufficient evidence for timing closure or CDC correctness.

- Timing claims require committed constraints plus implementation/timing-report evidence.
- CDC claims require a documented crossing architecture and checks appropriate to that design. For the asynchronous FIFO this means Gray-coded pointers, synchronizer stages, unrelated clocks in simulation, and explicit reasoning about what may and may not cross domains directly.

## Scripted builds

Scripted Vivado/Tcl or Make targets are a later milestone. Until they exist and run from a clean checkout, READMEs must call them `planned`, not `available`.

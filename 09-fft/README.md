# 09 - Fixed-point pipelined radix-2 FFT

**Status:** planned for January-February 2027.

## What it will demonstrate

- SystemVerilog used on a larger datapath;
- fixed-point arithmetic and pipelined DSP structure;
- comparison against a Python/NumPy reference;
- measured precision-versus-resource trade-offs;
- timing constraints, implementation reports and genuine timing-closure iteration;
- scripted/reproducible builds once the flow is established.

## Scope

Begin with a deliberately small transform and a verified butterfly. Scale only after the fixed-point format and pipeline are understood.

## Verification target

Generate test vectors from NumPy, compare fixed-point outputs automatically, test multiple signal classes, and quantify numerical error.

Timing closure is not claimed until constraints and implementation evidence are committed.

## What I tried differently

This section will record failed/changed fixed-point, scaling or pipeline decisions and their measured consequences.

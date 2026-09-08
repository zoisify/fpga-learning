# 07 - I2C master

**Status:** planned.

## What it will demonstrate

- open-drain style bus control;
- start/repeated-start/stop sequencing;
- ACK/NACK handling;
- protocol-oriented FSM design and simulated peripheral interaction.

## Scope

Start with a constrained single-master implementation and simulated slave/monitor. Arbitration and clock stretching are extensions, not assumed features.

## Verification target

Check address/data bit order, ACK/NACK paths, start/stop timing, reset and at least one error path.

## What I tried differently

To be completed during implementation.

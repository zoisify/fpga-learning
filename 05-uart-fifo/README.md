# 05 - UART into FIFO

**Status:** planned.

## What it will demonstrate

- integration of independently verified RTL blocks;
- streaming data flow from a serial receiver into buffered storage;
- interface-level verification;
- overflow/back-pressure/error-handling decisions.

## Scope

Connect the UART receive path to the FIFO and provide a controlled read-out path in simulation.

## Verification target

Send multiple byte sequences through a UART behavioural stimulus source, verify FIFO ordering, exercise near-full/full behaviour, and check reset during/around traffic.

## What I tried differently

To be completed during implementation, focusing on an integration problem that was not visible in the standalone modules.

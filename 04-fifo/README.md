# 04 - FIFO and clock-domain crossing

**Status:** planned.

## What it will demonstrate

- synchronous FIFO control and pointer wraparound;
- full/empty handling and simultaneous read/write behaviour;
- later extension to an asynchronous dual-clock FIFO;
- CDC reasoning using Gray-coded pointers and synchronizer stages.

## Scope

Start with a synchronous FIFO. Only after that version is understood and verified will it be extended to unrelated write/read clocks.

## Verification target

For the synchronous version: reset, ordering, full/empty, wraparound, simultaneous operations. For the asynchronous version: unrelated clocks, data integrity, pointer crossing, and boundary behaviour.

No CDC claim will be made until the asynchronous design, testbench, and crossing explanation are committed.

## What I tried differently

To be completed during implementation.

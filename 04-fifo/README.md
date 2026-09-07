# FIFO (clock-domain crossing)

**Status:** not started yet - this is a placeholder while I work through the
earlier projects.

A synchronous FIFO with full/empty flags first, then the real point of the
project: an **asynchronous dual-clock FIFO** built as a proper clock-domain-crossing
exercise:

- Gray-code read/write pointers, so multi-bit pointer crossings are glitch-safe
- two-flop synchronizers on the crossing paths
- metastability treated explicitly - what it is, why synchronizers tame it, and
  the MTBF reasoning behind the two-flop rule

The testbench drives the two clocks from unrelated frequencies and checks
full/empty behaviour, pointer wraparound, and data integrity across the domain
crossing.

When this project lands it will include the RTL, a self-checking testbench (see
[TESTING.md](../TESTING.md)), and design notes with a "what I tried differently"
section.

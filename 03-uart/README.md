# 03 - UART in Verilog and VHDL

**Status:** planned.

## What it will demonstrate

- UART transmit/receive framing and baud timing;
- self-checking protocol verification;
- equivalent RTL implemented in both Verilog and VHDL;
- ability to explain HDL differences rather than only translate syntax.

## Scope

Build the Verilog implementation first, verify it, then implement the same defined behaviour in VHDL. TX and RX may be developed separately before loopback integration.

## Verification target

Check start/data/stop-bit timing, multiple byte patterns, back-to-back transfers, reset behaviour, and receive error cases that are implemented.

## What I tried differently

To be completed during implementation; the comparison between the two HDL versions will form part of this section.

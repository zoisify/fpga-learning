# Project 01 — Aerospace Telemetry Receiver

**What it is:** a VHDL telemetry-receiver pipeline built from independently verified UART, packet-parsing and checksum blocks.  
**Why it exists:** to demonstrate practical RTL design, protocol handling, verification and synthesis using an aerospace-relevant data path.  
**What I expect to learn:** synchronous VHDL design, FSM decomposition, serial timing, self-checking verification, integration and basic synthesis/timing analysis.

> Status: planned / not started. No project skill is claimed until the RTL, self-checking testbench and relevant synthesis evidence are committed.

## Planned architecture

```text
Serial input
    ↓
UART RX
    ↓
Packet parser
    ↓
8-bit additive checksum validator
    ↓
Register/storage
    ↓
Valid data + status/error outputs
```

The RTL modules stay generic and reusable (`uart_rx.vhd`, `packet_parser.vhd`, `checksum.vhd`, `telemetry_receiver.vhd`); the aerospace context is the use case, not a hard-coded dependency.

## Development stages

1. Standalone VHDL UART RX.
2. Standalone packet parser.
3. 8-bit additive checksum validator.
4. Integrated telemetry receiver with register/storage and status/error outputs.

CRC is optional stretch work only.

## Evidence required before calling it complete

- readable VHDL RTL
- self-checking testbenches
- valid and corrupted packet cases
- reset and back-to-back traffic tests
- architecture explanation
- reproducible simulation instructions
- one useful waveform screenshot near the top once evidence exists
- synthesis/resource evidence
- basic timing evidence
- known limitations

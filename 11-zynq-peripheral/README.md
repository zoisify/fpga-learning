# Zynq SoC peripheral

**Status:** not started yet - this is a placeholder while I work through the
earlier projects.

An AXI4-Lite peripheral on a Zynq SoC: custom logic in the programmable logic,
driven from the ARM processing system with a bare-metal (Vitis) driver. This is
the industry-track counterpart to project 10 - SoC devices and hardware/software
co-design come up constantly in FPGA job postings.

What it practises beyond project 06 (which builds an AXI4-Lite slave from scratch
in pure RTL): PS-PL block design, address mapping, interrupts, and the
hardware/software boundary - packaging an RTL block so software can actually use it.

When this project lands it will include the RTL, a self-checking testbench (see
[TESTING.md](../TESTING.md)), and design notes with a "what I tried differently"
section.

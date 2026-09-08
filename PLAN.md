# 31-week FPGA learning plan

**Anchor:** Week 1 starts 8 September 2026.  
**Constraint:** MSc Aerospace Engineering starts 22 September 2026 and takes priority from that date.  
**Standing rules:** simulate first; use self-checking testbenches; keep Git history; Verilog first, SystemVerilog progressively; VHDL is co-equal rather than optional.

## Week-by-week schedule

| Week | Dates | Focus |
|---|---|---|
| 1 | 8-14 Sep 2026 | Digital-logic/Verilog fundamentals; FPGA 101 lessons 1-4; HDL exercises daily; add tiny RTL files with self-checking testbenches; use reference material only when blocked. |
| 2 | 15-21 Sep | Finish FPGA 101 lessons 5-7; continue HDL exercises; install Vivado ML Standard 2025.2; learn project creation, XSim, elaboration, and basic waveform debugging. No board required. |
| 3 | 22-28 Sep | **MSc starts. Reduce workload.** Build counter + LED blinker in simulation. Target roughly 1 hour/day of HDL exercises only if MSc work allows, plus one weekend project block. |
| 4 | 29 Sep-5 Oct | Traffic-light FSM in Verilog with self-checking testbench. Start basic Vivado synthesis flow. |
| 5 | 6-12 Oct | UART TX in Verilog; baud tick generation; self-checking transmit test. Begin interview-style digital-logic questions. |
| 6 | 13-19 Oct | UART RX in Verilog; loopback-level simulation. Continue interview prep. |
| 7 | 20-26 Oct | Re-implement UART core in VHDL. Document language differences rather than copying syntax mechanically. |
| 8 | 27 Oct-2 Nov | Synchronous FIFO first: full/empty, wraparound, simultaneous read/write. Interview preparation remains active. |
| 9 | 3-9 Nov | Extend FIFO toward asynchronous dual-clock operation; study metastability, two-flop synchronizers, Gray-code pointers. |
| 10 | 10-16 Nov | Complete asynchronous FIFO verification with unrelated clocks. Do not claim CDC competence until the design and reasoning are both documented. |
| 11 | 17-23 Nov | UART-to-FIFO integration project; overflow/back-pressure behaviour and end-to-end self-checking testbench. Start C basics alongside HDL. |
| 12 | 24-30 Nov | VHDL-only SPI master, mode 0 first; simulated slave model. C: types, control flow, functions, arrays, pointers. |
| 13 | 1-7 Dec | SPI refinement and documentation; C: structs, bitwise operators, memory basics. Continue application/interview preparation. |
| 14 | 8-14 Dec | I2C master: start/stop, address/data transfer, ACK/NACK. C practice continues. |
| 15 | 15-21 Dec | I2C simulated slave/monitor and edge cases. Consolidate C fundamentals. |
| 16 | 22-28 Dec | Lower-intensity consolidation week: fix tests/docs, review HDL interview fundamentals, no forced new major project. |
| 17 | 29 Dec-4 Jan 2027 | Small fun project: VGA Pong if time permits. If MSc assessment pressure is high, defer it rather than sacrificing marks. |
| 18 | 5-11 Jan | FFT preparation: fixed-point arithmetic, radix-2 butterfly, scaling strategy, NumPy reference model. |
| 19 | 12-18 Jan | Implement and verify a single fixed-point butterfly in SystemVerilog. |
| 20 | 19-25 Jan | Build first pipelined FFT stages; develop vector-based comparison against NumPy. |
| 21 | 26 Jan-1 Feb | Complete functional FFT pipeline for a deliberately small transform size before scaling ambition. |
| 22 | 2-8 Feb | Sweep word lengths; quantify numerical error versus fixed-point precision. |
| 23 | 9-15 Feb | Vivado synthesis/implementation; record LUT/FF/DSP usage; add initial XDC timing constraint. |
| 24 | 16-22 Feb | Timing-closure iteration: inspect WNS/failing paths and re-pipeline where justified. Do not target arbitrary frequency increases until the baseline design is stable. |
| 25 | 23 Feb-1 Mar | Finish FFT write-up: precision vs resources vs achieved timing. Buffer week if the MSc has displaced earlier work. |
| 26 | 2-8 Mar | HLS tooling introduction; refresh C/C++ needed for synthesis; complete simple getting-started kernels. |
| 27 | 9-15 Mar | HLS interfaces, loops, pipelining/unrolling concepts; compare software result with C simulation. |
| 28 | 16-22 Mar | Quantised MNIST preparation: obtain a small software baseline and define quantisation experiment. |
| 29 | 23-29 Mar | Implement a minimal HLS inference kernel; prioritise a working small design over network size. |
| 30 | 30 Mar-5 Apr | Vary quantisation precision; capture synthesis estimates/resource usage and functional accuracy. |
| 31 | 6-12 Apr | Finalise HLS project documentation and repository cleanup. Freeze FPGA work after this for MSc dissertation focus through August 2027. |

## Reality check

The schedule is aggressive once the MSc starts. October-December combines a UART in two HDLs, synchronous + asynchronous FIFO, integration, SPI, I2C, C basics, interview preparation, and MSc coursework. That is not realistically deep work on a strict 1-hour-per-day schedule.

Priority if time is lost: MSc work; HDL fundamentals/testing; dual-language UART; FIFO/CDC and UART-FIFO; VHDL SPI; C/interview fundamentals; I2C; fun project. The fun project is first to defer, and I2C may slip into January. The FFT should not start until earlier projects are genuinely verified.

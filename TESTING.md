# Testbench convention

Every module in this repo ships with a self-checking testbench. The rules:

1. **Self-checking, not visual.** Testbenches compare DUT outputs against expected
   values with `$display`/`$error` (or assertions) and print a final
   `TEST PASSED` / `TEST FAILED` summary. A passing project never requires
   eyeballing a waveform.
2. **Reference models where useful.** For anything non-trivial (FFT, filters),
   expected outputs come from a Python/NumPy reference, loaded into the testbench
   as hex vectors with `$readmemh`.
3. **Edge cases are tests too.** Reset behaviour, back-to-back transactions, and
   boundary conditions (FIFO full/empty, UART overrun) get dedicated checks.
4. **Simulate first, board second.** Nothing goes on the Basys 3 until the
   self-checking testbench passes in simulation.
5. **Named consistently.** `tb_<module>.v` next to `<module>.v` in each project
   folder.
6. **One-command regression.** Each project has a Makefile wrapping a Vivado Tcl
   batch flow: `make test` builds and runs every testbench in batch mode and
   prints the summary. A project isn't done until `make test` passes from a clean
   checkout.
7. **Simulator breadth.** Vivado XSim is the default here. Getting the same
   testbenches running under Questa/ModelSim is an explicit goal - many employers
   standardise on Siemens simulators, so familiarity with them is part of the plan.

# 1:8 Demultiplexer

A 1:8 Demultiplexer routes one input (`i`) to one of eight outputs (`y[0]` to `y[7]`) based on the 3-bit select signal (`sel`).

## Files

* `demux_1x8.v` — Verilog design
* `demux_1x8_tb.v` — Testbench
* `demux.png` — Simulation waveform  

## Implementation

The Demultiplexer is implemented using an `always @(*)` block and a `case` statement. The output is initialized to zero, and the input is routed to the output selected by `sel`.

## Verification

All 8 select combinations were tested using the Verilog testbench. The simulation verifies that the input is routed to the correct output.
 

# 8:1 Multiplexer

An 8:1 Multiplexer selects one of eight input signals (`i[0]` to `i[7]`) and passes the selected input to the output `y` based on the 3-bit select signal (`sel`).

## Files

- `mux_8x1.v` — Verilog design
- `mux_8x1_tb.v` — Testbench
- `mux_8x1.png` — Simulation waveform
- `rtl_schematic.png` — RTL schematic

## Truth Table

| sel | Selected Input | y |
|---|---|---|
| 000 | `i[0]` | `i[0]` |
| 001 | `i[1]` | `i[1]` |
| 010 | `i[2]` | `i[2]` |
| 011 | `i[3]` | `i[3]` |
| 100 | `i[4]` | `i[4]` |
| 101 | `i[5]` | `i[5]` |
| 110 | `i[6]` | `i[6]` |
| 111 | `i[7]` | `i[7]` |

## Implementation

The 8:1 MUX is implemented using an `always @(*)` block and a `case` statement to select one input based on the value of `sel`.

## Verification

All **8 select combinations** were tested using the Verilog testbench and verified through Vivado simulation.

## RTL Schematic

![8:1 MUX RTL Schematic](rtl_schematic.png)

## Simulation Waveform

![8:1 MUX Simulation Waveform](mux_8x1.png)

 

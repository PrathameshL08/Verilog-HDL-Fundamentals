# 1-Bit Full Adder

A 1-bit Full Adder adds three binary inputs (`A`, `B`, and `Cin`) and produces two outputs (`Sum` and `Cout`).

## Files

- `full_adder.v` — Verilog design
- `full_adder_tb.v` — Testbench
- `rtl_schematic.png` — RTL schematic
- `waveform.png` — Simulation waveform

## Boolean Expressions

```text
Sum  = A ^ B ^ Cin
Cout = (A & B) | ((A ^ B) & Cin)

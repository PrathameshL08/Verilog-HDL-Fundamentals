# 4-Bit Ring Counter

## Overview 
A ring counter is a sequential circuit made using flip-flops. In this circuit, the output of the last flip-flop is connected directly to the input of the first flip-flop.

In this project, I have designed a 4-bit ring counter using Verilog HDL and simulated it in Xilinx Vivado. The counter starts from `0001` and shifts the logic `1` through the four flip-flops.

## Working
The counter works on the positive edge of the clock.

- When `rst = 1`, the counter is set to `0001`.
- When `rst = 0`, the bits shift by one position on every rising clock edge.
- The last bit, `q[3]`, is fed back to the first stage.
- After four clock cycles, the counter returns to its initial state.


## Counting Sequence

| Clock Edge | Output `q[3:0]` |
|---|---|
| Reset | `0001` |
| 1 | `0010` |
| 2 | `0100` |
| 3 | `1000` |
| 4 | `0001` |

The same sequence repeats after every four clock cycles.

## Files in This Project
- `ring_counter.v` – Verilog code for the ring counter.
- `ring_counter_tb.v` – Testbench used to test the design.
- `waveform.png` – Simulation waveform.

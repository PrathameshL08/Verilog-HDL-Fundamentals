# 4-Bit Johnson Counter

## Overview
This project implements a **4-bit Johnson Counter** using Verilog HDL. A Johnson counter is a sequential circuit in which the inverted output of the last flip-flop is fed back to the input of the first flip-flop.

A 4-bit Johnson counter generates **8 distinct states** using four flip-flops. The design uses a synchronous active-high reset and positive-edge-triggered operation.

## Features
- 4-bit Johnson counter
- 4 D flip-flops
- 8 distinct counter states
- Synchronous active-high reset
- Positive-edge-triggered operation
- RTL design and behavioral simulation using Xilinx Vivado

## Working Principle
At every positive edge of the clock:
- If `rst = 1`, the counter resets to `0000`.
- If `rst = 0`, the counter shifts its current bits and feeds the inverted value of `q[3]` back into `q[0]`.

### Next-State Equation

```verilog
q <= {q[2:0], ~q[3]};
```

Where:
- `q[3:0]` represents the 4-bit counter state.
- `~q[3]` is the inverted output of the last stage.
- The inverted feedback generates the Johnson counting sequence.

## Counting Sequence

Starting from `0000`, the counter follows this sequence:

| Clock Edge | Counter State (`q[3:0]`) |
|---:|:---:|
| Reset | `0000` |
| 1 | `0001` |
| 2 | `0011` |
| 3 | `0111` |
| 4 | `1111` |
| 5 | `1110` |
| 6 | `1100` |
| 7 | `1000` |
| 8 | `0000` |

The sequence repeats after eight clock cycles.

For a Johnson counter with \(n\) flip-flops, the maximum number of states in its normal sequence is:

\[
\text{Number of states}=2n
\]

For \(n=4\), the counter produces \(2 \times 4 = 8\) states.

## Project Files

| File | Description |
|---|---|
| `johnson_counter.v` | Verilog design module |
| `johnson_counter_tb.v` | Testbench for functional verification |
| `waveform.png` | Simulation waveform showing the counting sequence |


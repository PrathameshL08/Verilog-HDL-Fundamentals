# JK Flip-Flop

## Overview
This project implements a **positive-edge-triggered JK Flip-Flop** using Verilog HDL. It stores one bit of data and supports hold, set, reset, and toggle operations. The design also includes a synchronous active-high reset.

## Features
- Positive-edge-triggered operation.
- Synchronous active-high reset.
- Hold, set, reset, and toggle functionality.
- Designed using Verilog HDL.
- Simulated and verified using Xilinx Vivado.

## Inputs and Outputs

| Signal | Direction | Description |
|---|---|---|
| `j` | Input | J input |
| `k` | Input | K input |
| `clk` | Input | Clock signal |
| `rst` | Input | Active-high synchronous reset |
| `q` | Output | Stored output bit |

## Truth Table

| `rst` | `j` | `k` | Next State (`Q`) | Operation |
|---|---|---|---|---|
| 1 | X | X | 0 | Reset |
| 0 | 0 | 0 | Q | Hold |
| 0 | 0 | 1 | 0 | Reset |
| 0 | 1 | 0 | 1 | Set |
| 0 | 1 | 1 | Q̅ | Toggle |

`X` means the input value does not matter for that operation. `Q` represents the current output, and `Q̅` represents its complement.

## Working Principle
The JK Flip-Flop updates its output on the positive edge of the clock.

- **Reset:** When `rst = 1`, the output becomes `0` at the next rising clock edge.
- **Hold:** When `J = 0` and `K = 0`, the output retains its previous value.
- **Reset operation:** When `J = 0` and `K = 1`, the output becomes `0`.
- **Set operation:** When `J = 1` and `K = 0`, the output becomes `1`.
- **Toggle operation:** When `J = 1` and `K = 1`, the output changes to its complement.

## Project Structure
```text
JK_Flip_Flop/
├── jk_ff.v
├── jk_ff_tb.v
├── waveform.png
└── README.md
```
 
- Writing a Verilog testbench and verifying sequential behavior using simulation.

# Priority Encoder 4×2

## Overview
Designed and verified a 4-to-2 Priority Encoder using Verilog HDL and `casez` statement. The encoder assigns the highest priority to `d[3]` and the lowest priority to `d[0]`. A `valid` signal indicates whether any input is active.

## Files
- `priority_encoder4x2.v` – Verilog design of the 4-to-2 Priority Encoder.
- `priority_encoder4x2_tb.v` – Testbench to verify the encoder functionality.
- `rtl_schematic.png` – RTL schematic generated using Xilinx Vivado.
- `waveform.png` – Simulation waveform showing the input and output behavior.

## Priority Logic

| Input Condition | Output `y[1:0]` | `valid` |
|---|---|---|
| `d[3] = 1` | `11` | `1` |
| `d[3:2] = 01` | `10` | `1` |
| `d[3:1] = 001` | `01` | `1` |
| `d[3:0] = 0001` | `00` | `1` |
| `d[3:0] = 0000` | `00` | `0` |

**Priority order:** `d[3] > d[2] > d[1] > d[0]`

When multiple inputs are HIGH, the encoder selects the highest-priority input. The `valid` signal distinguishes an active `d[0]` input from the case where no input is active.

## Implementation
- Combinational logic using `always @(*)`.
- `casez` statement for priority-based pattern matching.
- `valid` output to indicate an active input.
- Default case to handle inputs that do not match any priority pattern.

## Verification
The testbench checks different input combinations, including cases where multiple inputs are HIGH, to verify the priority logic and `valid` output.
 
## Tools Used
- Verilog HDL
- Xilinx Vivado
- RTL Analysis and Simulation

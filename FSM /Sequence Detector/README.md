# 1101 Sequence Detector — Verilog HDL

This project implements a **1101 sequence detector using a Mealy FSM** in Verilog HDL. The design detects the input sequence `1101` and supports overlapping detection.

## Design Details

- **FSM Type:** Mealy FSM
- **Sequence:** `1101`
- **Overlapping Detection:** Yes
- **Clock:** Positive-edge triggered
- **Reset:** Synchronous, active-high
- **Tool:** Xilinx Vivado

## Files

| File | Description |
|---|---|
| `fsm.v` | Verilog code for the sequence detector |
| `fsm_tb.v` | Testbench for simulation |
| `waveform.png` | Simulation waveform |

## Working Principle

The FSM uses four states to track the incoming serial bits. When the complete sequence `1101` is detected, the output `y` becomes `1`.

Since overlapping detection is supported, the final `1` of a detected sequence can also be used as the first bit of the next occurrence.

For example, the input stream `1101101` contains two occurrences of `1101`.

## State Encoding

| State | Encoding | Meaning |
|---|---|---|
| `s0` | `00` | Initial state |
| `s1` | `01` | Received `1` |
| `s2` | `10` | Received `11` |
| `s3` | `11` | Received `110` |

## State Transition Table

The next state and output depend on the present state and input `x`.

| Present State | Input `x` | Next State | Output `y` |
|---|---:|---|---:|
| `s0` | 0 | `s0` | 0 |
| `s0` | 1 | `s1` | 0 |
| `s1` | 0 | `s0` | 0 |
| `s1` | 1 | `s2` | 0 |
| `s2` | 0 | `s3` | 0 |
| `s2` | 1 | `s2` | 0 |
| `s3` | 0 | `s0` | 0 |
| `s3` | 1 | `s1` | 1 |



## Concepts Learned

- Finite State Machine (FSM)
- Mealy FSM design
- State transitions and state encoding
- Sequential and combinational logic
- Overlapping sequence detection
- Verilog testbench and waveform verification

## Author

**Prathamesh  Lokhande**

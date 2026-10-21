# SISO Shift Register (Serial-In Serial-Out)

## Overview
This project implements a **4-bit Serial-In Serial-Out (SISO) Shift Register** using Verilog HDL. The register accepts serial data one bit at a time and shifts it through four register stages on every positive edge of the clock. The serial output is taken from the most significant bit, `q[3]`.

## Features
- 4-bit shift register
- Serial input and serial output
- Synchronous active-high reset
- Positive-edge-triggered operation
- Designed and simulated using Xilinx Vivado

## Working Principle
At every positive edge of the clock:
- If `rst = 1`, the register is cleared to `0000`.
- If `rst = 0`, the incoming serial bit enters `q[0]`, and the existing bits shift toward `q[3]`.
- The serial output is connected to `q[3]`.



### Block Diagram
```text
             4-bit Shift Register
          ┌─────┬─────┬─────┬─────┐
serial_in ─► q[0]│ q[1]│ q[2]│ q[3]├──► serial_out
          └─────┴─────┴─────┴─────┘
                 ▲
                Clock
```

## Project Files
| File | Description |
|---|---|
| `siso_shift_register.v` | Verilog design module |
| `siso_shift_register_tb.v` | Testbench for functional verification |
| `waveform.png` | Simulation waveform showing shift-register operation |

## Simulation Results
The testbench applies the serial input sequence `1, 0, 1, 1` after releasing reset.

| Clock Edge | Serial Input | Register State (`q[3:0]`) | Serial Output |
|---:|---:|---:|---:|
| 1 | 1 | `0001` | 0 |
| 2 | 0 | `0010` | 0 |
| 3 | 1 | `0101` | 0 |
| 4 | 1 | `1011` | 1 |

The output becomes `1` after the fourth input bit reaches `q[3]`.



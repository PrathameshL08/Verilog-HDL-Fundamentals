# Basic Logic Gates — Verilog HDL

This folder contains my implementation of basic digital logic gates using Verilog HDL.

All designs are written using **Dataflow Modeling** with continuous assignment statements. Testbenches are included for the gates that were simulated and verified.

## Gates Implemented

| Gate | Boolean Expression | Design File | Testbench File |
|---|---|---|---|
| AND | `Y = A & B` | `and_gate.v` | `and_gate_tb.v` |
| OR | `Y = A \| B` | `or_gate.v` | `or_gate_tb.v` |
| NOT | `Y = ~A` | `not_gate.v` | — |
| NAND | `Y = ~(A & B)` | `nand_gate.v` | `nand_gate_tb.v` |
| NOR | `Y = ~(A \| B)` | `nor_gate.v` | `nor_gate_tb.v` |
| XOR | `Y = A ^ B` | `xor_gate.v` | `xor_gate_tb.v` |
| XNOR | `Y = ~(A ^ B)` | `xnor_gate.v` | `xnor_gate_tb.v` |

## Concepts Practiced

- Basic digital logic gates
- Boolean expressions
- Verilog HDL module structure
- Dataflow Modeling
- Continuous assignment using `assign`
- Verilog operators
- Module instantiation
- Testbench development
- Simulation and functional verification

## Tools Used

- Verilog HDL
- Xilinx Vivado

## Next Step

This section establishes the foundation for further Verilog HDL implementation, progressing toward **combinational circuits, sequential circuits, FSMs, and RTL design**.

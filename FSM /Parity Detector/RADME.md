# Even Parity Detector — Verilog HDL

This project implements an even parity detector using a Mealy Finite State Machine (FSM) in Verilog HDL.

The detector processes a serial input stream and checks the parity of the bits received so far, including the current input bit. The output is `1` when the number of received `1`s is even; otherwise, it is `0`.

## Working Principle

The FSM uses two states:

- **S0 (Even Parity):** An even number of `1`s has been received.
- **S1 (Odd Parity):** An odd number of `1`s has been received.

When the input `x` is `1`, the FSM changes its parity state. When `x` is `0`, the state remains unchanged.

The output `y` depends on both the present state and the current input, so this is a **Mealy FSM**.

## State Transition Table

| Present State | Input (`x`) | Next State | Output (`y`) |
|---|---|---|---|
| S0 (Even) | 0 | S0 (Even) | 1 |
| S0 (Even) | 1 | S1 (Odd) | 0 |
| S1 (Odd) | 0 | S1 (Odd) | 0 |
| S1 (Odd) | 1 | S0 (Even) | 1 |

## Files Included

| File | Description |
|---|---|
| `fsm.v` | Verilog design for the even parity detector |
| `fsm_tb.v` | Testbench for simulation |
| `waveform.png` | Simulation waveform |

## Simulation and Verification

The design can be simulated in Xilinx Vivado using the provided testbench. Check the waveform to verify the output for different input sequences.

For the input sequence `0, 1, 0, 1`, the expected output is:

| Input (`x`) | Number of `1`s Received | Parity | Expected Output (`y`) |
|---:|---:|---|---:|
| 0 | 0 | Even | 1 |
| 1 | 1 | Odd | 0 |
| 0 | 1 | Odd | 0 |
| 1 | 2 | Even | 1 |


## Concepts Learned

- Finite State Machines (FSM)
- Mealy FSM design
- Even and odd parity
- State transition tables
- Sequential and combinational logic
- Verilog testbench and simulation
- Waveform analysis


## Author

**Prathamesh  Lokhande**

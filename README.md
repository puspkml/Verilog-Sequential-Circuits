# Sequential Circuits in Verilog HDL

![Verilog](https://img.shields.io/badge/HDL-Verilog-blue)
![Simulation](https://img.shields.io/badge/Simulation-GTKWave-green)
![Tool](https://img.shields.io/badge/Tool-Icarus%20Verilog-orange)
![Status](https://img.shields.io/badge/Status-Completed-success)

## Overview

This repository contains Verilog HDL implementations, testbenches, and simulation waveforms for fundamental **Sequential Digital Circuits**. The project serves as a practical reference for students, educators, and digital design enthusiasts learning sequential logic design and verification using industry-standard simulation tools.

Each circuit is implemented as an independent Verilog module, verified through dedicated testbenches, and validated using generated VCD waveform files.

## Features

- Verilog HDL implementation of common sequential circuits
- Separate testbench for every design
- Functional simulation and verification
- Generated waveform files for timing analysis
- Beginner-friendly project organization
- Suitable for FPGA and Digital Electronics learning
- Compatible with Icarus Verilog and GTKWave

## Project Structure

```text
sequentialCircuits/
│
├── Design Files/
│   ├── d_flipflop.v
│   ├── d_latch.v
│   ├── jk_flipflop.v
│   ├── jk_latch.v
│   ├── pipo.v
│   ├── piso.v
│   ├── sipo.v
│   ├── siso.v
│   ├── sr_flipflop.v
│   ├── sr_latch.v
│   ├── t_flipflop.v
│   └── t_latch.v
│
├── Testbenches/
│   ├── tb_d_flipflop.v
│   ├── tb_d_latch.v
│   ├── tb_jk_flipflop.v
│   ├── tb_jk_latch.v
│   ├── tb_pipo.v
│   ├── tb_piso.v
│   ├── tb_sipo.v
│   ├── tb_siso.v
│   ├── tb_sr_flipflop.v
│   ├── tb_sr_latch.v
│   ├── tb_t_flipflop.v
│   └── tb_t_latch.v
│
├── Waveforms/
│   ├── d_flipflop_waveform.vcd
│   ├── d_latch_waveform.vcd
│   ├── jk_flipflop_waveform.vcd
│   ├── jk_latch_waveform.vcd
│   ├── pipo_waveform.vcd
│   ├── piso_waveform.vcd
│   ├── sipo_waveform.vcd
│   ├── siso_waveform.vcd
│   ├── sr_flipflop_waveform.vcd
│   ├── sr_latch_waveform.vcd
│   ├── t_flipflop_waveform.vcd
│   └── t_latch_waveform.vcd
│
└── README.md
```

## Implemented Circuits

### Latches

- D Latch
- SR Latch
- JK Latch
- T Latch

### Flip-Flops

- D Flip-Flop
- SR Flip-Flop
- JK Flip-Flop
- T Flip-Flop

### Shift Registers

- SISO (Serial-In Serial-Out)
- SIPO (Serial-In Parallel-Out)
- PISO (Parallel-In Serial-Out)
- PIPO (Parallel-In Parallel-Out)

## Why This Project Is Useful

Sequential circuits form the foundation of digital systems such as:

- Memory elements
- Registers
- Counters
- Finite State Machines (FSMs)
- Communication interfaces
- Processors and controllers

This repository provides working Verilog examples that help users understand:

- Sequential logic design
- Clocked and level-sensitive circuits
- Data storage mechanisms
- Shift register operations
- HDL simulation workflow
- Timing verification using waveforms

## Prerequisites

Install the following tools:

### Ubuntu

```bash
sudo apt update
sudo apt install iverilog gtkwave
```

### Verify Installation

```bash
iverilog -V
gtkwave --version
```

## Getting Started

### Clone the Repository

```bash
git clone https://github.com/your-username/sequentialCircuits.git
cd sequentialCircuits
```

### Simulate a Design

Example: D Flip-Flop

```bash
iverilog -o sim \
"Design Files/d_flipflop.v" \
"Testbenches/tb_d_flipflop.v"
```

Run simulation:

```bash
vvp sim
```

### View Waveforms

```bash
gtkwave Waveforms/d_flipflop_waveform.vcd
```

## Example Workflow

```bash
iverilog -o sim \
"Design Files/jk_flipflop.v" \
"Testbenches/tb_jk_flipflop.v"

vvp sim

gtkwave Waveforms/jk_flipflop_waveform.vcd
```

## Learning Outcomes

After exploring this repository, users should be able to:

- Write Verilog modules for sequential circuits
- Develop self-checking testbenches
- Understand latch and flip-flop behavior
- Analyze timing diagrams
- Generate and inspect VCD waveforms
- Verify digital designs through simulation

## Simulation Tools

| Tool | Purpose |
|--------|----------|
| Icarus Verilog | Compilation and Simulation |
| GTKWave | Waveform Visualization |
| Verilog HDL | Hardware Description Language |

## Contributing

Contributions are welcome.

You can contribute by:

- Adding new sequential circuits
- Improving existing testbenches
- Optimizing Verilog implementations
- Adding synthesis reports
- Extending documentation

1. Fork the repository
2. Create a feature branch
3. Commit your changes
4. Submit a Pull Request

## Maintainer

**Puspa Kamal Rai**  
M.Sc. Physics  
Department of Physics  
Sri Sathya Sai Institute of Higher Learning

## Future Enhancements

- Universal Shift Register
- Ring Counter
- Johnson Counter
- Asynchronous Counters
- Synchronous Counters
- Finite State Machines (FSMs)
- FPGA implementation examples
- Synthesis reports and RTL schematics

## Support

If you encounter any issues:

- Open an issue in the repository
- Review the testbench files for usage examples
- Inspect waveform files for debugging and verification

## References

- Samir Palnitkar, *Verilog HDL: A Guide to Digital Design and Synthesis*
- M. Morris Mano, *Digital Design*
- Icarus Verilog Documentation
- GTKWave Documentation

## License

This project is distributed under the MIT License. See the `LICENSE` file for details.

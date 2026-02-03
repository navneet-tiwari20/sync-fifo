# Synchronous FIFO – PYNQ-ZU (Zynq UltraScale+ MPSoC)

## Overview
This project implements a **synchronous FIFO (First-In First-Out)** using **Verilog RTL**.
The design is targeted for the **PYNQ-ZU board** based on **Zynq UltraScale+ MPSoC (xczu5eg-sfvc784-1-e)**.
The FIFO operates in a **single clock domain** and supports standard read and write operations
with full and empty flag generation.

---

## Project Summary
The image below shows the Vivado project summary for the synchronous FIFO design.

![Project Summary](docs/project_summary.png)

---

## Simulation Waveform
The waveform below verifies correct FIFO operation, including write, read,
full, and empty conditions.

![Simulation Waveform](docs/simulation_waveform.png)

---

## Features
- Single-clock synchronous FIFO
- Parameterized data width and depth
- Full and empty flag logic
- Circular buffer using read and write pointers
- Synthesizable Verilog RTL
- Verified using simulation testbench

---

## Target Platform
- **Board:** PYNQ-ZU
- **SoC:** Zynq UltraScale+ MPSoC
- **Part:** xczu5eg-sfvc784-1-e
- **Tool:** Vivado HLx

---

## Directory Structure

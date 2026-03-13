# Synchronous FIFO Implementation in Verilog (PYNQ-ZU)

## Overview
This repository contains a **Synchronous FIFO (First-In First-Out)** implementation written in **Verilog RTL** and targeted for the **PYNQ-ZU board** based on the **Zynq UltraScale+ MPSoC (xczu5eg-sfvc784-1-e)**.

The FIFO operates in a **single clock domain** and supports standard **read and write operations** with **full and empty flag generation**.

The design has been verified through simulation and synthesized successfully using **Vivado Design Suite**.

---

## Features
- Single-clock synchronous FIFO
- Parameterized data width and FIFO depth
- Full and Empty flag generation
- Circular buffer using read and write pointers
- Synthesizable Verilog RTL
- Simulation-based functional verification

---

## Design Details
- FIFO memory implemented using a register array
- Read and write operations controlled using pointer logic
- Write pointer increments on valid write operation
- Read pointer increments on valid read operation
- Full and empty conditions detected using pointer comparison

---

## Verification

### Simulation
- Functional verification performed using a Verilog testbench
- Multiple write and read operations applied
- FIFO full and empty conditions verified
- Correct data order maintained during read operations

---

## Waveforms & Results

### Simulation Waveform
The waveform below verifies correct FIFO behavior including write,
read, full, and empty conditions.

![Simulation Waveform](docs/simulation_waveform.png)

### Vivado Project Summary
The project summary below shows successful synthesis and implementation
of the FIFO design in Vivado.

![Project Summary](docs/project_summary.png)

---

## Target Platform
- **Board:** PYNQ-ZU
- **SoC:** Zynq UltraScale+ MPSoC
- **Part:** xczu5eg-sfvc784-1-e
- **Tool:** Vivado Design Suite

---

## Project Structure

```text
sync_fifo/
├── srcs/
│   └── sync_fifo.v
├── constraints/
│   └── sync_fifo.xdc
├── tb/
│   └── tb_sync_fifo.v
├── docs/
│   ├── simulation_waveform.png
│   └── project_summary.png
├── sync_fifo.xpr
└── README.md

# Synchronous FIFO – PYNQ-ZU (Zynq UltraScale+ MPSoC)

## Overview
This project implements a **Synchronous FIFO (First-In First-Out)** using **Verilog RTL**.

The design is targeted for the **PYNQ-ZU board** based on the **Zynq UltraScale+ MPSoC (xczu5eg-sfvc784-1-e)**.

The FIFO operates in a **single clock domain** and supports standard **read and write operations** with **full and empty status flag generation**.

---

## Project Summary

The image below shows the **Vivado project summary** for the synchronous FIFO design.

![Project Summary](docs/project_summary.png)

---

## Simulation Waveform

The waveform below verifies correct FIFO operation including **write, read, full, and empty conditions**.

//![Simulation Waveform](docs/simulation_waveform.png)
![Project Summary](https://raw.githubusercontent.com/YOUR_USERNAME/sync_fifo/main/docs/project_summary.png)


---

## Features

- Single clock **Synchronous FIFO**
- **Parameterized data width and depth**
- **Full and Empty flag generation**
- Circular buffer using **read and write pointers**
- **Synthesizable Verilog RTL**
- Verified using a **simulation testbench**

---

## Target Platform

- **Board:** PYNQ-ZU  
- **SoC:** Zynq UltraScale+ MPSoC  
- **Part:** xczu5eg-sfvc784-1-e  
- **Tool:** Vivado Design Suite

---

## Directory Structure

```
sync_fifo/
│
├── constraints/
│   └── sync_fifo.xdc
│
├── docs/
│   ├── project_summary.png
│   └── simulation_waveform.png
│
├── srcs/
│   └── sync_fifo.v
│
├── tb/
│   └── tb_sync_fifo.v
│
├── sync_fifo.xpr
│
└── README.md
```

---

## Design Description

The synchronous FIFO is implemented using a **circular buffer architecture**.

Two pointers manage FIFO operation:

- **Write Pointer** – Points to the next location where data will be written.
- **Read Pointer** – Points to the next location from which data will be read.

The design generates **status flags** to indicate FIFO conditions:

- **FIFO Full** – Prevents additional write operations when the FIFO is full.
- **FIFO Empty** – Indicates that no data is available for reading.

---

## Tools Used

- **Vivado Design Suite**
- **Verilog HDL**
- **Simulation Testbench**


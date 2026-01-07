# Low-Power Multi-Clock Digital Communication System

## Project Overview
This project focuses on the design and implementation of a low-power digital communication system using a UART-based master–slave architecture.  
Multiple clock domains are employed to reduce dynamic power consumption while maintaining reliable and robust data communication.

The system operates as follows:
- Commands are received from the master through the UART_RX interface.
- The system decodes and processes the received commands.
- Execution results are transmitted back to the master via the UART_TX interface.

---

## System Architecture
The design is organized into modular and scalable blocks:

- **UART Receiver (RX):**  
  Receives serial data from the master using oversampling techniques and performs start bit, stop bit, and parity checking.

- **Command Decoder:**  
  Decodes incoming commands and maps them to the appropriate system operations.

- **Processing Core:**  
  Executes arithmetic, logic, and control operations based on the decoded instructions.

- **Result Register:**  
  Stores the operation result before transmission.

- **UART Transmitter (TX):**  
  Serializes parallel data and transmits it back to the master device.

- **Multi-Clock Domains:**  
  Independent clock domains are used across different system blocks to optimize power consumption.

---

## ASIC Backend Design Flow
A complete ASIC backend flow was performed to ensure design correctness and physical implementability:

### RTL Design and Verification
- RTL written in **SystemVerilog**
- Verified using functional simulation and testbenches

### Logic Synthesis
- Tool: **Synopsys Design Compiler**
- Generated a gate-level netlist with timing and power constraints

### Design for Testability (DFT)
- Tool: **Synopsys DFT Compiler**
- Scan chains inserted to improve test coverage

### Formal Verification
- Tool: **Synopsys Formality**
- Verified equivalence between RTL and synthesized netlist

### Place and Route
- Tool: **Synopsys IC Compiler II**
- Floorplanning, placement, clock tree synthesis, routing, and timing closure completed

---

## Tools and Technologies
- Synopsys VCS / QuestaSim – Functional simulation  
- Synopsys Design Compiler – Logic synthesis  
- Synopsys DFT Compiler – Scan insertion  
- Synopsys Formality – Formal equivalence checking  
- Synopsys IC Compiler II – Physical design (P&R)

---

## Repository Contents
- RTL source files  
- Verification testbenches  
- Synthesized gate-level netlist  
- Scan-inserted netlist  
- Formal verification reports  
- Place-and-route reports (timing, power, area)  
- Final GDSII layout  

---

## How to Use
1. Connect the master device to the UART interface.
2. Send commands through UART_RX.
3. The system decodes and executes the requested operation.
4. Results are transmitted back to the master through UART_TX.

---

## Future Work
- Apply advanced low-power techniques such as clock gating and power gating.
- Add support for additional communication protocols such as SPI and I2C.
- Extend the instruction set to support more complex operations.

---

## Author
Ahmed Afifi  
Electrical Engineering – Digital / ASIC Design

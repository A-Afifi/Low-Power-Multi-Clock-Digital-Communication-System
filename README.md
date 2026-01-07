# Low-Power-Multi-Clock-Digital-Communication-System
1. Project Overview

This project presents the design and implementation of a low-power digital communication system based on a UART master–slave architecture.
The system utilizes multiple clock domains to balance performance and power efficiency while maintaining reliable data transfer.

Input: Control commands received from the master through the UART_RX interface.

Processing: Commands are decoded and handled by the system core logic.

Output: Execution results are sent back to the master via UART_TX.

2. System Architecture

The design is structured into modular blocks to enhance scalability and maintainability:

UART Receiver (RX): Captures serial data from the master, implementing oversampling along with start/stop bit and parity validation.

Command Decoder: Interprets incoming commands and selects the appropriate operation.

Processing Core: Performs arithmetic, logic, and control operations according to the decoded instruction.

Result Register: Temporarily stores computed results prior to transmission.

UART Transmitter (TX): Converts parallel data into serial format and transmits it back to the master.

Multi-Clock Domains: Independent clock domains are used across system blocks to minimize dynamic power consumption.

3. ASIC Backend Implementation Flow

A complete ASIC backend flow was carried out to validate the design for physical implementation:

RTL Design & Verification

Implemented using SystemVerilog

Verified through functional simulations and testbenches

Logic Synthesis

Tool: Synopsys Design Compiler

Generated a gate-level netlist under timing and power constraints

Design for Testability (DFT)

Tool: Synopsys DFT Compiler

Scan chains inserted to enhance test coverage

Formal Verification

Tool: Synopsys Formality

Ensured equivalence between RTL and synthesized netlist

Place & Route

Tool: Synopsys IC Compiler II

Completed floorplanning, placement, CTS, routing, and timing closure

4. Tools & Technologies

Synopsys VCS / QuestaSim – RTL simulation

Synopsys Design Compiler – Logic synthesis

Synopsys DFT Compiler – Scan insertion

Synopsys Formality – Equivalence checking

Synopsys ICC2 – Physical design and P&R

5. Project Deliverables

RTL design files

Verification testbenches

Synthesized gate-level netlist

Scan-inserted netlist

Formal verification reports

Physical design reports (timing, power, area)

Final GDSII layout

6. System Operation

The master sends commands through the UART interface.

The system decodes and executes the requested operation.

Results are transmitted back to the master via UART_TX.

7. Future Enhancements

Advanced low-power techniques such as clock gating and power gating.

Integration of additional communication interfaces (SPI, I2C).

Expansion of the instruction set to support more complex operations.

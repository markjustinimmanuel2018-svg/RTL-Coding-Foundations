**# Week 3 Mini Project - Sequence Detector FSM (1011)**



This project implements a Moore Finite State Machine (FSM) to detect the serial bit sequence **1011** with overlapping using Verilog and verifies it using a testbench.



----------------------------------------------------------------------------

**## Files**



* seq\_det.v    : RTL design of the sequence detector FSM
* tb\_seq\_det.v : Testbench to verify the design



----------------------------------------------------------------------------

**## State Definitions**



* s0=0       --> No match
* s1=1       --> Detected '1'
* s2=10      --> Detected '10'
* s3=101     --> Detected '101'
* s4=1011    --> Detected '1011' (sequence detected)



----------------------------------------------------------------------------

**## Tools Used**



* Verilog HDL
* Simulator: ModelSim / EDA Playground



----------------------------------------------------------------------------

**## What I Learned**



* Designing Moore-type FSMs in Verilog
* Implementing sequence detectors with overlapping support
* Separating next-state, state-register and output logic
* Writing clock-synchronous directed testbench



----------------------------------------------------------------------------

**# Author :** MARK JUSTIN


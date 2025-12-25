**# Week 4 Mini Project - Traffic Light Controller**



This project implements a traffic light controller using a Finite State Machine (FSM) in Verilog. This design controls North-South (NS) and East-West (EW) traffic lights and includes an initial RED state for safe startup. A counter is used to model time and hold each state for a fixed number of clock cycles.



------------------------------------------------------------------------

**## Files**



* traffic\_light.v    : RTL Design of the traffic light controller
* tb\_traffic\_light.v : Testbench to verify the design



------------------------------------------------------------------------

**## State Definitions**



* s0 --> All Red
* s1 --> NS Green,  EW Red
* s2 --> NS Yellow, EW Red
* s3 --> NS Red,    EW Green
* s4 --> NS Red,    EW Yellow



------------------------------------------------------------------------

**## Timing (in clock cycles)**



* Initial (All Red) State : 2 cycles
* Green State             : 5 cycles
* Yellow State            : 2 cycles



------------------------------------------------------------------------

**## Tools Used**



* Verilog HDL
* Simulator: ModelSim / EDA Playground



------------------------------------------------------------------------

**## What I Learned**



* Designing controller-type FSMs with multiple outputs
* Using counters to model state timing in clock cycles
* Implementing safe startup states in FSM designs
* Verifying timed FSM behaviour using clocked testbenches



------------------------------------------------------------------------

**# Author :** MARK JUSTIN


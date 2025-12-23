**# Week 4 Mini Project - Traffic Light Controller** 



This project implements a traffic light controller using a Finite State Machine (FSM) in Verilog. This design controls North-South (NS) and East-West (EW) traffic lights and include an initial RED state for safe startup. A counter is used to model time and hold each state for a fixed number of clock cycles.





**## Files**



traffic\_light.v    : RTL Design

tb\_traffic\_light.v : Testbench





**## State Definitions**



s0 --> All Red

s1 --> NS Green,  EW Red

s2 --> NS Yellow, EW Red

s3 --> NS Red,    EW Green

s4 --> NS Red,    EW Yellow





**## Timing (in clock cycles)**



Initial State : 2 cycles

Green State   : 5 cycles

Yellow State  : 2 cycles





**## Tools Used**



Verilog HDL

Simulator: EDA Playground / Modelsim





**## AUTHOR :** MARK JUSTIN


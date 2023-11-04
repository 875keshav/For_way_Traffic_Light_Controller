
# Four way Traffic Light Controller

## Overview

The Four way Traffic Light Controller is a digital hardware project which includes the designing of a traffic light controll system using Verilog HDL (Hardware Description Language). This project is designed to be synthesized and run on FPGA boards or simulated in a hardware description language simulator like Xilinx Vivado or ModelSim.

## Table of Contents
- [Overview](#overview)
- [Prerequisites](#prerequisites)
- [Design](#design)
- [Simulation_Result](#Simulation_Result)

## Prerequisites
- A Verilog synthesis tool like Xilinx Vivado or Quartus Prime
- An FPGA board (for implementing the model)
  
## Design
### Finite state machine of the four way traffic light controller
![traffic (2)  MConverter eu  (1)](https://github.com/875keshav/Four_way_Traffic_Light_Controller/assets/126338618/1a0a1e15-a7ed-421c-bd7d-49513d65ef48)






| State | North | East | South | West | Duration |
|----------|----------|----------|----------|----------|----------|
| S0 | Red | Red | Red | Red | 10sec |
| S1 | Yellow | Red | Red | Red | 5sec |
| S2 | Green | Red | Red | Red | 30sec |
| S3 | Red | Yellow | Red | Red | 5sec |
| S4 | Red | Green | Red | Red | 30sec |
| S5 | Red | Red | Yellow | Red | 5sec |
| S6 | Red | Red | Green | Red | 30sec |
| S7 | Red | Red | Red | Yellow | 5sec |
| S8 | Red | Red | Red | Green | 30sec |






## Simulation_Result

Simulated Waveform:
![image](https://github.com/875keshav/Four_way_Traffic_Light_Controller/assets/126338618/57b5c7a8-a225-4d2a-b99b-b22bc73e371a)
![image](https://github.com/875keshav/Four_way_Traffic_Light_Controller/assets/126338618/1c111858-bd1e-4328-9535-3f5e03c840d8)

Schematic Diagram:
![image](https://github.com/875keshav/Four_way_Traffic_Light_Controller/assets/126338618/aa9605f5-6e97-4061-aa72-f3d5bad94945)


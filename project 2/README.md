# Water Flow Monitoring System using Verilog

## Project Description

This project implements a simple Water Flow Monitoring System in Verilog HDL. The design counts pulses received from a water flow sensor. Each pulse represents a fixed quantity of water passing through the pipe. The pulse count can be used to estimate the total water flow.

## Features

* Counts pulses from a water flow sensor.
* Reset function to clear the counter.
* Simple and synthesizable Verilog design.
* Suitable for FPGA implementation.

## Inputs

* **clk** – System clock.
* **reset** – Resets the pulse counter.
* **flow_sensor** – Pulse signal from the water flow sensor.

## Output

* **flow_count[15:0]** – Displays the total number of detected flow pulses.

## Software Required

* Xilinx Vivado or ISE
* ModelSim or QuestaSim

## Files

* `water_flow_monitor.v` – Main Verilog module.
* `water_flow_monitor_tb.v` – Testbench for simulation.

## Working

1. Apply a reset to initialize the counter.
2. Each pulse from the flow sensor increases the counter by one.
3. The output continuously shows the accumulated pulse count.
4. The pulse count can be converted into water volume based on the sensor specification.

## Applications

* Smart irrigation systems.
* Agricultural water management.
* Industrial water flow monitoring.
* Automated irrigation controllers.

## Future Enhancements

* Add LCD or seven-segment display support.
* Interface with an FPGA board.
* Calculate real-time flow rate (L/min).
* Send readings to an IoT dashboard using ESP32 or Raspberry Pi.

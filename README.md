# xorer

The purpose of this project is to learn at a high level
everything that goes into creating a proprietary accelerator for a
linux based system.

this includes:

- the device
- device driver firmware
- kernel module

## why:

- accelerators will continue to grow in popularity to offload tasks from cpu.
- NVIDIA, a matrix multiplication accelerator company, was [briefly the most valuable by market cap](https://www.statista.com/chart/32472/most-valuable-public-companies-in-the-world/)
- The programming model for proprietary linux devices is now [defined](https://lwn.net/Articles/939842/)

## components:

accelerator: the accelerator, xorer, xors two 32 but values. 
device manager: a controller for communication between the device and kernel module.
kernel module: a linux kernel module for the device.

## objectives

- be able to simulate all components, together, end to end.

## run hardware test 
``` bash
  cd hardware 
  iverilog -Wall -g2012 -o test_dist src/*.v test/*.sv && vvp test_dist
```
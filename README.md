# xorer

The purpose of this project is to learn at a high level
everything that goes into creating a proprietary accelerator for a
linux based system.

this includes:

- the device
- device driver firmware
- kernel module

## components:

accelerator: the accelerator, xorer, xors two 32 but values. 


## run hardware test 
``` bash
  cd hardware 
  iverilog -Wall -g2012 -o test_dist src/*.v test/*.sv && vvp test_dist
```
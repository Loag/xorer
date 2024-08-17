# xorer


## run hardware test 
``` bash
  cd hardware 
  iverilog -Wall -g2012 -o test_dist src/*.v test/*.sv && vvp test_dist
```
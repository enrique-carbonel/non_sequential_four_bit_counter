# non_sequential_four_bit_counter
Non-Sequential counter to count in four bit an eight digit (137ACF29) in order.
IDE USED: Xilinx (now AMD) Vivado 2022.1
Board Utilized: XC7A100TCSG324-1 (ARTIX-7 FPGA development board)
Language: Verilog

The count is displayed in the first fice 7-segment digits at 1 Hz to see it change.
  1. Digits 3, 2, 1, 0 displays the 4-bit count using only 1 or 0 digits (binary)
  2. Digit 4 only displays the Hex Value
  3. All 5 7-segment displays shows at the same time
  4. The count changes with a slow (about 1 second) clock so that the sequence can be watched and read as it changes. This code also sets the push button center (PBC) as the clock based on whether switch 15 is 1 or 0. This meaning that the clock will advance with each PBC when switch 15 is off. When switch 15 is on, then the 1-second clock will drive the display.

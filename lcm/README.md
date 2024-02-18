# Write a code in VHDL to find the LCM of two numbers.

This repository contains VHDL code for an LCM (Least Common Multiple) calculator (`my_lcm`) and its corresponding test bench (`my_lcm_tb`). The calculator determines the least common multiple of two input integers (`input_a` and `input_b`) using the Euclidean algorithm.

## Entities

### `my_lcm`

The `my_lcm` entity represents an LCM calculator.

#### Ports

- `rst`: Reset signal.
- `clk`: Clock signal.
- `input_a`: Input integer.
- `input_b`: Input integer.
- `lcm_result`: Output integer representing the least common multiple.

## Test Cases

### Test Case 1: 

- **Input:** `input_a = '10'`, `input_b = '15'`.
- **Expected Output:** `gcd_result = '30'`.

### Test Case 2: 

- **Input:** `input_a = '6789'`, `input_b = '666'`.
- **Expected Output:** `gcd_result = '1507158'`.

### Test Case 3: 

- **Input:** `input_a = '10'`, `input_b = '15'`.
- **Expected Output:** `gcd_result = '100'`.


## Output Diagram

![Output Diagram](lcm.png)

The output diagram depicts the behavior of the LCM calculator in response to different input stimuli. It illustrates how the output least common multiple changes over time under various test cases.

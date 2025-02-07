# Unhandled Exception and Divide-by-Zero Bug in MATLAB

This repository demonstrates a common MATLAB bug involving unhandled exceptions and a potential divide-by-zero error within a nested function. The `myFunction` takes an input and performs a calculation in the nested function `someCalculation`. However,  `someCalculation` can result in a division by zero if the input is 5, and `myFunction` lacks robust error handling for negative inputs.

## Bug Description
The primary issues are:

1. **Unhandled Exception:** The `myFunction` only checks for negative inputs. If the input is 5, `someCalculation` causes a division by zero which leads to a MATLAB runtime error.
2. **Missing Input Validation:** The `someCalculation` function does not validate its input thoroughly.  This makes it vulnerable to unexpected behavior.

## How to Reproduce
Clone this repository and run the `bug.m` file. Test with various inputs including negative numbers and the number 5 to observe the errors. 

## Solution
The `bugSolution.m` file provides a corrected version of the code with improved error handling and input validation.
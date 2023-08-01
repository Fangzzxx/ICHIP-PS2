# 16-BIt Microprocessr in Verilog

Prototype of Accumulator based MICROPROCESSOR using Von Neumann Architecture

## Problem Statement
### Problem Statement 1
- In Problem Statement 1, we were assigned to design CalC which will perform arithmetic and logical operations on 8-bit digital inputs and return an 8-bit digital output.

<img src = "https://github.com/Fangzzxx/ICHIP-PS2/blob/main/Images/1.png" width = "60%" height = "60%"  align= "center" />

- 7 Control Bits are given as input to the CalC, where each control signal represents a basic operation on inputs as mentioned.

<img src = "https://github.com/Fangzzxx/ICHIP-PS2/blob/main/Images/2.png" width = "60%" height = "60%" />

### Problem Statement 2
- In Problem Statement 2, we were assigned the task of designing a prototype of a complete microprocessor using the CalC in PS1 as the ALU.

<img src = "https://github.com/Fangzzxx/ICHIP-PS2/blob/main/Images/4.png" width = "60%" height = "60%" />

- The microprocessor is supposed to follow **Von Neumann Architecture** and should be an accumulator based processor (The output of ALU is always stored in the accumulator).

<img src = "https://github.com/Fangzzxx/ICHIP-PS2/blob/main/Images/3.png" width = "40%" height = "40%" />


## Architecture

<img src = "https://github.com/Fangzzxx/ICHIP-PS2/blob/main/Images/5.png" width = "600%" height = "60%" />

## Instruction
- The Insturction length is of 16 Bits and divided into 3 parts:

<img src = "https://github.com/Fangzzxx/ICHIP-PS2/blob/main/Images/6.png" width = "60%" height = "60%" />

## Opcode
- The length of opcode is 5 bits. The list of opcodes and function associated with them is given below.

<img src = "https://github.com/Fangzzxx/ICHIP-PS2/blob/main/Images/7.png" width = "60%" height = "60%" />

## Testing
- You will be provided two text files. One contained the set of instructions to be executed. Other contained the data to be stored in the memory.
- We had to Upload the program in the code segment of the Memory and the data in the data segment of the Memory.
- We Created a testbench with a clock cycle of 100 MHz and executed all the instructions in a sequential order. After complete execution of all the instructions, the data segment of Memory was written in an output.txt file.

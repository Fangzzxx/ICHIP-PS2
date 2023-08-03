# 16-BIt Microprocessr in Verilog

Prototype of Accumulator based MICROPROCESSOR using Von Neumann Architecture.

By: Om Verma

Skills: Computer Architecture, Verilog

## Index
1. [Problem Statement](https://github.com/Fangzzxx/ICHIP-PS2/blob/main/README.md#problem-statement)
2. [Architecture](https://github.com/Fangzzxx/ICHIP-PS2/blob/main/README.md#architecture)
3. [Instruction Format](https://github.com/Fangzzxx/ICHIP-PS2/blob/main/README.md#instruction-format)
4. [Opcode](https://github.com/Fangzzxx/ICHIP-PS2/blob/main/README.md#opcode)
5. [Control Bits](https://github.com/Fangzzxx/ICHIP-PS2/blob/main/README.md#control-bits)
6. [Testing](https://github.com/Fangzzxx/ICHIP-PS2/blob/main/README.md#testing)

## Problem Statement

### Problem Statement 1:

Read the complete Problem Statement [here](https://github.com/Fangzzxx/ICHIP-PS2/blob/main/I-Chip%20PS1.pdf).
- In Problem Statement 1, we were assigned to design CalC which will perform arithmetic and logical operations on 8-bit digital inputs and return an 8-bit digital output.

<p align="center" width="100%">
<img src = "https://github.com/Fangzzxx/ICHIP-PS2/blob/main/Images/1.png" width = "60%" height = "60%"  />
</p>

- 7 Control Bits are given as input to the CalC, where each control signal represents a basic operation on inputs as mentioned.

<p align="center" width="100%">
<img src = "https://github.com/Fangzzxx/ICHIP-PS2/blob/main/Images/2.png" width = "60%" height = "60%" />
</p>

### Problem Statement 2:

Read the complete Problem Statement [here](https://github.com/Fangzzxx/ICHIP-PS2/blob/main/I-Chip%20PS2.pdf).
- In Problem Statement 2, we were assigned the task of designing a prototype of a complete microprocessor using the CalC in PS1 as the ALU.

<p align="center" width="100%">
<img src = "https://github.com/Fangzzxx/ICHIP-PS2/blob/main/Images/4.png" width = "60%" height = "60%" />
</p>

- The microprocessor is supposed to follow **Von Neumann Architecture** and should be an accumulator based processor (The output of ALU is always stored in the accumulator).

<p align="center" width="100%">
<img src = "https://github.com/Fangzzxx/ICHIP-PS2/blob/main/Images/3.png" width = "40%" height = "40%" />
</p>

## Architecture

<p align="center" width="100%">
<img src = "https://github.com/Fangzzxx/ICHIP-PS2/blob/main/Images/5.png" width = "60%" height = "60%" />
</p>

## Instruction Format
- The Insturction length is of 16 Bits and divided into 3 parts:

<p align="center" width="100%">
<img src = "https://github.com/Fangzzxx/ICHIP-PS2/blob/main/Images/6.png" width = "60%" height = "60%" />
</p>

## Opcode
- The length of opcode is 5 bits. The list of opcodes and function associated with them is given below.

<p align="center" width="100%">
<img src = "https://github.com/Fangzzxx/ICHIP-PS2/blob/main/Images/7.png" width = "60%" height = "60%" />
</p>

## Control Bits:

<p align="center" width="100%">
<img src = "https://github.com/Fangzzxx/ICHIP-PS2/blob/main/Images/Control%20Bits.png" width = "60%" height = "60%" />
</p>

## Solution

<p align="center" width="100%">
<img src = "https://github.com/Fangzzxx/ICHIP-PS2/blob/main/Images/Circuit%20Diagram.png" width = "60%" height = "60%" />
</p>
1. The initial value of PC= 00 0000 0000.
2. On the **posedge of the CLock**, the Instruction Register output the Adressing mode, Opcode and Memory address to be accessed for getting the operand.
3. Adressing mode and the Operand's Address goes to the memory and the memory outputs the Operand. Opcode goes to the control unit.
4. When the **clock is high**, the control unit outputs the control signals for the the operation to be performed.
5. Using the control signals, ALU performs the operation.
6. On the negedge of the clock, PC gets incremented by 1 or stays the same (depends on the control signals provided).
7. When the **clock is low** the control unit provides control signal for loading the Accumulator and hence, the output of  ALU gets updated in Accumulator.
8. Now, the cycle repeat everytime wiht new PC value. This way we complete each operation in one clock cycle.

## Testing
- You will be provided two text files, [Program file](https://github.com/Fangzzxx/ICHIP-PS2/blob/main/Program.txt) and [Data file](https://github.com/Fangzzxx/ICHIP-PS2/blob/main/Data.txt). One contained the set of instructions to be executed. Other contained the data to be stored in the memory.
- We had to Upload the program in the code segment of the Memory and the data in the data segment of the Memory.
- We Created a testbench with a clock cycle of 100 MHz and executed all the instructions in a sequential order. After complete execution of all the instructions, the data segment of Memory was written in an output.txt [file](https://github.com/Fangzzxx/ICHIP-PS2/blob/main/Memory_Output.txt).

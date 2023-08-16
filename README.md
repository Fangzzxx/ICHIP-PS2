# 16-Bit Microprocessr in Verilog

Prototype of Accumulator based MICROPROCESSOR using Von Neumann Architecture.

By: Om Verma

Skills: Computer Architecture, Verilog

## Index
1. [Problem Statement](https://github.com/Fangzzxx/ICHIP-PS2/blob/main/README.md#problem-statement)
2. [Architecture](https://github.com/Fangzzxx/ICHIP-PS2/blob/main/README.md#architecture)
3. [Instruction Format](https://github.com/Fangzzxx/ICHIP-PS2/blob/main/README.md#instruction-format)
4. [Opcode](https://github.com/Fangzzxx/ICHIP-PS2/blob/main/README.md#opcode)
5. [Control Bits](https://github.com/Fangzzxx/ICHIP-PS2/blob/main/README.md#control-bits)
6. [Solution](https://github.com/Fangzzxx/ICHIP-PS2/tree/main#solution)
7. [Testing](https://github.com/Fangzzxx/ICHIP-PS2/blob/main/README.md#testing)

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

- The microprocessor is supposed to follow [Von Neumann Architecture](https://www.javatpoint.com/von-neumann-model) and should be an accumulator based processor (The output of ALU is always stored in the accumulator).

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

## Opcode and Adressing modes
- The CPU suppports 2 addressing modes, [Direct and Indirect Adressing Modes](https://www.geeksforgeeks.org/difference-between-direct-and-indirect-addressing-modes/).
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
<img src = "https://github.com/Fangzzxx/ICHIP-PS2/blob/main/Images/Block%20Diagram.png" width = "60%" height = "60%" />
</p>

<p align="center" width="100%">
<img src = "https://github.com/Fangzzxx/ICHIP-PS2/blob/main/Images/Circuit%20Diagram.png" width = "100%" height = "100%" />
</p>

1. Intitially the [Program file](https://github.com/Fangzzxx/ICHIP-PS2/blob/main/Program.txt) and [Data file](https://github.com/Fangzzxx/ICHIP-PS2/blob/main/Data.txt) are uploaded in a common 1024 x 16 Memory using $readmemh funciton.
2. The initial value of PC= 00 0000 0000.
3. When the **CLOCK IS LOW**, memory outputs instruction addresss.
4. On the **POSEDGE OF THE CLOCK**, the Instruction Register output the Adressing mode, Opcode and Memory address to be accessed for getting the operand.
5. Adressing mode and the Operand's Address goes to the memory and the memory outputs the Operand. Opcode goes to the control unit.
6. When the **CLOCK IS HIGH**, the control unit outputs the control signals for the the operation to be performed.
7. Using the control signals, ALU performs the operation.
8. On the **NEGEDGE OF THE CLOCK**, PC gets incremented by 1 or stays the same (depends on the control signals provided).
9. When the **CLOCK IS LOW** the control unit provides control signal for loading the Accumulator and hence, the output of  ALU gets updated in Accumulator. Also, side by side, memory outputs the second instruction to be executed.
10. On the **POSEDGE OF THE CLOCK** , Instruction Register output the the addressing mode, [opcode](https://github.com/Fangzzxx/ICHIP-PS2#opcode) and operand's adresss for the second instruction.
11. Now, the cycle repeat everytime with new PC value. This way we complete each operation in one clock cycle.
12. After the completion of all the operations, the data inside memory is printed in Output.txt [file](https://github.com/Fangzzxx/ICHIP-PS2/blob/main/Memory_Output.txt) using the $writememh function.
13. You can find all the verilog codes [here](https://github.com/Fangzzxx/ICHIP-PS2/tree/main/new).
## Testing
- You will be provided two text files, [Program file](https://github.com/Fangzzxx/ICHIP-PS2/blob/main/Program.txt) and [Data file](https://github.com/Fangzzxx/ICHIP-PS2/blob/main/Data.txt). One contained the set of instructions to be executed. Other contained the data to be stored in the memory.
- We had to Upload the program in the code segment of the Memory and the data in the data segment of the Memory.
- We Created a testbench with a clock cycle of 100 MHz and executed all the instructions in a sequential order. After complete execution of all the instructions, the data segment of Memory was written in an output.txt [file](https://github.com/Fangzzxx/ICHIP-PS2/blob/main/Memory_Output.txt).

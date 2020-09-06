// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.

  // Initialize `i` and `R2` with zero
  @0
  D=A
  
  @i
  M=D
  @R2
  M=D

(LOOP)
  // Check end of loop
  @i
  D=M
  @R1
  D=M-D
  @END
  D;JEQ

  // Accumulate value of `R0` in `R2`
  @R0
  D=M
  @R2
  M=D+M

  // Increment `i`
  @i
  M=M+1

  // Go to the beginning
  @LOOP
  0;JMP

(END)
  @END
  0;JMP

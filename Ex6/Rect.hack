
// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/06/rect/Rect.asm

// Draws a rectangle at the top-left corner of the screen.
// The rectangle is 16 pixels wide and R0 pixels high.

   0000000000000000                       //@0
   1111110000010000                       //D=M
   0000000000010111                       //@INFINITE_LOOP
   1110001100000110                       //D;JLE 
   0000000000010000                       //@counter
   1110001100001000                       //M=D
   0100000000000000                       //@SCREEN
   1110110000010000                       //D=A
   0000000000010001                       //@address
  1110001100001000                        //M=D
(LOOP)
  0000000000010001                        //@address
  1111110000100000                        //A=M
  1110111010001000                        //M=-1
  0000000000010001                        //@address
  1111110000010000                        //D=M
  0000000000100000                        //@32
  1110000010010000                        //D=D+A
  0000000000010001                        //@address
  1110001100001000                        //M=D
  0000000000010000                        //@counter
  1111110010011000                        //MD=M-1
  0000000000001010                        //@LOOP
  1110001100000001                        //D;JGT
(INFINITE_LOOP)
  0000000000010111                        //@INFINITE_LOOP
  1110101010000111                        //0;JMP

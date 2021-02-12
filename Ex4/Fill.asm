// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

// Put your code here.

(RESTART)
@SCREEN
D=A
@0
M=D	

///////////////////////////
(KBDCHECK)

@KBD
D=M
@BLACK
D;JGT	//JUMP IF KEYBORD PRESSED
@WHITE
D;JEQ	//ELSE JUMP 

@KBDCHECK
0;JMP
///////////////////////////
(BLACK)
@1
M=-1	// FULL SCREEN WITH 1
@CHANGE
0;JMP

(WHITE)
@1
M=0	
@CHANGE
0;JMP
//////////////////////////
(CHANGE)
@1	//VERIFIED IF ITS FULL BLACK OR W
D=M	//D IS BLK OR WIT

@0
A=M	//RECIEV ADRESS OF PXS
M=D	//FULL THIS PXS

@0
D=M+1	//GO. TO NEXT PXS
@KBD
D=A-D	

@0
M=M+1	//TO NEXT PXS
A=M

@CHANGE
D;JGT	//IF A=0 ALL THE SCREEN BLCK

@RESTART
0;JMP
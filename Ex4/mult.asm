// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.


@R2	//INITIALIZATION TO CLEAR R2 
M=0	

@0      //DONT DO THE LOOP IF R0 =0 
D=M
@END
D;JEQ	

@1      //DONT DO THE LOOP IF R0 =0 
D=M
@END
D;JEQ	

@0	//TO NOT DO THE LOOP R1 +1 TIMES
D=M	
@3	
M=D	// INITIALISE THE BOX TO INCREMENTE 

(LOOP)
@1	//GET THE R1 VALUE 
D=M	

@2	//ADD R1 R0 TIMES IN R2(MULT LOGIC)  
M=D+M	

@3	//INCREMENTS THE R3 TO KNOW WHEN STOP
M=M-1	
D=M

	
@LOOP	//END LOOP
D;JGT	//JUMP		  


(END)
@END
0;JMP	//FOREVER LOOP



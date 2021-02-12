// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/06/max/Max.asm

// Computes R2 = max(R0, R1)  (R0,R1,R2 refer to RAM[0],RAM[1],RAM[2])


0000000000000000     //@R0  
1111110000010000     //D=M   
0000000000000001     //@R1  
1111010011010000     //D=D-M  
0000000000001010     //@OUTPUT_FIRST 
1110001100000001     //D;JGT    
0000000000000001     //@R1
1111110000010000     // D=M 
0000000000001100     //@OUTPUT_D   
1110101010000111     //0;JMP
0000000000000000     // @R0       
1111110000010000     //D=M   
0000000000000010     //@R2 
1110001100001000     //M=D      
0000000000001110     //@INFINITE_LOOP 
1110101010000111     //0;JMP 



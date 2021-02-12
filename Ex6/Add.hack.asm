// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/06/add/Add.asm

// Computes R0 = 2 + 3  (R0 refers to RAM[0])

        
         0000000000000010  //@2   
    
         1110110000010000  //D=A     
 
         0000000000000011  //@3      

         1110000010010000  //D=D+A    

         0000000000000000  //@0 

         1110001100001000  //M=D

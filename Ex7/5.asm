addi $a1,$0,6

Mult:
	Addi $sp, $sp, -8     #Memory for 2 registers
	Sw $a1, 4($sp)        #Store a1 (a) in stack
	
	Sw $ra, 0($sp)        #store "who to return to" in stack
	
	Addi $t0, $0, 1       # t0=2
	Seq $t0, $a1, $t0     # if a1=1, then t0=1. Else- t0=0
	Beq $t0, $0, Else     #a0<2
	Add $s0, $a1, $0      #return a
	Addi $sp, $sp, 8      #deallocate memory
	Jr $ra                #return to caller function

Else:
	Addi $a1, $a1, -1          # a--
	Jal Mult                   #recursive
	Lw $ra, 0($sp)             #restore ra
	Lw $a1, 4($sp)             #restore a
	
	Addi $sp, $sp, 8           #deallocate memory
	mult $s0 $a1               #return a* func_result
	mflo $s0                   #return result in a 
	Jr $ra
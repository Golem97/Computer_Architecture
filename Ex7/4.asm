Lui $s0, 0x1002          #loa 0x1002 into upper half of s0

Addi $s1, $0, 0          #Count Hight
Addi $s4, $0, 0          #Temp for the ^3
Addi $t1, $0, 0          #To Recup the low 


Xor $s3, $s3, $s3         #s3=0, index of my loop (i = 0)


Recup: 
beq  $s3, 8, End         # if i=8 jump to End

lw $s4,0($s0)            #Recup the val of the adress [i]

addi $s0, $s0, 4          #s0+=4
addi $s3, $s3, 1 	      #i++


mult $s4, $s4            #So its  s4^2

mflo $t1                 #Recup the LO val of s4^2 in $t1 
mfhi $t2                 #Recup the HI val of s4^2 in $t2 

bne $t2, $0, Count1       #If t2 !=0 CountHi +2 

mult $t1, $s4            #So its  s4^3
mfhi $t2                 #Recup the Hi val of s4^2 in $t2 


bne  $t2, $0, Count2  

j Recup


Count1:                 #CountHI +2   
addi $s1 ,$s1 ,2
 j Recup                #So dont finish the loop
 

Count2:                 #CountHI +1  
addi $s1 ,$s1 ,1
j Recup


End:

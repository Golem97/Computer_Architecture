Lui $s0, 0x1002       #loa 0x1002 into upper half of s0

Addi $s1, $0, 0          #s1  =0 
Addi $s2, $0, 0          #s2  =0
Addi $s4, $0, 1          #Temp for the ^2
Addi $t1, $0, 0     

Xor $s3, $s3, $s3         #s3=0, index of my loop
Xor $s4, $s4, $s4         #s4=0, index of my loop
     
Addi $t1, $0, 16          #If i==16 Stop

Recup: 

lw $s4,0($s0)              #Recup the val of the adress [i]
         
mult $s4, $s4   																																																																																																																																																																																																																																																														     

mflo $t2                 #hight bit in $t2 
mfhi $t1                 #low bit in   $t1 

Add $s2,$s2 ,$t2             
Add $s1,$s1 ,$t1   

addi $s0, $s0, 4          #s0+=4


addi $s3, $s3, 1          # i++ increment index
Bne  $s3, 16, Recup       #if i<16, return atg the start of the loop



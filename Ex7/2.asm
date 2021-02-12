addi $s1, $0,1    # A
addi $s2, $0,1    # B
addi $s3, $0,1    # C
addi $s4, $0,1    # D

addi $s7, $0,-1    #-1
addi $s5, $0,1   # Sum
addi $s6, $0,1    # Temp
addi $t3, $0, 10 

addi $t0, $0, 1             # i =1

loop:              # Start Of My Loop

beq $t0, $t3, end       # if i == 10 we are done


 # CODE FOR A
addi $s1, $s1, 2       # add 2 to A

 # CODE FOR B
 #  i*(i+1)/2

addi $t1, $t0, 1   
addi  $t2, $t0, 2
mult $t2, $t1          #lo = (i+2)*(i+1)
mflo $s2
div   $s2,$s2,2             # B= B/2



 # CODE FOR C
sll $s3,$s3,2             # C = C^2


 # CODE FOR D
mult $s4, $s7
mflo $s4 


 # CODE FOR SUM
addi $s6, $s5,0         #Temp = sum
add $s5,$0,$s5

mult $s1,$s2             # sum =A[i]*B[i]
mflo $s5                 # sum = Recup from the mflo

mult $s5,$s3             # sum =sum * C[i]
mflo $s5                 # sum = Recup from the mflo
               
mult $s5,$s4             # sum =sum * D[i]
mflo $s5                 # sum = Recup from the mflo
add $s5, $s6,$s5        # sum =sum +Temp


addi $t0, $t0,1 #i++
j loop                  # jump  to the top
end:
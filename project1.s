#(@03045858 % 11) - 9 
#26+2 = 28
#M = 28-10 = 18


.data

input: .space 11 
enter: .asciiz 

.text
.globl main 


main:

li $v0, 8
la $a0, input
li $a1, 11
syscall


move $t0, $a0 

#load byte 

lb $s1, 0($t0)
jal characteradd 

lb $s1, 1($t0)

jal characteradd 

lb $s1, 2($t0)
jal characteradd 

lb $s1, 3($t0)
jal characteradd 


lb $s1, 4($t0)
jal characteradd 

lb $s1, 5($t0)
jal characteradd

lb $s1, 6($t0)
jal characteradd 

lb $s1, 7($t0)
jal characteradd 

lb $s1, 8($t0)
jal characteradd 

lb $s1, 9($t0)
jal characteradd 


characteradd:

bgt $s1, 96, lowerCaseChar
bgt $s1, 64, upperCaseChar
bgt $s1, 47, num 


addsloop:

add $s2, $s1, $s2
jr $ra.   


lowerCaseChar:
bgt $s1, 106, outOfBounds
sub $s1, $s1, 87
j addsloop

outOfBounds:
jr $ra  

upperCaseChar: 
bgt $s1, 73, outOfBounds 
sub $s1, $s1, 55
j addsloop

num:
bgt $s1, 56, outOfBounds  
sub $s1, $s1, 48
j addsloop 



exit:
addi $t1 , 3
multu $s2, $t1 
mfhi $t2
mflo $t3









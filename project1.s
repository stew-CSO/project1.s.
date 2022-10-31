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


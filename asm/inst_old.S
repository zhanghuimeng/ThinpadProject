.org 0x0  
.set noat  
.set noreorder  
.set nomacro  
.global _start  
_start:  
    li $1, 0xBFd003F8
    li $2, 0x1
    sw $2, 0x0($1) 

    li $2, 0x2
    sw $2, 0x0($1)
    lw $3, 0x0($1)
    sw $2, 0x0($1)
    
_loop:
    j _loop
    nop


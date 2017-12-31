<<<<<<< HEAD
   .org 0x0
   .set noat
   .set noreorder
   .set nomacro
   .global _start
_start:
   ori $1,$0,0x100     # $1 = 0x100
   jr $1
   nop

   .org 0x20
   addi $2,$2,0x1
   mfc0 $1,$11,0x0
   addi $1,$1,100
   mtc0 $1,$11,0x0
   eret
   nop

   .org 0x100
   ori $2,$0,0x0
   ori $1,$0,100
   mtc0 $1,$11,0x0  
   lui $1,0x1000
   ori $1,$1,0x401
   mtc0 $1,$12,0x0
  

_loop:
   j _loop
   nop
   
   
=======
.org 0x0  
.global _start  
.set noat  
_start:  
lui  $1,0x0101           # $1 = 0x01010000  
ori  $1,$1,0x0101        # $1 = $1 | 0x0101 = 0x01010101  
ori  $2,$1,0x1100        # $2 = $1 | 0x1100 = 0x01011101  
or   $1,$1,$2            # $1 = $1 | $2     = 0x01011101  
andi $3,$1,0x00fe        # $3 = $1 & 0x00fe = 0x00000000  
and  $1,$3,$1            # $1 = $3 & $1     = 0x00000000  
xori $4,$1,0xff00        # $4 = $1 ^ 0xff00 = 0x0000ff00  
xor  $1,$4,$1            # $1 = $4 ^ $1     = 0x0000ff00  
nor  $1,$4,$1            # $1 = $4 ~^ $1    = 0xffff00ff  
>>>>>>> origin/cp0

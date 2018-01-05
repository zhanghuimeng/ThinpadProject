#include <asm/asm.h>
#include <asm/regdef.h>
#include <cpu.h>
#include <machine.h>
#include <ns16550.h>
#include <asm/context.h>
#include <inst_test.h>

LEAF(n13_mult_test)
    .set noreorder
    lui  a0, 0xD00
    li  v0, 0x0
###test inst
    TEST_MULT(0x45b90738, 0xd70d64f0, 0x0a20a480, 0xf4d903bb)
###detect exception
    bne v0, zero, inst_error
    nop
###score ++
    addiu s3, s3, 1
###output a0|s3
inst_error:  
    or t0, a0, s3 
    sw t0, 0(s1)
    jr ra
    nop
END(n13_mult_test)

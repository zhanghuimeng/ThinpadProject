#include <asm/asm.h>
#include <asm/regdef.h>
#include <cpu.h>
#include <machine.h>
#include <ns16550.h>
#include <asm/context.h>
#include <inst_test.h>

LEAF(n1_add_test)
    .set noreorder
    lui  a0, 0x100
    li  v0, 0x0
###test inst
    TEST_ADD(0x0480ff04, 0x40933204, 0x45143108)
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
END(n1_add_test)

#include <asm/asm.h>
#include <asm/regdef.h>
#include <cpu.h>
#include <machine.h>
#include <ns16550.h>
#include <asm/context.h>
#include <inst_test.h>

LEAF(n37_j_test)
    .set noreorder
    lui  a0, 0x2500
    li  v0, 0x0
###test inst
    TEST_J(0x42ea6edf, 0x24071ba8, 0x42ea6edf, 0x24071ba8)
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
END(n37_j_test)

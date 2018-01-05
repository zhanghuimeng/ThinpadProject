#include <asm/asm.h>
#include <asm/regdef.h>
#include <cpu.h>
#include <machine.h>
#include <ns16550.h>
#include <asm/context.h>
#include <inst_test.h>

LEAF(n47_lb_test)
    .set noreorder
    lui  a0, 0x2F00
    li  v0, 0x0
###test inst
    TEST_LB(0xc83b0be0, 0x80026760, 0x000037a1, 0x000037a0, 0x0000000b)
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
END(n47_lb_test)

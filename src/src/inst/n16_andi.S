#include <asm/asm.h>
#include <asm/regdef.h>
#include <cpu.h>
#include <machine.h>
#include <ns16550.h>
#include <asm/context.h>
#include <inst_test.h>

LEAF(n16_andi_test)
    .set noreorder
    lui  a0, 0x1000
    li  v0, 0x0
###test inst
    TEST_ANDI(0x4c23cdd4, 0x00005e89, 0x00004c80)
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
END(n16_andi_test)

#include <asm/asm.h>
#include <asm/regdef.h>
#include <cpu.h>
#include <machine.h>
#include <ns16550.h>
#include <asm/context.h>
#include <inst_test.h>

LEAF(n31_bgez_test)
    .set noreorder
    lui  a0, 0x1F00
    li  v0, 0x0
###test inst
    TEST_BGEZ(0xdd4f1370, 0xbe6e1670, 0x28b850c0, 0x00000000, 0x00000000)
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
END(n31_bgez_test)

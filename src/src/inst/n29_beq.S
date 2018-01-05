#include <asm/asm.h>
#include <asm/regdef.h>
#include <cpu.h>
#include <machine.h>
#include <ns16550.h>
#include <asm/context.h>
#include <inst_test.h>

LEAF(n29_beq_test)
    .set noreorder
    lui  a0, 0x1D00
    li  v0, 0x0
###test inst
    TEST_BEQ(0x52919078, 0x81468400, 0x0fb16a80, 0xdf225ddc, 0x00000000, 0x00000000)
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
END(n29_beq_test)

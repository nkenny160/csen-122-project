addVectors:
        addi    sp,sp,-48
        sw      s0,44(sp)
        addi    s0,sp,48
        sw      a0,-36(s0)
        sw      a1,-40(s0)
        sw      a2,-44(s0)
        sw      zero,-20(s0)
        j       .L2
.L3:
        lw      a5,-20(s0)
        slli    a5,a5,2
        lw      a4,-36(s0)
        add     a5,a4,a5
        lw      a3,0(a5)
        lw      a5,-20(s0)
        slli    a5,a5,2
        lw      a4,-40(s0)
        add     a5,a4,a5
        lw      a4,0(a5)
        lw      a5,-20(s0)
        slli    a5,a5,2
        lw      a2,-36(s0)
        add     a5,a2,a5
        add     a4,a3,a4
        sw      a4,0(a5)
        lw      a5,-20(s0)
        addi    a5,a5,1
        sw      a5,-20(s0)
.L2:
        lw      a4,-20(s0)
        lw      a5,-44(s0)
        blt     a4,a5,.L3
        nop
        mv      a0,a5
        lw      s0,44(sp)
        addi    sp,sp,48
        jr      ra
ADDV:
    ld      x5, 0(x13) # where x5==t0 and x13==a3==pointer to value of n (size of vectors)

LOOP:
    add     x6, x5, x5
    brz     END
    ld      x7, 0(x10)
    ld      x28, 0(x11)
    add     x29, x7, x28
    st      x29, 0(x12)
    inc     x7, x7, 4
    inc     x28, x28, 4
    inc     x29, x29, 4
    dec     x5, x5, 1
    jm      LOOP

END
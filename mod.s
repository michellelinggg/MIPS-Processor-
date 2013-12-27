MOD:    addi $r0, $r0, 0x04
        sw $r3, 0($r0)
        lui $r1, 0x01
        lw $r1, 0($r1)
        addi $r0, $r0, 0
        slt $r3, $r1, $r0
        beq $r3, $r0, NOTNEG
        sub $r1, $r0, $r1

NOTNEG: lui $r0, 0x00
        lw $r0, 0($r0)
        

REPEAT: andi $r3, $r3, 0
        beq $r0, $r3, ZERO
        slt $r2, $r0, $r1
        bne $r2, $r3, NOTZERO
        sub $r0, $r0, $r1
        j REPEAT

ZERO:   andi $r0, $r1, 0
        andi $r2, $r2, 0
         addi $r2, $r2, 0x02
        sw $r0, 0($r2)
        addi $r0, $r0, 0x04
        lw $r3, 0($r0)
        jr $r3


NOTZERO:andi $r2, $r2, 0
        addi $r2, $r2, 0x02
        sw $r0, 0($r2)
        andi $r0, $r0, 0
        addi $r0, $r0, 0x04
        lw $r3, 0($r0)
        jr $r3 
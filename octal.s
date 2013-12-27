OCTAL: addi $r0, $r0, 0x04
       sw $r3, 0($r0)
       andi $r3, $r3, 0
       addi $r3, $r3, 4
	   lui $r0, 0x00
	   lw $r0, 0($r0)
	   andi $r2, $r0, 7
	   or $r1, $r1, $r2
	   andi $r2, $r2, 0
	   addi $r2, $r2, 3
	   srlv $r0, $r0, $r2
	   andi $r2, $r0, 7
	   sllv $r2, $r2, $r3
	   or $r1, $r1, $r2
	   andi $r2, $r2, 0
	   addi $r2, $r2, 4
	   andi $r2, $r2, 0
	   addi $r2, $r2, 3
	   srlv $r0, $r0, $r2
	   andi $r2, $r0, 7
	   sllv $r2, $r2, $r3
	   sllv $r2, $r2, $r3
	   or $r1, $r1, $r2
	   disp $r1, 0
	   andi $r0, $r0, 0
       addi $r0, $r0, 0x04
       lw $r3, 0($r0)
	   jr $r3
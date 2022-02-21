.section .text
glabel unref_ovl0_800D3C28
  /* 04F608 800D3C28 27BDFFE8 */     addiu $sp, $sp, -0x18
  /* 04F60C 800D3C2C AFBF0014 */        sw $ra, 0x14($sp)
  /* 04F610 800D3C30 00803025 */        or $a2, $a0, $zero
  /* 04F614 800D3C34 90C50009 */       lbu $a1, 9($a2)
  /* 04F618 800D3C38 94840004 */       lhu $a0, 4($a0)
  /* 04F61C 800D3C3C 0C034E75 */       jal func_ovl0_800D39D4
  /* 04F620 800D3C40 000528C3 */       sra $a1, $a1, 3
  /* 04F624 800D3C44 8FBF0014 */        lw $ra, 0x14($sp)
  /* 04F628 800D3C48 27BD0018 */     addiu $sp, $sp, 0x18
  /* 04F62C 800D3C4C 03E00008 */        jr $ra
  /* 04F630 800D3C50 00000000 */       nop 


.section .text
glabel func_ovl0_800C7A84
  /* 043464 800C7A84 27BDFFE8 */     addiu $sp, $sp, -0x18
  /* 043468 800C7A88 AFBF0014 */        sw $ra, 0x14($sp)
  /* 04346C 800C7A8C C4800000 */      lwc1 $f0, ($a0)
  /* 043470 800C7A90 C4820004 */      lwc1 $f2, 4($a0)
  /* 043474 800C7A94 46000102 */     mul.s $f4, $f0, $f0
  /* 043478 800C7A98 00000000 */       nop 
  /* 04347C 800C7A9C 46021182 */     mul.s $f6, $f2, $f2
  /* 043480 800C7AA0 0C00CD44 */       jal sqrtf
  /* 043484 800C7AA4 46062300 */     add.s $f12, $f4, $f6
  /* 043488 800C7AA8 8FBF0014 */        lw $ra, 0x14($sp)
  /* 04348C 800C7AAC 27BD0018 */     addiu $sp, $sp, 0x18
  /* 043490 800C7AB0 03E00008 */        jr $ra
  /* 043494 800C7AB4 00000000 */       nop 


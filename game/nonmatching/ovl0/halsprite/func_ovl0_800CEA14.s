.section .text
glabel func_ovl0_800CEA14
  /* 04A3F4 800CEA14 27BDFFE8 */     addiu $sp, $sp, -0x18
  /* 04A3F8 800CEA18 10800005 */      beqz $a0, .L800CEA30
  /* 04A3FC 800CEA1C AFBF0014 */        sw $ra, 0x14($sp)
  /* 04A400 800CEA20 90860008 */       lbu $a2, 8($a0)
  /* 04A404 800CEA24 00002825 */        or $a1, $zero, $zero
  /* 04A408 800CEA28 0C033BD3 */       jal func_ovl0_800CEF4C
  /* 04A40C 800CEA2C 000630C3 */       sra $a2, $a2, 3
  .L800CEA30:
  /* 04A410 800CEA30 8FBF0014 */        lw $ra, 0x14($sp)
  /* 04A414 800CEA34 27BD0018 */     addiu $sp, $sp, 0x18
  /* 04A418 800CEA38 03E00008 */        jr $ra
  /* 04A41C 800CEA3C 00000000 */       nop 


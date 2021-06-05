.section .text
glabel func_8000AEF0
  /* 00BAF0 8000AEF0 27BDFFD8 */     addiu $sp, $sp, -0x28
  /* 00BAF4 8000AEF4 AFB00014 */        sw $s0, 0x14($sp)
  /* 00BAF8 8000AEF8 3C108004 */       lui $s0, %hi(gOMObjCommonLinks)
  /* 00BAFC 8000AEFC 00047080 */       sll $t6, $a0, 2
  /* 00BB00 8000AF00 020E8021 */      addu $s0, $s0, $t6
  /* 00BB04 8000AF04 8E1066F0 */        lw $s0, %lo(gOMObjCommonLinks)($s0)
  /* 00BB08 8000AF08 AFB30020 */        sw $s3, 0x20($sp)
  /* 00BB0C 8000AF0C AFB2001C */        sw $s2, 0x1c($sp)
  /* 00BB10 8000AF10 00C09025 */        or $s2, $a2, $zero
  /* 00BB14 8000AF14 00A09825 */        or $s3, $a1, $zero
  /* 00BB18 8000AF18 AFBF0024 */        sw $ra, 0x24($sp)
  /* 00BB1C 8000AF1C 12000007 */      beqz $s0, .L8000AF3C
  /* 00BB20 8000AF20 AFB10018 */        sw $s1, 0x18($sp)
  .L8000AF24:
  /* 00BB24 8000AF24 8E110004 */        lw $s1, 4($s0)
  /* 00BB28 8000AF28 02002025 */        or $a0, $s0, $zero
  /* 00BB2C 8000AF2C 0260F809 */      jalr $s3
  /* 00BB30 8000AF30 02402825 */        or $a1, $s2, $zero
  /* 00BB34 8000AF34 1620FFFB */      bnez $s1, .L8000AF24
  /* 00BB38 8000AF38 02208025 */        or $s0, $s1, $zero
  .L8000AF3C:
  /* 00BB3C 8000AF3C 8FBF0024 */        lw $ra, 0x24($sp)
  /* 00BB40 8000AF40 8FB00014 */        lw $s0, 0x14($sp)
  /* 00BB44 8000AF44 8FB10018 */        lw $s1, 0x18($sp)
  /* 00BB48 8000AF48 8FB2001C */        lw $s2, 0x1c($sp)
  /* 00BB4C 8000AF4C 8FB30020 */        lw $s3, 0x20($sp)
  /* 00BB50 8000AF50 03E00008 */        jr $ra
  /* 00BB54 8000AF54 27BD0028 */     addiu $sp, $sp, 0x28


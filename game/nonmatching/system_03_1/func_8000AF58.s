.section .text
glabel func_8000AF58
  /* 00BB58 8000AF58 27BDFFD0 */     addiu $sp, $sp, -0x30
  /* 00BB5C 8000AF5C AFB50028 */        sw $s5, 0x28($sp)
  /* 00BB60 8000AF60 AFB40024 */        sw $s4, 0x24($sp)
  /* 00BB64 8000AF64 AFB30020 */        sw $s3, 0x20($sp)
  /* 00BB68 8000AF68 AFB2001C */        sw $s2, 0x1c($sp)
  /* 00BB6C 8000AF6C 3C148004 */       lui $s4, %hi(gOMObjCommonLinks)
  /* 00BB70 8000AF70 3C158004 */       lui $s5, %hi(gOMObjCommonLinks + (0x21 * 4))
  /* 00BB74 8000AF74 00A09025 */        or $s2, $a1, $zero
  /* 00BB78 8000AF78 00809825 */        or $s3, $a0, $zero
  /* 00BB7C 8000AF7C AFBF002C */        sw $ra, 0x2c($sp)
  /* 00BB80 8000AF80 AFB10018 */        sw $s1, 0x18($sp)
  /* 00BB84 8000AF84 AFB00014 */        sw $s0, 0x14($sp)
  /* 00BB88 8000AF88 26B56774 */     addiu $s5, $s5, %lo(gOMObjCommonLinks + (0x21 * 4))
  /* 00BB8C 8000AF8C 269466F0 */     addiu $s4, $s4, %lo(gOMObjCommonLinks)
  /* 00BB90 8000AF90 8E900000 */        lw $s0, ($s4) # gOMObjCommonLinks + 0
  .L8000AF94:
  /* 00BB94 8000AF94 52000008 */      beql $s0, $zero, .L8000AFB8
  /* 00BB98 8000AF98 26940004 */     addiu $s4, $s4, 4
  .L8000AF9C:
  /* 00BB9C 8000AF9C 8E110004 */        lw $s1, 4($s0)
  /* 00BBA0 8000AFA0 02002025 */        or $a0, $s0, $zero
  /* 00BBA4 8000AFA4 0260F809 */      jalr $s3
  /* 00BBA8 8000AFA8 02402825 */        or $a1, $s2, $zero
  /* 00BBAC 8000AFAC 1620FFFB */      bnez $s1, .L8000AF9C
  /* 00BBB0 8000AFB0 02208025 */        or $s0, $s1, $zero
  /* 00BBB4 8000AFB4 26940004 */     addiu $s4, $s4, 4
  .L8000AFB8:
  /* 00BBB8 8000AFB8 5695FFF6 */      bnel $s4, $s5, .L8000AF94
  /* 00BBBC 8000AFBC 8E900000 */        lw $s0, ($s4) # gOMObjCommonLinks + 0
  /* 00BBC0 8000AFC0 8FBF002C */        lw $ra, 0x2c($sp)
  /* 00BBC4 8000AFC4 8FB00014 */        lw $s0, 0x14($sp)
  /* 00BBC8 8000AFC8 8FB10018 */        lw $s1, 0x18($sp)
  /* 00BBCC 8000AFCC 8FB2001C */        lw $s2, 0x1c($sp)
  /* 00BBD0 8000AFD0 8FB30020 */        lw $s3, 0x20($sp)
  /* 00BBD4 8000AFD4 8FB40024 */        lw $s4, 0x24($sp)
  /* 00BBD8 8000AFD8 8FB50028 */        lw $s5, 0x28($sp)
  /* 00BBDC 8000AFDC 03E00008 */        jr $ra
  /* 00BBE0 8000AFE0 27BD0030 */     addiu $sp, $sp, 0x30


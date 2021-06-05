.section .text
glabel func_8000B7B4
  /* 00C3B4 8000B7B4 27BDFFD8 */     addiu $sp, $sp, -0x28
  /* 00C3B8 8000B7B8 AFB30020 */        sw $s3, 0x20($sp)
  /* 00C3BC 8000B7BC AFB2001C */        sw $s2, 0x1c($sp)
  /* 00C3C0 8000B7C0 3C128004 */       lui $s2, %hi(gOMObjCommonLinks)
  /* 00C3C4 8000B7C4 3C138004 */       lui $s3, %hi(gOMObjCommonLinks + (0x21 * 4))
  /* 00C3C8 8000B7C8 AFBF0024 */        sw $ra, 0x24($sp)
  /* 00C3CC 8000B7CC AFB10018 */        sw $s1, 0x18($sp)
  /* 00C3D0 8000B7D0 AFB00014 */        sw $s0, 0x14($sp)
  /* 00C3D4 8000B7D4 26736774 */     addiu $s3, $s3, %lo(gOMObjCommonLinks + (0x21 * 4))
  /* 00C3D8 8000B7D8 265266F0 */     addiu $s2, $s2, %lo(gOMObjCommonLinks)
  /* 00C3DC 8000B7DC 8E500000 */        lw $s0, ($s2) # gOMObjCommonLinks + 0
  .L8000B7E0:
  /* 00C3E0 8000B7E0 52000007 */      beql $s0, $zero, .L8000B800
  /* 00C3E4 8000B7E4 26520004 */     addiu $s2, $s2, 4
  .L8000B7E8:
  /* 00C3E8 8000B7E8 8E110004 */        lw $s1, 4($s0)
  /* 00C3EC 8000B7EC 0C0026A1 */       jal func_80009A84
  /* 00C3F0 8000B7F0 02002025 */        or $a0, $s0, $zero
  /* 00C3F4 8000B7F4 1620FFFC */      bnez $s1, .L8000B7E8
  /* 00C3F8 8000B7F8 02208025 */        or $s0, $s1, $zero
  /* 00C3FC 8000B7FC 26520004 */     addiu $s2, $s2, 4
  .L8000B800:
  /* 00C400 8000B800 5653FFF7 */      bnel $s2, $s3, .L8000B7E0
  /* 00C404 8000B804 8E500000 */        lw $s0, ($s2) # gOMObjCommonLinks + 0
  /* 00C408 8000B808 8FBF0024 */        lw $ra, 0x24($sp)
  /* 00C40C 8000B80C 8FB00014 */        lw $s0, 0x14($sp)
  /* 00C410 8000B810 8FB10018 */        lw $s1, 0x18($sp)
  /* 00C414 8000B814 8FB2001C */        lw $s2, 0x1c($sp)
  /* 00C418 8000B818 8FB30020 */        lw $s3, 0x20($sp)
  /* 00C41C 8000B81C 03E00008 */        jr $ra
  /* 00C420 8000B820 27BD0028 */     addiu $sp, $sp, 0x28


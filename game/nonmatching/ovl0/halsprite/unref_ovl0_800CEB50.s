.section .text
glabel unref_ovl0_800CEB50
  /* 04A530 800CEB50 27BDFFD8 */     addiu $sp, $sp, -0x28
  /* 04A534 800CEB54 AFB30020 */        sw $s3, 0x20($sp)
  /* 04A538 800CEB58 AFB2001C */        sw $s2, 0x1c($sp)
  /* 04A53C 800CEB5C 3C12800D */       lui $s2, %hi(D_ovl0_800D6358)
  /* 04A540 800CEB60 3C13800D */       lui $s3, %hi(D_ovl0_800D6398)
  /* 04A544 800CEB64 AFBF0024 */        sw $ra, 0x24($sp)
  /* 04A548 800CEB68 AFB10018 */        sw $s1, 0x18($sp)
  /* 04A54C 800CEB6C AFB00014 */        sw $s0, 0x14($sp)
  /* 04A550 800CEB70 26736398 */     addiu $s3, $s3, %lo(D_ovl0_800D6398)
  /* 04A554 800CEB74 26526358 */     addiu $s2, $s2, %lo(D_ovl0_800D6358)
  /* 04A558 800CEB78 8E500000 */        lw $s0, ($s2) # D_ovl0_800D6358 + 0
  .L800CEB7C:
  /* 04A55C 800CEB7C 52000007 */      beql $s0, $zero, .L800CEB9C
  /* 04A560 800CEB80 26520004 */     addiu $s2, $s2, 4
  .L800CEB84:
  /* 04A564 800CEB84 8E110000 */        lw $s1, ($s0)
  /* 04A568 800CEB88 0C033A90 */       jal func_ovl0_800CEA40
  /* 04A56C 800CEB8C 02002025 */        or $a0, $s0, $zero
  /* 04A570 800CEB90 1620FFFC */      bnez $s1, .L800CEB84
  /* 04A574 800CEB94 02208025 */        or $s0, $s1, $zero
  /* 04A578 800CEB98 26520004 */     addiu $s2, $s2, 4
  .L800CEB9C:
  /* 04A57C 800CEB9C 5653FFF7 */      bnel $s2, $s3, .L800CEB7C
  /* 04A580 800CEBA0 8E500000 */        lw $s0, ($s2) # D_ovl0_800D6358 + 0
  /* 04A584 800CEBA4 8FBF0024 */        lw $ra, 0x24($sp)
  /* 04A588 800CEBA8 8FB00014 */        lw $s0, 0x14($sp)
  /* 04A58C 800CEBAC 8FB10018 */        lw $s1, 0x18($sp)
  /* 04A590 800CEBB0 8FB2001C */        lw $s2, 0x1c($sp)
  /* 04A594 800CEBB4 8FB30020 */        lw $s3, 0x20($sp)
  /* 04A598 800CEBB8 03E00008 */        jr $ra
  /* 04A59C 800CEBBC 27BD0028 */     addiu $sp, $sp, 0x28


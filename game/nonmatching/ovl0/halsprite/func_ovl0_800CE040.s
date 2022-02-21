.section .text
glabel func_ovl0_800CE040
  /* 049A20 800CE040 27BDFFD8 */     addiu $sp, $sp, -0x28
  /* 049A24 800CE044 AFB30020 */        sw $s3, 0x20($sp)
  /* 049A28 800CE048 3C13800D */       lui $s3, %hi(D_ovl0_800D6454)
  /* 049A2C 800CE04C 26736454 */     addiu $s3, $s3, %lo(D_ovl0_800D6454)
  /* 049A30 800CE050 AFB2001C */        sw $s2, 0x1c($sp)
  /* 049A34 800CE054 AFB10018 */        sw $s1, 0x18($sp)
  /* 049A38 800CE058 AFB00014 */        sw $s0, 0x14($sp)
  /* 049A3C 800CE05C 00808825 */        or $s1, $a0, $zero
  /* 049A40 800CE060 00A09025 */        or $s2, $a1, $zero
  /* 049A44 800CE064 AFBF0024 */        sw $ra, 0x24($sp)
  /* 049A48 800CE068 AE600000 */        sw $zero, ($s3) # D_ovl0_800D6454 + 0
  /* 049A4C 800CE06C 1880000E */      blez $a0, .L800CE0A8
  /* 049A50 800CE070 00008025 */        or $s0, $zero, $zero
  .L800CE074:
  /* 049A54 800CE074 02402025 */        or $a0, $s2, $zero
  /* 049A58 800CE078 0C001260 */       jal hal_alloc
  /* 049A5C 800CE07C 24050004 */     addiu $a1, $zero, 4
  /* 049A60 800CE080 54400004 */      bnel $v0, $zero, .L800CE094
  /* 049A64 800CE084 8E6E0000 */        lw $t6, ($s3) # D_ovl0_800D6454 + 0
  /* 049A68 800CE088 1000000C */         b .L800CE0BC
  /* 049A6C 800CE08C 02001025 */        or $v0, $s0, $zero
  /* 049A70 800CE090 8E6E0000 */        lw $t6, ($s3) # D_ovl0_800D6454 + 0
  .L800CE094:
  /* 049A74 800CE094 26100001 */     addiu $s0, $s0, 1
  /* 049A78 800CE098 3C01800D */       lui $at, %hi(D_ovl0_800D6454)
  /* 049A7C 800CE09C AC4E0000 */        sw $t6, ($v0)
  /* 049A80 800CE0A0 1611FFF4 */       bne $s0, $s1, .L800CE074
  /* 049A84 800CE0A4 AC226454 */        sw $v0, %lo(D_ovl0_800D6454)($at)
  .L800CE0A8:
  /* 049A88 800CE0A8 3C01800D */       lui $at, %hi(D_ovl0_800D644C)
  /* 049A8C 800CE0AC A420644C */        sh $zero, %lo(D_ovl0_800D644C)($at)
  /* 049A90 800CE0B0 3C01800D */       lui $at, %hi(D_ovl0_800D6452)
  /* 049A94 800CE0B4 A4206452 */        sh $zero, %lo(D_ovl0_800D6452)($at)
  /* 049A98 800CE0B8 02001025 */        or $v0, $s0, $zero
  .L800CE0BC:
  /* 049A9C 800CE0BC 8FBF0024 */        lw $ra, 0x24($sp)
  /* 049AA0 800CE0C0 8FB00014 */        lw $s0, 0x14($sp)
  /* 049AA4 800CE0C4 8FB10018 */        lw $s1, 0x18($sp)
  /* 049AA8 800CE0C8 8FB2001C */        lw $s2, 0x1c($sp)
  /* 049AAC 800CE0CC 8FB30020 */        lw $s3, 0x20($sp)
  /* 049AB0 800CE0D0 03E00008 */        jr $ra
  /* 049AB4 800CE0D4 27BD0028 */     addiu $sp, $sp, 0x28


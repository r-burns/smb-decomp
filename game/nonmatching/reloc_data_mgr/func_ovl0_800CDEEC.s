.section .text
glabel func_ovl0_800CDEEC
  /* 0498CC 800CDEEC 27BDFF00 */     addiu $sp, $sp, -0x100
  /* 0498D0 800CDEF0 27AE0038 */     addiu $t6, $sp, 0x38
  /* 0498D4 800CDEF4 3C01800D */       lui $at, %hi(D_ovl0_800D633C)
  /* 0498D8 800CDEF8 AC2E633C */        sw $t6, %lo(D_ovl0_800D633C)($at)
  /* 0498DC 800CDEFC 3C01800D */       lui $at, %hi(D_ovl0_800D6340)
  /* 0498E0 800CDF00 AC206340 */        sw $zero, %lo(D_ovl0_800D6340)($at)
  /* 0498E4 800CDF04 AFB2001C */        sw $s2, 0x1c($sp)
  /* 0498E8 800CDF08 AFB10018 */        sw $s1, 0x18($sp)
  /* 0498EC 800CDF0C AFB00014 */        sw $s0, 0x14($sp)
  /* 0498F0 800CDF10 3C01800D */       lui $at, %hi(D_ovl0_800D6344)
  /* 0498F4 800CDF14 240F0032 */     addiu $t7, $zero, 0x32
  /* 0498F8 800CDF18 00A08025 */        or $s0, $a1, $zero
  /* 0498FC 800CDF1C 00808825 */        or $s1, $a0, $zero
  /* 049900 800CDF20 AFBF0024 */        sw $ra, 0x24($sp)
  /* 049904 800CDF24 AFB30020 */        sw $s3, 0x20($sp)
  /* 049908 800CDF28 00009025 */        or $s2, $zero, $zero
  /* 04990C 800CDF2C 10A0000A */      beqz $a1, .L800CDF58
  /* 049910 800CDF30 AC2F6344 */        sw $t7, %lo(D_ovl0_800D6344)($at)
  /* 049914 800CDF34 2413FFF0 */     addiu $s3, $zero, -0x10
  .L800CDF38:
  /* 049918 800CDF38 2658000F */     addiu $t8, $s2, 0xf
  /* 04991C 800CDF3C 03139024 */       and $s2, $t8, $s3
  /* 049920 800CDF40 0C03368E */       jal func_ovl0_800CDA38
  /* 049924 800CDF44 8E240000 */        lw $a0, ($s1)
  /* 049928 800CDF48 2610FFFF */     addiu $s0, $s0, -1
  /* 04992C 800CDF4C 02429021 */      addu $s2, $s2, $v0
  /* 049930 800CDF50 1600FFF9 */      bnez $s0, .L800CDF38
  /* 049934 800CDF54 26310004 */     addiu $s1, $s1, 4
  .L800CDF58:
  /* 049938 800CDF58 8FBF0024 */        lw $ra, 0x24($sp)
  /* 04993C 800CDF5C 02401025 */        or $v0, $s2, $zero
  /* 049940 800CDF60 8FB2001C */        lw $s2, 0x1c($sp)
  /* 049944 800CDF64 8FB00014 */        lw $s0, 0x14($sp)
  /* 049948 800CDF68 8FB10018 */        lw $s1, 0x18($sp)
  /* 04994C 800CDF6C 8FB30020 */        lw $s3, 0x20($sp)
  /* 049950 800CDF70 03E00008 */        jr $ra
  /* 049954 800CDF74 27BD0100 */     addiu $sp, $sp, 0x100


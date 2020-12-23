.section .text
glabel func_80003F98
  /* 004B98 80003F98 27BDFFE8 */     addiu $sp, $sp, -0x18
  /* 004B9C 80003F9C 3C038004 */       lui $v1, %hi(D_800451A8)
  /* 004BA0 80003FA0 3C078004 */       lui $a3, %hi(D_80045228)
  /* 004BA4 80003FA4 AFBF0014 */        sw $ra, 0x14($sp)
  /* 004BA8 80003FA8 24E75228 */     addiu $a3, $a3, %lo(D_80045228)
  /* 004BAC 80003FAC 246351A8 */     addiu $v1, $v1, %lo(D_800451A8)
  /* 004BB0 80003FB0 00002825 */        or $a1, $zero, $zero
  /* 004BB4 80003FB4 2408000A */     addiu $t0, $zero, 0xa
  /* 004BB8 80003FB8 24060004 */     addiu $a2, $zero, 4
  .L80003FBC:
  /* 004BBC 80003FBC 906E001C */       lbu $t6, 0x1c($v1) # D_800451A8 + 28
  /* 004BC0 80003FC0 55C00014 */      bnel $t6, $zero, .L80004014
  /* 004BC4 80003FC4 24A50001 */     addiu $a1, $a1, 1
  /* 004BC8 80003FC8 00A80019 */     multu $a1, $t0
  /* 004BCC 80003FCC 94780000 */       lhu $t8, ($v1) # D_800451A8 + 0
  /* 004BD0 80003FD0 94790004 */       lhu $t9, 4($v1) # D_800451A8 + 4
  /* 004BD4 80003FD4 9469000C */       lhu $t1, 0xc($v1) # D_800451A8 + 12
  /* 004BD8 80003FD8 946A0008 */       lhu $t2, 8($v1) # D_800451A8 + 8
  /* 004BDC 80003FDC 806B000E */        lb $t3, 0xe($v1) # D_800451A8 + 14
  /* 004BE0 80003FE0 806C000F */        lb $t4, 0xf($v1) # D_800451A8 + 15
  /* 004BE4 80003FE4 A4600008 */        sh $zero, 8($v1) # D_800451A8 + 8
  /* 004BE8 80003FE8 A460000C */        sh $zero, 0xc($v1) # D_800451A8 + 12
  /* 004BEC 80003FEC A4600004 */        sh $zero, 4($v1) # D_800451A8 + 4
  /* 004BF0 80003FF0 00007812 */      mflo $t7
  /* 004BF4 80003FF4 00EF1021 */      addu $v0, $a3, $t7
  /* 004BF8 80003FF8 A4580000 */        sh $t8, ($v0)
  /* 004BFC 80003FFC A4590002 */        sh $t9, 2($v0)

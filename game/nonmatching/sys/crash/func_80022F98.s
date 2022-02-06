.section .text
glabel func_80022F98
  /* 023B98 80022F98 27BDFFE8 */     addiu $sp, $sp, -0x18
  /* 023B9C 80022F9C AFBF0014 */        sw $ra, 0x14($sp)
  /* 023BA0 80022FA0 0C00D508 */       jal __osGetActiveQueue
  /* 023BA4 80022FA4 00000000 */       nop 
  /* 023BA8 80022FA8 8C4E0004 */        lw $t6, 4($v0)
  /* 023BAC 80022FAC 2404FFFF */     addiu $a0, $zero, -1
  /* 023BB0 80022FB0 00401825 */        or $v1, $v0, $zero
  /* 023BB4 80022FB4 108E0010 */       beq $a0, $t6, .L80022FF8
  /* 023BB8 80022FB8 8FBF0014 */        lw $ra, 0x14($sp)
  /* 023BBC 80022FBC 8C420004 */        lw $v0, 4($v0)
  .L80022FC0:
  /* 023BC0 80022FC0 18400009 */      blez $v0, .L80022FE8
  /* 023BC4 80022FC4 2841007F */      slti $at, $v0, 0x7f
  /* 023BC8 80022FC8 50200008 */      beql $at, $zero, .L80022FEC
  /* 023BCC 80022FCC 8C63000C */        lw $v1, 0xc($v1)
  /* 023BD0 80022FD0 946F0012 */       lhu $t7, 0x12($v1)
  /* 023BD4 80022FD4 31F80003 */      andi $t8, $t7, 3
  /* 023BD8 80022FD8 53000004 */      beql $t8, $zero, .L80022FEC
  /* 023BDC 80022FDC 8C63000C */        lw $v1, 0xc($v1)
  /* 023BE0 80022FE0 10000006 */         b .L80022FFC
  /* 023BE4 80022FE4 00601025 */        or $v0, $v1, $zero
  .L80022FE8:
  /* 023BE8 80022FE8 8C63000C */        lw $v1, 0xc($v1)
  .L80022FEC:
  /* 023BEC 80022FEC 8C620004 */        lw $v0, 4($v1)
  /* 023BF0 80022FF0 1482FFF3 */       bne $a0, $v0, .L80022FC0
  /* 023BF4 80022FF4 00000000 */       nop 
  .L80022FF8:
  /* 023BF8 80022FF8 00001025 */        or $v0, $zero, $zero
  .L80022FFC:
  /* 023BFC 80022FFC 03E00008 */        jr $ra
  /* 023C00 80023000 27BD0018 */     addiu $sp, $sp, 0x18


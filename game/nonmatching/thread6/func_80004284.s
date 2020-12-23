.section .text
glabel func_80004284
  /* 004E84 80004284 27BDFFC8 */     addiu $sp, $sp, -0x38
  /* 004E88 80004288 AFBF0014 */        sw $ra, 0x14($sp)
  /* 004E8C 8000428C 00803825 */        or $a3, $a0, $zero
  /* 004E90 80004290 AFA70038 */        sw $a3, 0x38($sp)
  /* 004E94 80004294 27A4001C */     addiu $a0, $sp, 0x1c
  /* 004E98 80004298 27A50034 */     addiu $a1, $sp, 0x34
  /* 004E9C 8000429C 0C00D120 */       jal osCreateMesgQueue
  /* 004EA0 800042A0 24060001 */     addiu $a2, $zero, 1
  /* 004EA4 800042A4 8FA50038 */        lw $a1, 0x38($sp)
  /* 004EA8 800042A8 240E0001 */     addiu $t6, $zero, 1
  /* 004EAC 800042AC 27AF001C */     addiu $t7, $sp, 0x1c
  /* 004EB0 800042B0 3C048004 */       lui $a0, %hi(D_80045138)
  /* 004EB4 800042B4 24845138 */     addiu $a0, $a0, %lo(D_80045138)
  /* 004EB8 800042B8 00003025 */        or $a2, $zero, $zero
  /* 004EBC 800042BC ACAE0004 */        sw $t6, 4($a1)
  /* 004EC0 800042C0 0C00C000 */       jal osSendMesg
  /* 004EC4 800042C4 ACAF0008 */        sw $t7, 8($a1)
  /* 004EC8 800042C8 27A4001C */     addiu $a0, $sp, 0x1c
  /* 004ECC 800042CC 00002825 */        or $a1, $zero, $zero
  /* 004ED0 800042D0 0C00C084 */       jal osRecvMesg
  /* 004ED4 800042D4 24060001 */     addiu $a2, $zero, 1
  /* 004ED8 800042D8 8FBF0014 */        lw $ra, 0x14($sp)
  /* 004EDC 800042DC 27BD0038 */     addiu $sp, $sp, 0x38
  /* 004EE0 800042E0 03E00008 */        jr $ra
  /* 004EE4 800042E4 00000000 */       nop 


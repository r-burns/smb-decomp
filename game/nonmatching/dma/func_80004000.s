.section .text
glabel func_80004000
  /* 004C00 80004000 A4490006 */        sh $t1, 6($v0)
  /* 004C04 80004004 A44A0004 */        sh $t2, 4($v0)
  /* 004C08 80004008 A04B0008 */        sb $t3, 8($v0)
  /* 004C0C 8000400C A04C0009 */        sb $t4, 9($v0)
  /* 004C10 80004010 24A50001 */     addiu $a1, $a1, 1
  .L80004014:
  /* 004C14 80004014 14A6FFE9 */       bne $a1, $a2, .L80003FBC
  /* 004C18 80004018 24630020 */     addiu $v1, $v1, 0x20
  /* 004C1C 8000401C 0C000F00 */       jal func_80003C00
  /* 004C20 80004020 00000000 */       nop 
  /* 004C24 80004024 3C0D8004 */       lui $t5, %hi(D_800451A4)
  /* 004C28 80004028 81AD51A4 */        lb $t5, %lo(D_800451A4)($t5)
  /* 004C2C 8000402C 2408000A */     addiu $t0, $zero, 0xa
  /* 004C30 80004030 3C078004 */       lui $a3, %hi(D_80045228)
  /* 004C34 80004034 01A80019 */     multu $t5, $t0
  /* 004C38 80004038 24E75228 */     addiu $a3, $a3, %lo(D_80045228)
  /* 004C3C 8000403C 3C018004 */       lui $at, %hi(D_80045472)
  /* 004C40 80004040 8FBF0014 */        lw $ra, 0x14($sp)
  /* 004C44 80004044 00007012 */      mflo $t6
  /* 004C48 80004048 00EE1021 */      addu $v0, $a3, $t6
  /* 004C4C 8000404C 944F0002 */       lhu $t7, 2($v0)
  /* 004C50 80004050 A42F5472 */        sh $t7, %lo(D_80045472)($at)
  /* 004C54 80004054 94580000 */       lhu $t8, ($v0)
  /* 004C58 80004058 3C018004 */       lui $at, %hi(D_80045470)
  /* 004C5C 8000405C A4385470 */        sh $t8, %lo(D_80045470)($at)
  /* 004C60 80004060 94590004 */       lhu $t9, 4($v0)
  /* 004C64 80004064 3C018004 */       lui $at, %hi(D_80045474)
  /* 004C68 80004068 A4395474 */        sh $t9, %lo(D_80045474)($at)
  /* 004C6C 8000406C 94490006 */       lhu $t1, 6($v0)
  /* 004C70 80004070 3C018004 */       lui $at, %hi(D_80045476)
  /* 004C74 80004074 A4295476 */        sh $t1, %lo(D_80045476)($at)
  /* 004C78 80004078 804A0008 */        lb $t2, 8($v0)
  /* 004C7C 8000407C 3C018004 */       lui $at, %hi(D_80045478)
  /* 004C80 80004080 A02A5478 */        sb $t2, %lo(D_80045478)($at)
  /* 004C84 80004084 804B0009 */        lb $t3, 9($v0)
  /* 004C88 80004088 3C018004 */       lui $at, %hi(D_80045479)
  /* 004C8C 8000408C 27BD0018 */     addiu $sp, $sp, 0x18
  /* 004C90 80004090 A02B5479 */        sb $t3, %lo(D_80045479)($at)
  /* 004C94 80004094 3C018004 */       lui $at, %hi(D_80045250)
  /* 004C98 80004098 03E00008 */        jr $ra
  /* 004C9C 8000409C AC205250 */        sw $zero, %lo(D_80045250)($at)

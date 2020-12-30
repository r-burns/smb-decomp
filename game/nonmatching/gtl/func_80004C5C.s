.section .text
glabel func_80004C5C
  /* 00585C 80004C5C 27BDFFB8 */     addiu $sp, $sp, -0x48
  /* 005860 80004C60 AFBF0014 */        sw $ra, 0x14($sp)
  /* 005864 80004C64 240E0008 */     addiu $t6, $zero, 8
  /* 005868 80004C68 240F0032 */     addiu $t7, $zero, 0x32
  /* 00586C 80004C6C AFA40040 */        sw $a0, 0x40($sp)
  /* 005870 80004C70 AFAE001C */        sw $t6, 0x1c($sp)
  /* 005874 80004C74 AFAF0020 */        sw $t7, 0x20($sp)
  /* 005878 80004C78 AFA50044 */        sw $a1, 0x44($sp)
  /* 00587C 80004C7C 0C00025C */       jal func_80000970
  /* 005880 80004C80 27A4001C */     addiu $a0, $sp, 0x1c
  /* 005884 80004C84 3C058004 */       lui $a1, %hi(D_80044FC0)
  /* 005888 80004C88 24A54FC0 */     addiu $a1, $a1, %lo(D_80044FC0)
  /* 00588C 80004C8C 30B80007 */      andi $t8, $a1, 7
  /* 005890 80004C90 13000006 */      beqz $t8, .L80004CAC
  /* 005894 80004C94 8FBF0014 */        lw $ra, 0x14($sp)
  /* 005898 80004C98 3C048004 */       lui $a0, %hi(D_8003D754)
  /* 00589C 80004C9C 0C008D89 */       jal fatal_printf
  /* 0058A0 80004CA0 2484D754 */     addiu $a0, $a0, %lo(D_8003D754)
  .L80004CA4:
  /* 0058A4 80004CA4 1000FFFF */         b .L80004CA4
  /* 0058A8 80004CA8 00000000 */       nop 
  .L80004CAC:
  /* 0058AC 80004CAC 03E00008 */        jr $ra
  /* 0058B0 80004CB0 27BD0048 */     addiu $sp, $sp, 0x48


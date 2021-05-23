.section .rodata

glabel D_8003D9C8
  /* 3D5C8 03E5C8 8003D9C8 */
  .asciz "om : couldn\'t get MObj\n"
  .balign 4

.section .text
glabel func_80007EDC
  /* 008ADC 80007EDC 3C068004 */       lui $a2, %hi(sMObjHead)
  /* 008AE0 80007EE0 24C66A28 */     addiu $a2, $a2, %lo(sMObjHead)
  /* 008AE4 80007EE4 8CC30000 */        lw $v1, ($a2) # sMObjHead + 0
  /* 008AE8 80007EE8 27BDFFE8 */     addiu $sp, $sp, -0x18
  /* 008AEC 80007EEC AFBF0014 */        sw $ra, 0x14($sp)
  /* 008AF0 80007EF0 14600008 */      bnez $v1, .L80007F14
  /* 008AF4 80007EF4 240400A8 */     addiu $a0, $zero, 0xa8
  /* 008AF8 80007EF8 0C001260 */       jal func_80004980
  /* 008AFC 80007EFC 24050004 */     addiu $a1, $zero, 4
  /* 008B00 80007F00 3C068004 */       lui $a2, %hi(sMObjHead)
  /* 008B04 80007F04 24C66A28 */     addiu $a2, $a2, %lo(sMObjHead)
  /* 008B08 80007F08 ACC20000 */        sw $v0, ($a2) # sMObjHead + 0
  /* 008B0C 80007F0C AC400000 */        sw $zero, ($v0)
  /* 008B10 80007F10 8CC30000 */        lw $v1, ($a2) # sMObjHead + 0
  .L80007F14:
  /* 008B14 80007F14 14600006 */      bnez $v1, .L80007F30
  /* 008B18 80007F18 3C058004 */       lui $a1, 0x8004
  /* 008B1C 80007F1C 3C048004 */       lui $a0, %hi(D_8003D9C8)
  /* 008B20 80007F20 0C008D89 */       jal fatal_printf
  /* 008B24 80007F24 2484D9C8 */     addiu $a0, $a0, %lo(D_8003D9C8)
  .L80007F28:
  /* 008B28 80007F28 1000FFFF */         b .L80007F28
  /* 008B2C 80007F2C 00000000 */       nop 
  .L80007F30:
  /* 008B30 80007F30 24A56A2C */     addiu $a1, $a1, 0x6a2c
  /* 008B34 80007F34 8CB80000 */        lw $t8, ($a1)
  /* 008B38 80007F38 8FBF0014 */        lw $ra, 0x14($sp)
  /* 008B3C 80007F3C 8C6F0000 */        lw $t7, ($v1)
  /* 008B40 80007F40 27190001 */     addiu $t9, $t8, 1
  /* 008B44 80007F44 ACB90000 */        sw $t9, ($a1)
  /* 008B48 80007F48 27BD0018 */     addiu $sp, $sp, 0x18
  /* 008B4C 80007F4C 00601025 */        or $v0, $v1, $zero
  /* 008B50 80007F50 03E00008 */        jr $ra
  /* 008B54 80007F54 ACCF0000 */        sw $t7, ($a2)


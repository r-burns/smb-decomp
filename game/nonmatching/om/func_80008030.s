.section .rodata

glabel D_8003D9F8
  /* 3D5F8 03E5F8 8003D9F8 */
  .asciz "om : couldn\'t get SObj\n"
  .balign 4

.section .text
glabel func_80008030
  /* 008C30 80008030 3C068004 */       lui $a2, %hi(sSObjHead)
  /* 008C34 80008034 24C66A3C */     addiu $a2, $a2, %lo(sSObjHead)
  /* 008C38 80008038 8CC30000 */        lw $v1, ($a2) # sSObjHead + 0
  /* 008C3C 8000803C 27BDFFE8 */     addiu $sp, $sp, -0x18
  /* 008C40 80008040 AFBF0014 */        sw $ra, 0x14($sp)
  /* 008C44 80008044 14600009 */      bnez $v1, .L8000806C
  /* 008C48 80008048 3C048004 */       lui $a0, %hi(sSObjSize)
  /* 008C4C 8000804C 94846A44 */       lhu $a0, %lo(sSObjSize)($a0)
  /* 008C50 80008050 0C001260 */       jal func_80004980
  /* 008C54 80008054 24050008 */     addiu $a1, $zero, 8
  /* 008C58 80008058 3C068004 */       lui $a2, %hi(sSObjHead)
  /* 008C5C 8000805C 24C66A3C */     addiu $a2, $a2, %lo(sSObjHead)
  /* 008C60 80008060 ACC20000 */        sw $v0, ($a2) # sSObjHead + 0
  /* 008C64 80008064 AC400000 */        sw $zero, ($v0)
  /* 008C68 80008068 8CC30000 */        lw $v1, ($a2) # sSObjHead + 0
  .L8000806C:
  /* 008C6C 8000806C 14600006 */      bnez $v1, .L80008088
  /* 008C70 80008070 3C058004 */       lui $a1, 0x8004
  /* 008C74 80008074 3C048004 */       lui $a0, %hi(D_8003D9F8)
  /* 008C78 80008078 0C008D89 */       jal fatal_printf
  /* 008C7C 8000807C 2484D9F8 */     addiu $a0, $a0, %lo(D_8003D9F8)
  .L80008080:
  /* 008C80 80008080 1000FFFF */         b .L80008080
  /* 008C84 80008084 00000000 */       nop 
  .L80008088:
  /* 008C88 80008088 24A56A40 */     addiu $a1, $a1, 0x6a40
  /* 008C8C 8000808C 8CB80000 */        lw $t8, ($a1)
  /* 008C90 80008090 8FBF0014 */        lw $ra, 0x14($sp)
  /* 008C94 80008094 8C6F0000 */        lw $t7, ($v1)
  /* 008C98 80008098 27190001 */     addiu $t9, $t8, 1
  /* 008C9C 8000809C ACB90000 */        sw $t9, ($a1)
  /* 008CA0 800080A0 27BD0018 */     addiu $sp, $sp, 0x18
  /* 008CA4 800080A4 00601025 */        or $v0, $v1, $zero
  /* 008CA8 800080A8 03E00008 */        jr $ra
  /* 008CAC 800080AC ACCF0000 */        sw $t7, ($a2)


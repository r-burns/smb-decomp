.section .rodata

glabel D_8003D9E0
  /* 3D5E0 03E5E0 8003D9E0 */
  .asciz "om : couldn\'t get DObj\n"
  .balign 4

.section .text
glabel func_80007F84
  /* 008B84 80007F84 3C068004 */       lui $a2, %hi(sDObjHead)
  /* 008B88 80007F88 24C66A30 */     addiu $a2, $a2, %lo(sDObjHead)
  /* 008B8C 80007F8C 8CC30000 */        lw $v1, ($a2) # sDObjHead + 0
  /* 008B90 80007F90 27BDFFE8 */     addiu $sp, $sp, -0x18
  /* 008B94 80007F94 AFBF0014 */        sw $ra, 0x14($sp)
  /* 008B98 80007F98 14600009 */      bnez $v1, .L80007FC0
  /* 008B9C 80007F9C 3C048004 */       lui $a0, %hi(sDObjSize)
  /* 008BA0 80007FA0 94846A38 */       lhu $a0, %lo(sDObjSize)($a0)
  /* 008BA4 80007FA4 0C001260 */       jal func_80004980
  /* 008BA8 80007FA8 24050008 */     addiu $a1, $zero, 8
  /* 008BAC 80007FAC 3C068004 */       lui $a2, %hi(sDObjHead)
  /* 008BB0 80007FB0 24C66A30 */     addiu $a2, $a2, %lo(sDObjHead)
  /* 008BB4 80007FB4 ACC20000 */        sw $v0, ($a2) # sDObjHead + 0
  /* 008BB8 80007FB8 AC400000 */        sw $zero, ($v0)
  /* 008BBC 80007FBC 8CC30000 */        lw $v1, ($a2) # sDObjHead + 0
  .L80007FC0:
  /* 008BC0 80007FC0 14600006 */      bnez $v1, .L80007FDC
  /* 008BC4 80007FC4 3C058004 */       lui $a1, 0x8004
  /* 008BC8 80007FC8 3C048004 */       lui $a0, %hi(D_8003D9E0)
  /* 008BCC 80007FCC 0C008D89 */       jal fatal_printf
  /* 008BD0 80007FD0 2484D9E0 */     addiu $a0, $a0, %lo(D_8003D9E0)
  .L80007FD4:
  /* 008BD4 80007FD4 1000FFFF */         b .L80007FD4
  /* 008BD8 80007FD8 00000000 */       nop 
  .L80007FDC:
  /* 008BDC 80007FDC 24A56A34 */     addiu $a1, $a1, 0x6a34
  /* 008BE0 80007FE0 8CB80000 */        lw $t8, ($a1)
  /* 008BE4 80007FE4 8FBF0014 */        lw $ra, 0x14($sp)
  /* 008BE8 80007FE8 8C6F0000 */        lw $t7, ($v1)
  /* 008BEC 80007FEC 27190001 */     addiu $t9, $t8, 1
  /* 008BF0 80007FF0 ACB90000 */        sw $t9, ($a1)
  /* 008BF4 80007FF4 27BD0018 */     addiu $sp, $sp, 0x18
  /* 008BF8 80007FF8 00601025 */        or $v0, $v1, $zero
  /* 008BFC 80007FFC 03E00008 */        jr $ra
  /* 008C00 80008000 ACCF0000 */        sw $t7, ($a2)


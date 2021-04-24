.section .rodata

glabel D_8003D9B0
  /* 3D5B0 03E5B0 8003D9B0 */
  .asciz "om : couldn\'t get AObj\n"
  .balign 4

.section .text
glabel func_80007E04
  /* 008A04 80007E04 3C068004 */       lui $a2, %hi(D_80046A20)
  /* 008A08 80007E08 24C66A20 */     addiu $a2, $a2, %lo(D_80046A20)
  /* 008A0C 80007E0C 8CC30000 */        lw $v1, ($a2) # D_80046A20 + 0
  /* 008A10 80007E10 27BDFFE8 */     addiu $sp, $sp, -0x18
  /* 008A14 80007E14 AFBF0014 */        sw $ra, 0x14($sp)
  /* 008A18 80007E18 14600008 */      bnez $v1, .L80007E3C
  /* 008A1C 80007E1C 24040024 */     addiu $a0, $zero, 0x24
  /* 008A20 80007E20 0C001260 */       jal func_80004980
  /* 008A24 80007E24 24050004 */     addiu $a1, $zero, 4
  /* 008A28 80007E28 3C068004 */       lui $a2, %hi(D_80046A20)
  /* 008A2C 80007E2C 24C66A20 */     addiu $a2, $a2, %lo(D_80046A20)
  /* 008A30 80007E30 ACC20000 */        sw $v0, ($a2) # D_80046A20 + 0
  /* 008A34 80007E34 AC400000 */        sw $zero, ($v0)
  /* 008A38 80007E38 8CC30000 */        lw $v1, ($a2) # D_80046A20 + 0
  .L80007E3C:
  /* 008A3C 80007E3C 14600006 */      bnez $v1, .L80007E58
  /* 008A40 80007E40 3C058004 */       lui $a1, 0x8004
  /* 008A44 80007E44 3C048004 */       lui $a0, %hi(D_8003D9B0)
  /* 008A48 80007E48 0C008D89 */       jal fatal_printf
  /* 008A4C 80007E4C 2484D9B0 */     addiu $a0, $a0, %lo(D_8003D9B0)
  .L80007E50:
  /* 008A50 80007E50 1000FFFF */         b .L80007E50
  /* 008A54 80007E54 00000000 */       nop 
  .L80007E58:
  /* 008A58 80007E58 24A56A24 */     addiu $a1, $a1, 0x6a24
  /* 008A5C 80007E5C 8CB80000 */        lw $t8, ($a1)
  /* 008A60 80007E60 8FBF0014 */        lw $ra, 0x14($sp)
  /* 008A64 80007E64 8C6F0000 */        lw $t7, ($v1)
  /* 008A68 80007E68 27190001 */     addiu $t9, $t8, 1
  /* 008A6C 80007E6C ACB90000 */        sw $t9, ($a1)
  /* 008A70 80007E70 27BD0018 */     addiu $sp, $sp, 0x18
  /* 008A74 80007E74 00601025 */        or $v0, $v1, $zero
  /* 008A78 80007E78 03E00008 */        jr $ra
  /* 008A7C 80007E7C ACCF0000 */        sw $t7, ($a2)


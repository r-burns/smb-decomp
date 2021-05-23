.section .rodata

glabel D_8003D994
  /* 3D594 03E594 8003D994 */
  .asciz "om : couldn\'t get OMMtx\n"
  .balign 4

.section .text
glabel func_80007D5C
  /* 00895C 80007D5C 3C068004 */       lui $a2, %hi(sMtxHead)
  /* 008960 80007D60 24C66A14 */     addiu $a2, $a2, %lo(sMtxHead)
  /* 008964 80007D64 8CC30000 */        lw $v1, ($a2) # sMtxHead + 0
  /* 008968 80007D68 27BDFFE8 */     addiu $sp, $sp, -0x18
  /* 00896C 80007D6C AFBF0014 */        sw $ra, 0x14($sp)
  /* 008970 80007D70 14600008 */      bnez $v1, .L80007D94
  /* 008974 80007D74 24040048 */     addiu $a0, $zero, 0x48
  /* 008978 80007D78 0C001260 */       jal func_80004980
  /* 00897C 80007D7C 24050008 */     addiu $a1, $zero, 8
  /* 008980 80007D80 3C068004 */       lui $a2, %hi(sMtxHead)
  /* 008984 80007D84 24C66A14 */     addiu $a2, $a2, %lo(sMtxHead)
  /* 008988 80007D88 ACC20000 */        sw $v0, ($a2) # sMtxHead + 0
  /* 00898C 80007D8C AC400000 */        sw $zero, ($v0)
  /* 008990 80007D90 8CC30000 */        lw $v1, ($a2) # sMtxHead + 0
  .L80007D94:
  /* 008994 80007D94 14600006 */      bnez $v1, .L80007DB0
  /* 008998 80007D98 3C058004 */       lui $a1, 0x8004
  /* 00899C 80007D9C 3C048004 */       lui $a0, %hi(D_8003D994)
  /* 0089A0 80007DA0 0C008D89 */       jal fatal_printf
  /* 0089A4 80007DA4 2484D994 */     addiu $a0, $a0, %lo(D_8003D994)
  .L80007DA8:
  /* 0089A8 80007DA8 1000FFFF */         b .L80007DA8
  /* 0089AC 80007DAC 00000000 */       nop 
  .L80007DB0:
  /* 0089B0 80007DB0 24A56A18 */     addiu $a1, $a1, 0x6a18
  /* 0089B4 80007DB4 8CB80000 */        lw $t8, ($a1)
  /* 0089B8 80007DB8 8FBF0014 */        lw $ra, 0x14($sp)
  /* 0089BC 80007DBC 8C6F0000 */        lw $t7, ($v1)
  /* 0089C0 80007DC0 27190001 */     addiu $t9, $t8, 1
  /* 0089C4 80007DC4 ACB90000 */        sw $t9, ($a1)
  /* 0089C8 80007DC8 27BD0018 */     addiu $sp, $sp, 0x18
  /* 0089CC 80007DCC 00601025 */        or $v0, $v1, $zero
  /* 0089D0 80007DD0 03E00008 */        jr $ra
  /* 0089D4 80007DD4 ACCF0000 */        sw $t7, ($a2)


.section .rodata

glabel D_8003D974
  /* 3D574 03E574 8003D974 */
  .asciz "om : couldn\'t get GObjProcess\n"
  .balign 4

.section .text
glabel func_80007604
  /* 008204 80007604 3C068004 */       lui $a2, %hi(sObjProcessHead)
  /* 008208 80007608 24C666CC */     addiu $a2, $a2, %lo(sObjProcessHead)
  /* 00820C 8000760C 8CC30000 */        lw $v1, ($a2) # sObjProcessHead + 0
  /* 008210 80007610 27BDFFE8 */     addiu $sp, $sp, -0x18
  /* 008214 80007614 AFBF0014 */        sw $ra, 0x14($sp)
  /* 008218 80007618 14600008 */      bnez $v1, .L8000763C
  /* 00821C 8000761C 24040024 */     addiu $a0, $zero, 0x24
  /* 008220 80007620 0C001260 */       jal func_80004980
  /* 008224 80007624 24050004 */     addiu $a1, $zero, 4
  /* 008228 80007628 3C068004 */       lui $a2, %hi(sObjProcessHead)
  /* 00822C 8000762C 24C666CC */     addiu $a2, $a2, %lo(sObjProcessHead)
  /* 008230 80007630 ACC20000 */        sw $v0, ($a2) # sObjProcessHead + 0
  /* 008234 80007634 AC400000 */        sw $zero, ($v0)
  /* 008238 80007638 8CC30000 */        lw $v1, ($a2) # sObjProcessHead + 0
  .L8000763C:
  /* 00823C 8000763C 14600006 */      bnez $v1, .L80007658
  /* 008240 80007640 3C058004 */       lui $a1, 0x8004
  /* 008244 80007644 3C048004 */       lui $a0, %hi(D_8003D974)
  /* 008248 80007648 0C008D89 */       jal fatal_printf
  /* 00824C 8000764C 2484D974 */     addiu $a0, $a0, %lo(D_8003D974)
  .L80007650:
  /* 008250 80007650 1000FFFF */         b .L80007650
  /* 008254 80007654 00000000 */       nop 
  .L80007658:
  /* 008258 80007658 24A566E8 */     addiu $a1, $a1, 0x66e8
  /* 00825C 8000765C 8CB80000 */        lw $t8, ($a1)
  /* 008260 80007660 8FBF0014 */        lw $ra, 0x14($sp)
  /* 008264 80007664 8C6F0000 */        lw $t7, ($v1)
  /* 008268 80007668 27190001 */     addiu $t9, $t8, 1
  /* 00826C 8000766C ACB90000 */        sw $t9, ($a1)
  /* 008270 80007670 27BD0018 */     addiu $sp, $sp, 0x18
  /* 008274 80007674 00601025 */        or $v0, $v1, $zero
  /* 008278 80007678 03E00008 */        jr $ra
  /* 00827C 8000767C ACCF0000 */        sw $t7, ($a2)


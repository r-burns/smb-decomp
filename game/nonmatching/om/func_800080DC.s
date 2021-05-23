.section .rodata

glabel D_8003DA10
  /* 3D610 03E610 8003DA10 */
  .asciz "om : couldn\'t get Camera\n"
  .balign 4

.section .text
glabel func_800080DC
  /* 008CDC 800080DC 3C068004 */       lui $a2, %hi(sCameraHead)
  /* 008CE0 800080E0 24C66A48 */     addiu $a2, $a2, %lo(sCameraHead)
  /* 008CE4 800080E4 8CC30000 */        lw $v1, ($a2) # sCameraHead + 0
  /* 008CE8 800080E8 27BDFFE8 */     addiu $sp, $sp, -0x18
  /* 008CEC 800080EC AFBF0014 */        sw $ra, 0x14($sp)
  /* 008CF0 800080F0 14600009 */      bnez $v1, .L80008118
  /* 008CF4 800080F4 3C048004 */       lui $a0, %hi(sCameraSize)
  /* 008CF8 800080F8 94846A50 */       lhu $a0, %lo(sCameraSize)($a0)
  /* 008CFC 800080FC 0C001260 */       jal func_80004980
  /* 008D00 80008100 24050008 */     addiu $a1, $zero, 8
  /* 008D04 80008104 3C068004 */       lui $a2, %hi(sCameraHead)
  /* 008D08 80008108 24C66A48 */     addiu $a2, $a2, %lo(sCameraHead)
  /* 008D0C 8000810C ACC20000 */        sw $v0, ($a2) # sCameraHead + 0
  /* 008D10 80008110 AC400000 */        sw $zero, ($v0)
  /* 008D14 80008114 8CC30000 */        lw $v1, ($a2) # sCameraHead + 0
  .L80008118:
  /* 008D18 80008118 14600006 */      bnez $v1, .L80008134
  /* 008D1C 8000811C 3C058004 */       lui $a1, 0x8004
  /* 008D20 80008120 3C048004 */       lui $a0, %hi(D_8003DA10)
  /* 008D24 80008124 0C008D89 */       jal fatal_printf
  /* 008D28 80008128 2484DA10 */     addiu $a0, $a0, %lo(D_8003DA10)
  .L8000812C:
  /* 008D2C 8000812C 1000FFFF */         b .L8000812C
  /* 008D30 80008130 00000000 */       nop 
  .L80008134:
  /* 008D34 80008134 24A56A4C */     addiu $a1, $a1, 0x6a4c
  /* 008D38 80008138 8CB80000 */        lw $t8, ($a1)
  /* 008D3C 8000813C 8FBF0014 */        lw $ra, 0x14($sp)
  /* 008D40 80008140 8C6F0000 */        lw $t7, ($v1)
  /* 008D44 80008144 27190001 */     addiu $t9, $t8, 1
  /* 008D48 80008148 ACB90000 */        sw $t9, ($a1)
  /* 008D4C 8000814C 27BD0018 */     addiu $sp, $sp, 0x18
  /* 008D50 80008150 00601025 */        or $v0, $v1, $zero
  /* 008D54 80008154 03E00008 */        jr $ra
  /* 008D58 80008158 ACCF0000 */        sw $t7, ($a2)


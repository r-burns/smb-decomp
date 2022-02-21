.section .text
glabel func_ovl0_800D353C
  /* 04EF1C 800D353C 3C04800D */       lui $a0, %hi(D_ovl0_800D6398)
  /* 04EF20 800D3540 24846398 */     addiu $a0, $a0, %lo(D_ovl0_800D6398)
  /* 04EF24 800D3544 8C830000 */        lw $v1, ($a0) # D_ovl0_800D6398 + 0
  /* 04EF28 800D3548 3C05800D */       lui $a1, %hi(D_ovl0_800D644A)
  /* 04EF2C 800D354C 24A5644A */     addiu $a1, $a1, %lo(D_ovl0_800D644A)
  /* 04EF30 800D3550 14600003 */      bnez $v1, .L800D3560
  /* 04EF34 800D3554 3C06800D */       lui $a2, 0x800d
  /* 04EF38 800D3558 03E00008 */        jr $ra
  /* 04EF3C 800D355C 00001025 */        or $v0, $zero, $zero

  .L800D3560:
  /* 04EF40 800D3560 94AE0000 */       lhu $t6, ($a1)
  /* 04EF44 800D3564 24C66450 */     addiu $a2, $a2, 0x6450
  /* 04EF48 800D3568 94D80000 */       lhu $t8, ($a2)
  /* 04EF4C 800D356C 25CF0001 */     addiu $t7, $t6, 1
  /* 04EF50 800D3570 31E2FFFF */      andi $v0, $t7, 0xffff
  /* 04EF54 800D3574 0302082A */       slt $at, $t8, $v0
  /* 04EF58 800D3578 10200002 */      beqz $at, .L800D3584
  /* 04EF5C 800D357C A4AF0000 */        sh $t7, ($a1)
  /* 04EF60 800D3580 A4C20000 */        sh $v0, ($a2)
  .L800D3584:
  /* 04EF64 800D3584 3C02800D */       lui $v0, %hi(D_ovl0_800D639C)
  /* 04EF68 800D3588 8C790000 */        lw $t9, ($v1)
  /* 04EF6C 800D358C 2442639C */     addiu $v0, $v0, %lo(D_ovl0_800D639C)
  /* 04EF70 800D3590 8C480000 */        lw $t0, ($v0) # D_ovl0_800D639C + 0
  /* 04EF74 800D3594 3C05800D */       lui $a1, %hi(D_ovl0_800D6458)
  /* 04EF78 800D3598 AC990000 */        sw $t9, ($a0)
  /* 04EF7C 800D359C 24A56458 */     addiu $a1, $a1, %lo(D_ovl0_800D6458)
  /* 04EF80 800D35A0 AC680000 */        sw $t0, ($v1)
  /* 04EF84 800D35A4 8CA90000 */        lw $t1, ($a1) # D_ovl0_800D6458 + 0
  /* 04EF88 800D35A8 3C04800D */       lui $a0, %hi(D_ovl0_800D5D58)
  /* 04EF8C 800D35AC AC430000 */        sw $v1, ($v0) # D_ovl0_800D639C + 0
  /* 04EF90 800D35B0 15200002 */      bnez $t1, .L800D35BC
  /* 04EF94 800D35B4 24845D58 */     addiu $a0, $a0, %lo(D_ovl0_800D5D58)
  /* 04EF98 800D35B8 ACA30000 */        sw $v1, ($a1) # D_ovl0_800D6458 + 0
  .L800D35BC:
  /* 04EF9C 800D35BC 948A0000 */       lhu $t2, ($a0) # D_ovl0_800D5D58 + 0
  /* 04EFA0 800D35C0 00601025 */        or $v0, $v1, $zero
  /* 04EFA4 800D35C4 254C0001 */     addiu $t4, $t2, 1
  /* 04EFA8 800D35C8 A48C0000 */        sh $t4, ($a0) # D_ovl0_800D5D58 + 0
  /* 04EFAC 800D35CC A46C0004 */        sh $t4, 4($v1)
  /* 04EFB0 800D35D0 AC60004C */        sw $zero, 0x4c($v1)
  /* 04EFB4 800D35D4 03E00008 */        jr $ra
  /* 04EFB8 800D35D8 00000000 */       nop 


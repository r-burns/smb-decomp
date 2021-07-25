.section .text
glabel func_ovl0_800CDBD0
  /* 0495B0 800CDBD0 27BDFF20 */     addiu $sp, $sp, -0xe0
  /* 0495B4 800CDBD4 27AE0018 */     addiu $t6, $sp, 0x18
  /* 0495B8 800CDBD8 3C01800D */       lui $at, %hi(D_ovl0_800D633C)
  /* 0495BC 800CDBDC AC2E633C */        sw $t6, %lo(D_ovl0_800D633C)($at)
  /* 0495C0 800CDBE0 3C01800D */       lui $at, %hi(D_ovl0_800D6340)
  /* 0495C4 800CDBE4 AC206340 */        sw $zero, %lo(D_ovl0_800D6340)($at)
  /* 0495C8 800CDBE8 AFBF0014 */        sw $ra, 0x14($sp)
  /* 0495CC 800CDBEC 3C01800D */       lui $at, %hi(D_ovl0_800D6344)
  /* 0495D0 800CDBF0 240F0032 */     addiu $t7, $zero, 0x32
  /* 0495D4 800CDBF4 0C03368E */       jal func_ovl0_800CDA38
  /* 0495D8 800CDBF8 AC2F6344 */        sw $t7, %lo(D_ovl0_800D6344)($at)
  /* 0495DC 800CDBFC 8FBF0014 */        lw $ra, 0x14($sp)
  /* 0495E0 800CDC00 27BD00E0 */     addiu $sp, $sp, 0xe0
  /* 0495E4 800CDC04 03E00008 */        jr $ra
  /* 0495E8 800CDC08 00000000 */       nop 

